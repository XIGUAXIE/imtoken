.class public Lorg/bitcoinj/net/ProtobufConnection;
.super Lorg/bitcoinj/net/AbstractTimeoutHandler;
.source "ProtobufConnection.java"

# interfaces
.implements Lorg/bitcoinj/net/StreamConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/ProtobufConnection$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Lorg/bitcoinj/net/AbstractTimeoutHandler;",
        "Lorg/bitcoinj/net/StreamConnection;"
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/net/ProtobufConnection$Listener<",
            "TMessageType;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final maxMessageSize:I

.field private messageBytes:[B

.field private messageBytesOffset:I

.field private final prototype:Lcom/google/protobuf/MessageLite;

.field final writeTarget:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/bitcoinj/net/MessageWriteTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/bitcoinj/net/ProtobufConnection;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/ProtobufConnection;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/net/ProtobufConnection$Listener;Lcom/google/protobuf/MessageLite;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/ProtobufConnection$Listener<",
            "TMessageType;>;TMessageType;II)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Lorg/bitcoinj/net/AbstractTimeoutHandler;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    const-string v1, "ProtobufConnection"

    .line 78
    invoke-static {v1}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    .line 94
    iput-object p1, p0, Lorg/bitcoinj/net/ProtobufConnection;->handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    .line 95
    iput-object p2, p0, Lorg/bitcoinj/net/ProtobufConnection;->prototype:Lcom/google/protobuf/MessageLite;

    const p1, 0x7ffffffb

    .line 96
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/net/ProtobufConnection;->maxMessageSize:I

    .line 97
    invoke-virtual {p0, v0}, Lorg/bitcoinj/net/ProtobufConnection;->setTimeoutEnabled(Z)V

    .line 98
    invoke-virtual {p0, p4}, Lorg/bitcoinj/net/ProtobufConnection;->setSocketTimeout(I)V

    return-void
.end method

.method private deserializeMessage(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->prototype:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lorg/bitcoinj/net/ProtobufConnection;->resetTimeout()V

    .line 133
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    invoke-interface {v0, p0, p1}, Lorg/bitcoinj/net/ProtobufConnection$Listener;->messageReceived(Lorg/bitcoinj/net/ProtobufConnection;Lcom/google/protobuf/MessageLite;)V

    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/net/MessageWriteTarget;

    invoke-interface {v0}, Lorg/bitcoinj/net/MessageWriteTarget;->closeConnection()V

    return-void
.end method

.method public connectionClosed()V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    invoke-interface {v0, p0}, Lorg/bitcoinj/net/ProtobufConnection$Listener;->connectionClosed(Lorg/bitcoinj/net/ProtobufConnection;)V

    return-void
.end method

.method public connectionOpened()V
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Lorg/bitcoinj/net/ProtobufConnection;->setTimeoutEnabled(Z)V

    .line 211
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    invoke-interface {v0, p0}, Lorg/bitcoinj/net/ProtobufConnection$Listener;->connectionOpen(Lorg/bitcoinj/net/ProtobufConnection;)V

    return-void
.end method

.method public getMaxMessageSize()I
    .locals 1

    .line 109
    iget v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->maxMessageSize:I

    return v0
.end method

.method public receiveBytes(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    array-length v0, v0

    iget v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 143
    iget-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    iget v2, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 144
    iget v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    .line 145
    iget-object v2, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bitcoinj/net/ProtobufConnection;->deserializeMessage(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/ProtobufConnection;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p1

    .line 199
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 156
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 199
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 160
    :cond_2
    :try_start_2
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 165
    iget v3, p0, Lorg/bitcoinj/net/ProtobufConnection;->maxMessageSize:I

    if-gt v0, v3, :cond_7

    add-int/lit8 v3, v0, 0x4

    if-lt v3, v2, :cond_7

    .line 170
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_3

    .line 171
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    .line 174
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 175
    iget-object v3, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytes:[B

    invoke-virtual {p1, v3, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 176
    iput v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->messageBytesOffset:I

    add-int/2addr v0, v2

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-ge v4, v0, :cond_4

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 189
    invoke-direct {p0, p1}, Lorg/bitcoinj/net/ProtobufConnection;->deserializeMessage(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 191
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 195
    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/ProtobufConnection;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v3, p1

    .line 199
    :cond_6
    iget-object p1, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v3

    .line 166
    :cond_7
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Message too large or length underflowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 199
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/bitcoinj/net/ProtobufConnection;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method protected timeoutOccurred()V
    .locals 3

    .line 121
    sget-object v0, Lorg/bitcoinj/net/ProtobufConnection;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout occurred for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/net/ProtobufConnection;->handler:Lorg/bitcoinj/net/ProtobufConnection$Listener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    return-void
.end method

.method public write(Lcom/google/protobuf/MessageLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 222
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->toByteArray()[B

    move-result-object p1

    .line 223
    array-length v0, p1

    iget v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->maxMessageSize:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 225
    array-length v1, p1

    int-to-long v3, v1

    invoke-static {v3, v4, v0, v2}, Lorg/bitcoinj/core/Utils;->uint32ToByteArrayBE(J[BI)V

    .line 227
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/net/ProtobufConnection;->writeTarget:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/net/MessageWriteTarget;

    .line 228
    invoke-interface {v1, v0}, Lorg/bitcoinj/net/MessageWriteTarget;->writeBytes([B)V

    .line 229
    invoke-interface {v1, p1}, Lorg/bitcoinj/net/MessageWriteTarget;->writeBytes([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 231
    :catch_0
    invoke-virtual {p0}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    :goto_1
    return-void
.end method
