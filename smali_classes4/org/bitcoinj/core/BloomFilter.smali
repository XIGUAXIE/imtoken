.class public Lorg/bitcoinj/core/BloomFilter;
.super Lorg/bitcoinj/core/Message;
.source "BloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    }
.end annotation


# static fields
.field private static final MAX_FILTER_SIZE:J = 0x8ca0L

.field private static final MAX_HASH_FUNCS:I = 0x32


# instance fields
.field private data:[B

.field private hashFuncs:J

.field private nFlags:B

.field private nTweak:J


# direct methods
.method public constructor <init>(IDJ)V
    .locals 7

    .line 78
    sget-object v6, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/core/BloomFilter;-><init>(IDJLorg/bitcoinj/core/BloomFilter$BloomUpdate;)V

    return-void
.end method

.method public constructor <init>(IDJLorg/bitcoinj/core/BloomFilter$BloomUpdate;)V
    .locals 6

    .line 110
    invoke-direct {p0}, Lorg/bitcoinj/core/Message;-><init>()V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    int-to-double v2, p1

    mul-double v4, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    double-to-int p1, v4

    const p2, 0x46500

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 115
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    .line 117
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    int-to-double p1, p1

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    double-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    const-wide/16 v0, 0x32

    .line 118
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    .line 119
    iput-wide p4, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    .line 120
    invoke-virtual {p6}, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->ordinal()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/Message;-><init>(Lorg/bitcoinj/core/NetworkParameters;[BI)V

    return-void
.end method

.method public static murmurHash3([BJI[B)I
    .locals 6

    int-to-long v0, p3

    const-wide v2, 0xfba4c795L

    mul-long v0, v0, v2

    add-long/2addr v0, p1

    long-to-int p1, v0

    .line 173
    array-length p2, p4

    div-int/lit8 p2, p2, 0x4

    mul-int/lit8 p2, p2, 0x4

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const v1, 0x1b873593

    const/16 v2, 0xf

    const v3, -0x3361d2af    # -8.2930312E7f

    if-ge v0, p2, :cond_0

    .line 176
    aget-byte v4, p4, v0

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    mul-int v4, v4, v3

    .line 182
    invoke-static {v4, v2}, Lorg/bitcoinj/core/BloomFilter;->rotateLeft32(II)I

    move-result v2

    mul-int v2, v2, v1

    xor-int/2addr p1, v2

    const/16 v1, 0xd

    .line 186
    invoke-static {p1, v1}, Lorg/bitcoinj/core/BloomFilter;->rotateLeft32(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    const v1, -0x19ab949c

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 191
    :cond_0
    array-length v0, p4

    const/4 v4, 0x3

    and-int/2addr v0, v4

    const/4 v5, 0x1

    if-eq v0, v5, :cond_3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p2, 0x2

    .line 194
    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr p3, v0

    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 197
    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    xor-int/2addr p3, v0

    .line 200
    :cond_3
    aget-byte p2, p4, p2

    and-int/lit16 p2, p2, 0xff

    xor-int/2addr p2, p3

    mul-int p2, p2, v3

    .line 201
    invoke-static {p2, v2}, Lorg/bitcoinj/core/BloomFilter;->rotateLeft32(II)I

    move-result p2

    mul-int p2, p2, v1

    xor-int/2addr p1, p2

    .line 209
    :goto_1
    array-length p2, p4

    xor-int/2addr p1, p2

    ushr-int/lit8 p2, p1, 0x10

    xor-int/2addr p1, p2

    const p2, -0x7a143595

    mul-int p1, p1, p2

    ushr-int/lit8 p2, p1, 0xd

    xor-int/2addr p1, p2

    const p2, -0x3d4d51cb

    mul-int p1, p1, p2

    ushr-int/lit8 p2, p1, 0x10

    xor-int/2addr p1, p2

    int-to-long p1, p1

    const-wide p3, 0xffffffffL

    and-long/2addr p1, p3

    .line 216
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    int-to-long p3, p0

    rem-long/2addr p1, p3

    long-to-int p0, p1

    return p0
.end method

.method private static rotateLeft32(II)I
    .locals 1

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public declared-synchronized applyAndUpdate(Lorg/bitcoinj/core/Block;)Lorg/bitcoinj/core/FilteredBlock;
    .locals 7

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTransactions()Ljava/util/List;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 307
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 308
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Transaction;

    .line 309
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0, v5}, Lorg/bitcoinj/core/BloomFilter;->applyAndUpdate(Lorg/bitcoinj/core/Transaction;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 311
    invoke-static {v3, v4}, Lorg/bitcoinj/core/Utils;->setBitLE([BI)V

    .line 312
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-static {v0, v3, v1}, Lorg/bitcoinj/core/PartialMerkleTree;->buildFromLeaves(Lorg/bitcoinj/core/NetworkParameters;[BLjava/util/List;)Lorg/bitcoinj/core/PartialMerkleTree;

    move-result-object v0

    .line 316
    new-instance v1, Lorg/bitcoinj/core/FilteredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-direct {v1, v3, p1, v0}, Lorg/bitcoinj/core/FilteredBlock;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/PartialMerkleTree;)V

    .line 317
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 318
    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/FilteredBlock;->provideTransaction(Lorg/bitcoinj/core/Transaction;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 319
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyAndUpdate(Lorg/bitcoinj/core/Transaction;)Z
    .locals 10

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/BloomFilter;->contains([B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 324
    monitor-exit p0

    return v1

    .line 326
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/BloomFilter;->getUpdateFlag()Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    move-result-object v0

    .line 327
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionOutput;

    .line 328
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v6

    .line 329
    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/script/ScriptChunk;

    .line 330
    invoke-virtual {v8}, Lorg/bitcoinj/script/ScriptChunk;->isPushData()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    .line 332
    :cond_3
    iget-object v8, v8, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {p0, v8}, Lorg/bitcoinj/core/BloomFilter;->contains([B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 333
    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v6}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 334
    :goto_2
    sget-object v8, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    if-eq v0, v8, :cond_6

    sget-object v8, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;

    if-ne v0, v8, :cond_7

    if-eqz v4, :cond_7

    .line 335
    :cond_6
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutPoint;->unsafeBitcoinSerialize()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    if-eqz v4, :cond_9

    .line 340
    monitor-exit p0

    return v1

    .line 341
    :cond_9
    :try_start_2
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 342
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutPoint;->unsafeBitcoinSerialize()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/BloomFilter;->contains([B)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_b

    .line 343
    monitor-exit p0

    return v1

    .line 345
    :cond_b
    :try_start_3
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/ScriptChunk;

    .line 346
    invoke-virtual {v2}, Lorg/bitcoinj/script/ScriptChunk;->isPushData()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v2, v2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/BloomFilter;->contains([B)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_c

    .line 347
    monitor-exit p0

    return v1

    .line 350
    :cond_d
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bitcoinSerializeToStream(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    new-instance v0, Lorg/bitcoinj/core/VarInt;

    iget-object v1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/VarInt;-><init>(J)V

    invoke-virtual {v0}, Lorg/bitcoinj/core/VarInt;->encode()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 154
    iget-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 155
    iget-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 156
    iget-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/Utils;->uint32ToByteStreamLE(JLjava/io/OutputStream;)V

    .line 157
    iget-byte v0, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public declared-synchronized contains([B)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    .line 224
    :try_start_0
    iget-wide v4, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 225
    iget-object v2, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    iget-object v3, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    iget-wide v4, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    invoke-static {v3, v4, v5, v1, p1}, Lorg/bitcoinj/core/BloomFilter;->murmurHash3([BJI[B)I

    move-result v3

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Utils;->checkBitLE([BI)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 226
    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 355
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 356
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    check-cast p1, Lorg/bitcoinj/core/BloomFilter;

    .line 358
    iget-wide v2, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    iget-wide v4, p1, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    iget-wide v4, p1, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    iget-object p1, p1, Lorg/bitcoinj/core/BloomFilter;->data:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 356
    :cond_3
    :goto_1
    monitor-exit p0

    return v1
.end method

.method public getFalsePositiveRate(I)D
    .locals 4

    .line 127
    iget-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v0, v0, v2

    iget-object p1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    iget-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    long-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getUpdateFlag()Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    .locals 2

    monitor-enter p0

    .line 286
    :try_start_0
    iget-byte v0, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_NONE:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 288
    :cond_0
    :try_start_1
    iget-byte v0, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 289
    sget-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_ALL:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 290
    :cond_1
    :try_start_2
    iget-byte v0, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 291
    sget-object v0, Lorg/bitcoinj/core/BloomFilter$BloomUpdate;->UPDATE_P2PUBKEY_ONLY:Lorg/bitcoinj/core/BloomFilter$BloomUpdate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 293
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown flag combination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 363
    iget-wide v2, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lorg/bitcoinj/core/ECKey;)V
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V

    .line 240
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insert([B)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 233
    :try_start_0
    iget-wide v3, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 234
    iget-object v1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    iget-object v2, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    iget-wide v3, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    invoke-static {v2, v3, v4, v0, p1}, Lorg/bitcoinj/core/BloomFilter;->murmurHash3([BJI[B)I

    move-result v2

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Utils;->setBitLE([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized matchesAll()Z
    .locals 6

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 277
    monitor-exit p0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized merge(Lorg/bitcoinj/core/BloomFilter;)V
    .locals 7

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/BloomFilter;->matchesAll()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bitcoinj/core/BloomFilter;->matchesAll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p1, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v0, v0

    iget-object v3, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v3, v3

    if-ne v0, v3, :cond_0

    iget-wide v3, p1, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    iget-wide v5, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    iget-wide v3, p1, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    iget-wide v5, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 263
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 264
    iget-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    aget-byte v2, v0, v1

    iget-object v3, p1, Lorg/bitcoinj/core/BloomFilter;->data:[B

    aget-byte v3, v3, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array p1, v2, [B

    const/4 v0, -0x1

    aput-byte v0, p1, v1

    .line 266
    iput-object p1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lorg/bitcoinj/core/BloomFilter;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    .line 138
    array-length v0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x8ca0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/bitcoinj/core/BloomFilter;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    const-wide/16 v2, 0x32

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/bitcoinj/core/BloomFilter;->readUint32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/core/BloomFilter;->nTweak:J

    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/BloomFilter;->readBytes(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/bitcoinj/core/BloomFilter;->nFlags:B

    .line 145
    iget v0, p0, Lorg/bitcoinj/core/BloomFilter;->cursor:I

    iget v1, p0, Lorg/bitcoinj/core/BloomFilter;->offset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bitcoinj/core/BloomFilter;->length:I

    return-void

    .line 142
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    const-string v1, "Bloom filter hash function count out of range"

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    const-string v1, "Bloom filter out of size range."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setMatchAll()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 251
    iput-object v0, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bloom Filter of size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/BloomFilter;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/bitcoinj/core/BloomFilter;->hashFuncs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " hash functions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
