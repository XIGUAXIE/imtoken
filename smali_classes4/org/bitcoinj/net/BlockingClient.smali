.class public Lorg/bitcoinj/net/BlockingClient;
.super Ljava/lang/Object;
.source "BlockingClient.java"

# interfaces
.implements Lorg/bitcoinj/net/MessageWriteTarget;


# static fields
.field private static final BUFFER_SIZE_LOWER_BOUND:I = 0x1000

.field private static final BUFFER_SIZE_UPPER_BOUND:I = 0x10000

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private connectFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private socket:Ljava/net/Socket;

.field private volatile vCloseRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/bitcoinj/net/BlockingClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/BlockingClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;ILjavax/net/SocketFactory;Ljava/util/Set;)V
    .locals 7
    .param p5    # Ljava/util/Set;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/bitcoinj/net/StreamConnection;",
            "I",
            "Ljavax/net/SocketFactory;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/net/BlockingClient;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lorg/bitcoinj/net/BlockingClient;->vCloseRequested:Z

    .line 64
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/BlockingClient;->connectFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 67
    invoke-interface {p2, p0}, Lorg/bitcoinj/net/StreamConnection;->setWriteTarget(Lorg/bitcoinj/net/MessageWriteTarget;)V

    .line 68
    invoke-virtual {p4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p4

    iput-object p4, p0, Lorg/bitcoinj/net/BlockingClient;->socket:Ljava/net/Socket;

    .line 69
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v2

    .line 70
    new-instance p4, Lorg/bitcoinj/net/BlockingClient$1;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/net/BlockingClient$1;-><init>(Lorg/bitcoinj/net/BlockingClient;Lorg/bitcoinj/core/Context;Ljava/util/Set;Ljava/net/SocketAddress;ILorg/bitcoinj/net/StreamConnection;)V

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BlockingClient network thread for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p4, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 101
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/net/BlockingClient;)Ljava/net/Socket;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/bitcoinj/net/BlockingClient;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/net/BlockingClient;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/bitcoinj/net/BlockingClient;->connectFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bitcoinj/net/BlockingClient;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lorg/bitcoinj/net/BlockingClient;->vCloseRequested:Z

    return p0
.end method

.method static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    .line 39
    sget-object v0, Lorg/bitcoinj/net/BlockingClient;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static runReadLoop(Ljava/io/InputStream;Lorg/bitcoinj/net/StreamConnection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
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

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v2, v1, [B

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-gt v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v2, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    return-void

    .line 117
    :cond_1
    invoke-virtual {v0, v2, v5, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 122
    invoke-interface {p1, v0}, Lorg/bitcoinj/net/StreamConnection;->receiveBytes(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    if-ne v6, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 126
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_0
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    const/4 v0, 0x1

    .line 138
    :try_start_0
    iput-boolean v0, p0, Lorg/bitcoinj/net/BlockingClient;->vCloseRequested:Z

    .line 139
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnectFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient;->connectFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public declared-synchronized writeBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClient;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 149
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 150
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    :try_start_1
    sget-object v0, Lorg/bitcoinj/net/BlockingClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Error writing message to connection, closing connection"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {p0}, Lorg/bitcoinj/net/BlockingClient;->closeConnection()V

    .line 154
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
