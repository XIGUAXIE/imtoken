.class Lorg/bitcoinj/net/ConnectionHandler;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"

# interfaces
.implements Lorg/bitcoinj/net/MessageWriteTarget;


# static fields
.field private static final BUFFER_SIZE_LOWER_BOUND:I = 0x1000

.field private static final BUFFER_SIZE_UPPER_BOUND:I = 0x10000

.field private static final OUTBOUND_BUFFER_BYTE_COUNT:I = 0x2000018

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final bytesToWrite:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private bytesToWriteRemaining:J

.field private final channel:Ljava/nio/channels/SocketChannel;

.field private closeCalled:Z

.field private connectedHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/net/ConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lorg/bitcoinj/net/StreamConnection;

.field private final key:Ljava/nio/channels/SelectionKey;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final readBuff:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/bitcoinj/net/ConnectionHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/net/StreamConnection;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/net/StreamConnection;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "nioConnectionHandler"

    .line 56
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->closeCalled:Z

    const-wide/16 v0, 0x0

    .line 63
    iput-wide v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    .line 75
    iput-object p2, p0, Lorg/bitcoinj/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    .line 76
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/SocketChannel;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/SocketChannel;

    iput-object p2, p0, Lorg/bitcoinj/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 78
    iput-object p2, p0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->connection:Lorg/bitcoinj/net/StreamConnection;

    .line 82
    invoke-interface {p1}, Lorg/bitcoinj/net/StreamConnection;->getMaxMessageSize()I

    move-result v0

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    .line 83
    invoke-interface {p1, p0}, Lorg/bitcoinj/net/StreamConnection;->setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V

    .line 84
    iput-object p2, p0, Lorg/bitcoinj/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/net/StreamConnection;Ljava/nio/channels/SelectionKey;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/net/StreamConnection;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/net/ConnectionHandler;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/net/StreamConnection;

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/net/ConnectionHandler;-><init>(Lorg/bitcoinj/net/StreamConnection;Ljava/nio/channels/SelectionKey;)V

    .line 93
    iget-object p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 95
    :try_start_0
    iput-object p3, p0, Lorg/bitcoinj/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    .line 96
    iget-boolean p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->closeCalled:Z

    if-nez p1, :cond_0

    .line 97
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public constructor <init>(Lorg/bitcoinj/net/StreamConnectionFactory;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getPort()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/bitcoinj/net/StreamConnectionFactory;->getNewConnection(Ljava/net/InetAddress;I)Lorg/bitcoinj/net/StreamConnection;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/net/ConnectionHandler;-><init>(Lorg/bitcoinj/net/StreamConnection;Ljava/nio/channels/SelectionKey;)V

    .line 70
    iget-object p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->connection:Lorg/bitcoinj/net/StreamConnection;

    if-eqz p1, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Parser factory.getNewConnection returned null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private connectionClosed()V
    .locals 4

    .line 185
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->closeCalled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    iput-boolean v2, p0, Lorg/bitcoinj/net/ConnectionHandler;->closeCalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iget-object v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->connectedHandlers:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 194
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {v0}, Lorg/bitcoinj/net/StreamConnection;->connectionClosed()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static handleKey(Ljava/nio/channels/SelectionKey;)V
    .locals 7

    .line 202
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/net/ConnectionHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    invoke-virtual {v0}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    return-void

    .line 210
    :cond_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    iget-object v3, v0, Lorg/bitcoinj/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    iget-object v4, v0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 216
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 217
    invoke-virtual {v0}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    return-void

    .line 221
    :cond_3
    iget-object v3, v0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 223
    iget-object v3, v0, Lorg/bitcoinj/net/ConnectionHandler;->connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/net/StreamConnection;

    iget-object v4, v0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Lorg/bitcoinj/net/StreamConnection;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 224
    iget-object v4, v0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 227
    iget-object v3, v0, Lorg/bitcoinj/net/ConnectionHandler;->readBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 229
    :cond_5
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 230
    invoke-direct {v0}, Lorg/bitcoinj/net/ConnectionHandler;->tryWriteBytes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 234
    invoke-static {p0}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 235
    sget-object v4, Lorg/bitcoinj/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    const-string v2, ""

    :goto_1
    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object p0, v5, v1

    const-string p0, "Error handling SelectionKey: {} {}"

    invoke-interface {v4, p0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    :cond_7
    :goto_2
    return-void
.end method

.method private setWriteOps()V
    .locals 2

    .line 106
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 108
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method private tryWriteBytes()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 119
    iget-wide v2, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    iget-object v4, p0, Lorg/bitcoinj/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 120
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/net/ConnectionHandler;->setWriteOps()V

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    iget-object v1, p0, Lorg/bitcoinj/net/ConnectionHandler;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->channel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-direct {p0}, Lorg/bitcoinj/net/ConnectionHandler;->connectionClosed()V

    return-void

    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBytes([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Error writing message to connection, closing connection"

    .line 139
    iget-object v1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    :try_start_0
    iget-wide v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    const-wide/32 v5, 0x2000018

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 150
    iget-object v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWrite:Ljava/util/LinkedList;

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 151
    iget-wide v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    array-length p1, p1

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->bytesToWriteRemaining:J

    .line 152
    invoke-direct {p0}, Lorg/bitcoinj/net/ConnectionHandler;->setWriteOps()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object p1, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 147
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v3, "Outbound buffer overflowed"

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 160
    :try_start_2
    iget-object v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :try_start_3
    sget-object v2, Lorg/bitcoinj/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    invoke-virtual {p0}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    .line 164
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception p1

    .line 154
    :try_start_4
    iget-object v3, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    sget-object v2, Lorg/bitcoinj/net/ConnectionHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p0}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    .line 158
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v1, :cond_1

    .line 167
    iget-object v0, p0, Lorg/bitcoinj/net/ConnectionHandler;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw p1
.end method
