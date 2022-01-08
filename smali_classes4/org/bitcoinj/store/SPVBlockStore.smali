.class public Lorg/bitcoinj/store/SPVBlockStore;
.super Ljava/lang/Object;
.source "SPVBlockStore.java"

# interfaces
.implements Lorg/bitcoinj/store/BlockStore;


# static fields
.field public static final DEFAULT_NUM_HEADERS:I = 0x1388

.field protected static final FILE_PROLOGUE_BYTES:I = 0x400

.field public static final HEADER_MAGIC:Ljava/lang/String; = "SPVB"

.field protected static final RECORD_SIZE:I = 0x80

.field private static final log:Lorg/slf4j/Logger;

.field protected static final notFoundMarker:Ljava/lang/Object;


# instance fields
.field protected blockCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile buffer:Ljava/nio/MappedByteBuffer;

.field protected fileLock:Ljava/nio/channels/FileLock;

.field protected lastChainHead:Lorg/bitcoinj/core/StoredBlock;

.field protected lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected notFoundCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected numHeaders:I

.field protected params:Lorg/bitcoinj/core/NetworkParameters;

.field protected randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/bitcoinj/store/SPVBlockStore;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/store/SPVBlockStore;->log:Lorg/slf4j/Logger;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bitcoinj/store/SPVBlockStore;->notFoundMarker:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SPVBlockStore"

    .line 50
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    new-instance v0, Lorg/bitcoinj/store/SPVBlockStore$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/store/SPVBlockStore$1;-><init>(Lorg/bitcoinj/store/SPVBlockStore;)V

    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    .line 72
    new-instance v0, Lorg/bitcoinj/store/SPVBlockStore$2;

    invoke-direct {v0, p0}, Lorg/bitcoinj/store/SPVBlockStore$2;-><init>(Lorg/bitcoinj/store/SPVBlockStore;)V

    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->fileLock:Ljava/nio/channels/FileLock;

    .line 80
    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 224
    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lastChainHead:Lorg/bitcoinj/core/StoredBlock;

    .line 87
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/NetworkParameters;

    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    const/16 v0, 0x1388

    .line 90
    :try_start_0
    iput v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->numHeaders:I

    .line 91
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 93
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p2, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 94
    invoke-virtual {p0}, Lorg/bitcoinj/store/SPVBlockStore;->getFileSize()I

    move-result v1

    int-to-long v6, v1

    if-nez v0, :cond_0

    .line 96
    sget-object v1, Lorg/bitcoinj/store/SPVBlockStore;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new SPV block chain file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 97
    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    cmp-long p2, v1, v6

    if-nez p2, :cond_4

    .line 103
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->fileLock:Ljava/nio/channels/FileLock;

    if-eqz p2, :cond_3

    .line 113
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_2

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 119
    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 120
    new-instance p2, Ljava/lang/String;

    const-string v0, "US-ASCII"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p1, "SPVB"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string p2, "Header bytes do not equal SPVB"

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lorg/bitcoinj/store/SPVBlockStore;->initNewStore(Lorg/bitcoinj/core/NetworkParameters;)V

    :goto_1
    return-void

    .line 106
    :cond_3
    new-instance p1, Lorg/bitcoinj/store/ChainFileLockedException;

    const-string p2, "Store file is already locked by another process"

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/ChainFileLockedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_4
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File size on disk does not match expected size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 100
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 127
    :try_start_1
    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_5
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 129
    new-instance p2, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getRingCursor(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x4

    .line 297
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Integer overflow"

    .line 298
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return p1
.end method

.method private initNewStore(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SPVB"

    const-string v1, "US-ASCII"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 138
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/store/SPVBlockStore;->setRingCursor(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 146
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    .line 147
    new-instance v0, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V

    .line 148
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/SPVBlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    .line 149
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/SPVBlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    return-void

    :catchall_0
    move-exception p1

    .line 144
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private setRingCursor(Ljava/nio/ByteBuffer;I)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 v0, 0x4

    .line 304
    invoke-virtual {p1, v0, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    const-string v0, "os.name"

    .line 265
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lorg/bitcoinj/store/SPVBlockStore;->log:Lorg/slf4j/Logger;

    const-string v1, "Windows mmap hack: Forcing buffer cleaning"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    invoke-static {v0}, Lorg/bitcoinj/store/WindowsMMapHack;->forceRelease(Ljava/nio/MappedByteBuffer;)V

    :cond_0
    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    .line 270
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 272
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_5

    .line 185
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 221
    iget-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 190
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 221
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 195
    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lorg/bitcoinj/store/SPVBlockStore;->getRingCursor(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 197
    invoke-virtual {p0}, Lorg/bitcoinj/store/SPVBlockStore;->getFileSize()I

    move-result v3

    .line 198
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x20

    new-array v5, v5, [B

    move v6, v1

    :cond_2
    add-int/lit8 v6, v6, -0x80

    const/16 v7, 0x400

    if-ge v6, v7, :cond_3

    add-int/lit8 v6, v3, -0x80

    .line 207
    :cond_3
    invoke-virtual {v0, v6}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 208
    invoke-virtual {v0, v5}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 209
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 211
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v1, v0}, Lorg/bitcoinj/core/StoredBlock;->deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    iget-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_4
    if-ne v6, v1, :cond_2

    .line 217
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    sget-object v1, Lorg/bitcoinj/store/SPVBlockStore;->notFoundMarker:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 220
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 221
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 183
    :cond_5
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Store closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChainHead()Lorg/bitcoinj/core/StoredBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_2

    .line 231
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 233
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lastChainHead:Lorg/bitcoinj/core/StoredBlock;

    if-nez v1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [B

    const/16 v2, 0x8

    .line 235
    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 238
    invoke-virtual {p0, v0}, Lorg/bitcoinj/store/SPVBlockStore;->get(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    iput-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lastChainHead:Lorg/bitcoinj/core/StoredBlock;

    goto :goto_0

    .line 240
    :cond_0
    new-instance v1, Lorg/bitcoinj/store/BlockStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Corrupted block store: could not find chain head: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lastChainHead:Lorg/bitcoinj/core/StoredBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 229
    :cond_2
    new-instance v0, Lorg/bitcoinj/store/BlockStoreException;

    const-string v1, "Store closed"

    invoke-direct {v0, v1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFileSize()I
    .locals 1

    .line 154
    iget v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->numHeaders:I

    mul-int/lit16 v0, v0, 0x80

    add-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public put(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_1

    .line 162
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 164
    :try_start_0
    invoke-direct {p0, v0}, Lorg/bitcoinj/store/SPVBlockStore;->getRingCursor(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 165
    invoke-virtual {p0}, Lorg/bitcoinj/store/SPVBlockStore;->getFileSize()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0x400

    .line 169
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lorg/bitcoinj/store/SPVBlockStore;->notFoundCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/StoredBlock;->serializeCompact(Ljava/nio/ByteBuffer;)V

    .line 174
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->position()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/bitcoinj/store/SPVBlockStore;->setRingCursor(Ljava/nio/ByteBuffer;I)V

    .line 175
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->blockCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 160
    :cond_1
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Store closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChainHead(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->buffer:Ljava/nio/MappedByteBuffer;

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 254
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lastChainHead:Lorg/bitcoinj/core/StoredBlock;

    .line 255
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    const/16 v1, 0x8

    .line 256
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object p1, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/store/SPVBlockStore;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 250
    :cond_0
    new-instance p1, Lorg/bitcoinj/store/BlockStoreException;

    const-string v0, "Store closed"

    invoke-direct {p1, v0}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
