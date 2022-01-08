.class public Lorg/bitcoinj/core/CheckpointManager;
.super Ljava/lang/Object;
.source "CheckpointManager.java"


# static fields
.field public static final BASE64:Lcom/google/common/io/BaseEncoding;

.field private static final BINARY_MAGIC:Ljava/lang/String; = "CHECKPOINTS 1"

.field private static final MAX_SIGNATURES:I = 0x100

.field private static final TEXTUAL_MAGIC:Ljava/lang/String; = "TXT CHECKPOINTS 1"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final checkpoints:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;"
        }
    .end annotation
.end field

.field protected final dataHash:Lorg/bitcoinj/core/Sha256Hash;

.field protected final params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lorg/bitcoinj/core/CheckpointManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    .line 84
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/CheckpointManager;->BASE64:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/CheckpointManager;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/InputStream;)V
    .locals 2
    .param p2    # Ljava/io/InputStream;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    .line 93
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/NetworkParameters;

    iput-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->params:Lorg/bitcoinj/core/NetworkParameters;

    if-nez p2, :cond_0

    .line 95
    invoke-static {p1}, Lorg/bitcoinj/core/CheckpointManager;->openStream(Lorg/bitcoinj/core/NetworkParameters;)Ljava/io/InputStream;

    move-result-object p2

    .line 96
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x1

    .line 98
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 99
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 100
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x0

    const-string v1, "CHECKPOINTS 1"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne p2, v1, :cond_1

    .line 102
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/CheckpointManager;->readBinary(Ljava/io/InputStream;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/CheckpointManager;->dataHash:Lorg/bitcoinj/core/Sha256Hash;

    goto :goto_0

    :cond_1
    const-string v1, "TXT CHECKPOINTS 1"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne p2, v0, :cond_2

    .line 104
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/CheckpointManager;->readTextual(Ljava/io/InputStream;)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/CheckpointManager;->dataHash:Lorg/bitcoinj/core/Sha256Hash;

    :goto_0
    return-void

    .line 106
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported format."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkpoint(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/InputStream;Lorg/bitcoinj/store/BlockStore;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 224
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    instance-of v0, p2, Lorg/bitcoinj/store/FullPrunedBlockStore;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot use checkpointing with a full store."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/32 v2, 0x93a80

    sub-long/2addr p3, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 231
    sget-object v0, Lorg/bitcoinj/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    mul-long v2, v2, p3

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Attempting to initialize a new block store with a checkpoint for time {} ({})"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    new-instance p1, Lorg/bitcoinj/core/CheckpointManager;

    invoke-direct {p1, p0, v0}, Lorg/bitcoinj/core/CheckpointManager;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/InputStream;)V

    .line 235
    invoke-virtual {p1, p3, p4}, Lorg/bitcoinj/core/CheckpointManager;->getCheckpointBefore(J)Lorg/bitcoinj/core/StoredBlock;

    move-result-object p0

    .line 236
    invoke-interface {p2, p0}, Lorg/bitcoinj/store/BlockStore;->put(Lorg/bitcoinj/core/StoredBlock;)V

    .line 237
    invoke-interface {p2, p0}, Lorg/bitcoinj/store/BlockStore;->setChainHead(Lorg/bitcoinj/core/StoredBlock;)V

    return-void
.end method

.method public static openStream(Lorg/bitcoinj/core/NetworkParameters;)Ljava/io/InputStream;
    .locals 3

    .line 111
    const-class v0, Lorg/bitcoinj/core/CheckpointManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".checkpoints.txt"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private readBinary(Ljava/io/InputStream;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/Sha256Hash;->newDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 118
    new-instance v2, Ljava/security/DigestInputStream;

    invoke-direct {v2, p1, v1}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 119
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 120
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/security/DigestInputStream;->on(Z)V

    const/16 v4, 0xd

    new-array v4, v4, [B

    .line 122
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->readFully([B)V

    const-string v5, "CHECKPOINTS 1"

    const-string v6, "US-ASCII"

    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/16 v5, 0x100

    const-string v6, "Num signatures out of range"

    invoke-static {v4, v5, v6}, Lcom/google/common/base/Preconditions;->checkPositionIndex(IILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    const/16 v6, 0x41

    new-array v6, v6, [B

    .line 128
    invoke-virtual {v3, v6}, Ljava/io/DataInputStream;->readFully([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 131
    invoke-virtual {v2, v4}, Ljava/security/DigestInputStream;->on(Z)V

    .line 132
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 133
    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/16 v4, 0x60

    .line 135
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_3

    .line 137
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v3, v7, v0, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    if-lt v7, v4, :cond_2

    .line 139
    iget-object v7, p0, Lorg/bitcoinj/core/CheckpointManager;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v7, v5}, Lorg/bitcoinj/core/StoredBlock;->deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v7

    .line 140
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 141
    iget-object v8, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v7}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 138
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete read whilst loading checkpoints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 144
    sget-object v1, Lorg/bitcoinj/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    const-string v2, "Read {} checkpoints, hash is {}"

    iget-object v4, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 150
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    .line 124
    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Header bytes did not match expected version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/bitcoinj/core/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 147
    :goto_3
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_5

    .line 149
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 150
    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private readTextual(Ljava/io/InputStream;)Lorg/bitcoinj/core/Sha256Hash;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-static {}, Lcom/google/common/hash/Hashing;->sha256()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    const/4 v1, 0x0

    .line 158
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 159
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TXT CHECKPOINTS 1"

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 164
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 166
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v3, 0x4

    .line 168
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    const/16 v3, 0x60

    .line 170
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, p1, :cond_2

    .line 172
    sget-object v5, Lorg/bitcoinj/core/CheckpointManager;->BASE64:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding;->decode(Ljava/lang/CharSequence;)[B

    move-result-object v5

    .line 173
    invoke-interface {v0, v5}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 174
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v5, p0, Lorg/bitcoinj/core/CheckpointManager;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v5, v3}, Lorg/bitcoinj/core/StoredBlock;->deserializeCompact(Lorg/bitcoinj/core/NetworkParameters;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v5

    .line 178
    iget-object v6, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 180
    :cond_2
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object p1

    .line 181
    sget-object v0, Lorg/bitcoinj/core/CheckpointManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Read {} checkpoints, hash is {}"

    iget-object v3, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-object p1

    .line 161
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected magic: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_4

    .line 184
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw p1
.end method


# virtual methods
.method public getCheckpointBefore(J)Lorg/bitcoinj/core/StoredBlock;
    .locals 4

    .line 194
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 196
    iget-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/StoredBlock;

    return-object p1

    .line 198
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/CheckpointManager;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->cloneAsHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    .line 199
    new-instance p2, Lorg/bitcoinj/core/StoredBlock;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getWork()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p2, p1, v0, v2}, Lorg/bitcoinj/core/StoredBlock;-><init>(Lorg/bitcoinj/core/Block;Ljava/math/BigInteger;I)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 201
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getDataHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->dataHash:Lorg/bitcoinj/core/Sha256Hash;

    return-object v0
.end method

.method public numCheckpoints()I
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/bitcoinj/core/CheckpointManager;->checkpoints:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method
