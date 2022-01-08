.class public abstract Lorg/bitcoinj/core/PeerSocketHandler;
.super Lorg/bitcoinj/net/AbstractTimeoutHandler;
.source "PeerSocketHandler.java"

# interfaces
.implements Lorg/bitcoinj/net/StreamConnection;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private closePending:Z

.field private header:Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

.field private largeReadBuffer:[B

.field private largeReadBufferPos:I

.field private lock:Ljava/util/concurrent/locks/Lock;

.field protected peerAddress:Lorg/bitcoinj/core/PeerAddress;

.field private final serializer:Lorg/bitcoinj/core/MessageSerializer;

.field protected writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/bitcoinj/core/PeerSocketHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetSocketAddress;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->closePending:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    const-string v0, "PeerSocketHandler"

    .line 61
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    .line 66
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    invoke-direct {v0, p1, p2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->peerAddress:Lorg/bitcoinj/core/PeerAddress;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/PeerAddress;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->closePending:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    const-string v0, "PeerSocketHandler"

    .line 61
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    .line 72
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/PeerAddress;

    iput-object p1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->peerAddress:Lorg/bitcoinj/core/PeerAddress;

    return-void
.end method

.method private exceptionCaught(Ljava/lang/Exception;)V
    .locals 4

    .line 228
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerSocketHandler;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "?"

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_0
    instance-of v1, p1, Ljava/net/ConnectException;

    const-string v2, " - "

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    sget-object v1, Lorg/bitcoinj/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    sget-object v0, Lorg/bitcoinj/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    .line 237
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 232
    :cond_2
    :goto_1
    sget-object v1, Lorg/bitcoinj/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 240
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerSocketHandler;->close()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->closePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    invoke-interface {v0}, Lorg/bitcoinj/net/MessageWriteTarget;->closeConnection()V

    return-void

    :catchall_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getAddress()Lorg/bitcoinj/core/PeerAddress;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->peerAddress:Lorg/bitcoinj/core/PeerAddress;

    return-object v0
.end method

.method public getMaxMessageSize()I
    .locals 1

    const/high16 v0, 0x2000000

    return v0
.end method

.method protected abstract processMessage(Lorg/bitcoinj/core/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    if-eqz v0, :cond_2

    .line 136
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    array-length v1, v1

    iget v3, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBufferPos:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    iget v3, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBufferPos:I

    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 140
    iget v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBufferPos:I

    .line 142
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->header:Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    iget-object v3, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/bitcoinj/core/MessageSerializer;->deserializePayload(Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerSocketHandler;->processMessage(Lorg/bitcoinj/core/Message;)V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    .line 146
    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->header:Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    const/4 v1, 0x0

    goto :goto_2

    .line 149
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    return p1

    .line 153
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 155
    :try_start_1
    iget-object v3, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v3, p1}, Lorg/bitcoinj/core/MessageSerializer;->deserialize(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/Message;

    move-result-object v0
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 184
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerSocketHandler;->processMessage(Lorg/bitcoinj/core/Message;)V

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    nop

    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 160
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/MessageSerializer;->seekPastMagicBytes(Ljava/nio/ByteBuffer;)V

    .line 163
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/MessageSerializer;->deserializeHeader(Ljava/nio/ByteBuffer;)Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->header:Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;

    .line 166
    iget v0, v0, Lorg/bitcoinj/core/BitcoinSerializer$BitcoinPacketHeader;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBufferPos:I

    .line 168
    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->largeReadBuffer:[B

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 174
    :catch_1
    :try_start_4
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No magic bytes+header after reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return p1

    :catch_2
    move-exception p1

    .line 188
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerSocketHandler;->exceptionCaught(Ljava/lang/Exception;)V

    const/4 p1, -0x1

    return p1
.end method

.method public sendMessage(Lorg/bitcoinj/core/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 89
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    :try_start_1
    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->serializer:Lorg/bitcoinj/core/MessageSerializer;

    invoke-virtual {v1, p1, v0}, Lorg/bitcoinj/core/MessageSerializer;->serialize(Lorg/bitcoinj/core/Message;Ljava/io/OutputStream;)V

    .line 92
    iget-object p1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bitcoinj/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerSocketHandler;->exceptionCaught(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_2
    new-instance p1, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {p1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 86
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 200
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 201
    iget-object v2, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 204
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 205
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->closePending:Z

    .line 206
    iput-object p1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->writeTarget:Lorg/bitcoinj/net/MessageWriteTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object v1, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {p1}, Lorg/bitcoinj/net/MessageWriteTarget;->closeConnection()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 208
    iget-object v0, p0, Lorg/bitcoinj/core/PeerSocketHandler;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected timeoutOccurred()V
    .locals 3

    .line 116
    sget-object v0, Lorg/bitcoinj/core/PeerSocketHandler;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerSocketHandler;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    const-string v2, "{}: Timed out"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerSocketHandler;->close()V

    return-void
.end method
