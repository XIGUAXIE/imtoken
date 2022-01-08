.class Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;
.super Ljava/lang/Object;
.source "LevelDBFullPrunedBlockStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BloomFilter"
.end annotation


# instance fields
.field public added:J

.field private cache:[B

.field public returnedFalse:J

.field public returnedTrue:J

.field final synthetic this$0:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->this$0:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x8000000

    new-array p1, p1, [B

    .line 153
    iput-object p1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->cache:[B

    return-void
.end method

.method private getBit([B)Z
    .locals 5

    const/4 v0, 0x0

    .line 235
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x15

    const/4 v2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xd

    or-int/2addr v1, v3

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v3

    or-int/2addr v1, v4

    .line 237
    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v2, p1

    .line 239
    iget-object v3, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->cache:[B

    aget-byte v1, v3, v1

    and-int/2addr p1, v1

    if-nez p1, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method private setBit([B)V
    .locals 4

    const/4 v0, 0x0

    .line 226
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x15

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xd

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 228
    aget-byte p1, p1, v2

    and-int/lit8 p1, p1, 0x7

    shl-int p1, v1, p1

    .line 230
    iget-object v1, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->cache:[B

    aget-byte v2, v1, v0

    or-int/2addr p1, v2

    int-to-byte p1, p1

    .line 231
    aput-byte p1, v1, v0

    return-void
.end method


# virtual methods
.method public add(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 203
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->add([B)V

    return-void
.end method

.method public add([B)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 195
    iget-wide v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->added:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->added:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x4

    .line 197
    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    invoke-direct {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->setBit([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printStat()V
    .locals 4

    .line 189
    invoke-static {}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bloom Added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->added:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " T: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedTrue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " F: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedFalse:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public reloadCache(Lorg/iq80/leveldb/DB;)V
    .locals 4

    .line 164
    invoke-static {}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Loading Bloom Filter"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 165
    invoke-interface {p1}, Lorg/iq80/leveldb/DB;->iterator()Lorg/iq80/leveldb/DBIterator;

    move-result-object p1

    .line 166
    iget-object v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->this$0:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;

    sget-object v1, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;->OPENOUT_ALL:Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;

    invoke-static {v0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->access$100(Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$KeyType;)[B

    move-result-object v0

    .line 167
    invoke-interface {p1, v0}, Lorg/iq80/leveldb/DBIterator;->seek([B)V

    :goto_0
    invoke-interface {p1}, Lorg/iq80/leveldb/DBIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-interface {p1}, Lorg/iq80/leveldb/DBIterator;->peekNext()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/4 v3, 0x0

    .line 171
    aget-byte v3, v0, v3

    if-eq v3, v2, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->printStat()V

    return-void

    :cond_0
    const/16 v2, 0x20

    new-array v2, v2, [B

    .line 177
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {p0, v2}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->add([B)V

    .line 167
    invoke-interface {p1}, Lorg/iq80/leveldb/DBIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/iq80/leveldb/DBIterator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 183
    invoke-static {}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error closing iterator"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    :goto_1
    invoke-virtual {p0}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->printStat()V

    return-void
.end method

.method public wasAdded(Lorg/bitcoinj/core/Sha256Hash;)Z
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    const-wide/16 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 214
    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v4

    mul-int/lit8 v7, v3, 0x4

    invoke-static {v4, v7, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    invoke-direct {p0, v1}, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->getBit([B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    iget-wide v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedFalse:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedFalse:J

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-wide v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedTrue:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lorg/bitcoinj/store/LevelDBFullPrunedBlockStore$BloomFilter;->returnedTrue:J

    const/4 p1, 0x1

    return p1
.end method
