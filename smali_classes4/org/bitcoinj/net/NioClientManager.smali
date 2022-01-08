.class public Lorg/bitcoinj/net/NioClientManager;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "NioClientManager.java"

# interfaces
.implements Lorg/bitcoinj/net/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/NioClientManager$PendingConnect;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final connectedHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/net/ConnectionHandler;",
            ">;"
        }
    .end annotation
.end field

.field final newConnectionChannels:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/bitcoinj/net/NioClientManager$PendingConnect;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/bitcoinj/net/NioClientManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    .line 95
    :try_start_0
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private handleKey(Ljava/nio/channels/SelectionKey;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;

    .line 60
    iget-object v1, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->connection:Lorg/bitcoinj/net/StreamConnection;

    .line 61
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SocketChannel;

    .line 62
    new-instance v3, Lorg/bitcoinj/net/ConnectionHandler;

    iget-object v4, p0, Lorg/bitcoinj/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-direct {v3, v1, p1, v4}, Lorg/bitcoinj/net/ConnectionHandler;-><init>(Lorg/bitcoinj/net/StreamConnection;Ljava/nio/channels/SelectionKey;Ljava/util/Set;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 64
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    sget-object v6, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v7, "Connected to {}"

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    or-int/2addr v2, v5

    and-int/lit8 v2, v2, -0x9

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-interface {v1}, Lorg/bitcoinj/net/StreamConnection;->connectionOpened()V

    .line 68
    iget-object p1, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->address:Ljava/net/SocketAddress;

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    :cond_0
    sget-object p1, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to connect to {}"

    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    .line 72
    iget-object p1, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "Unknown reason"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 73
    iput-object v4, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 80
    sget-object v2, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    const/4 v5, 0x2

    aput-object p1, v6, v5

    const-string p1, "Failed to connect with exception: {}: {}"

    invoke-interface {v2, p1, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v3}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    .line 82
    iget-object p1, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 83
    iput-object v4, v0, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1}, Lorg/bitcoinj/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeConnections(I)V
    .locals 2

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    .line 179
    iget-object p1, p0, Lorg/bitcoinj/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    monitor-enter p1

    .line 180
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/net/ConnectionHandler;

    .line 181
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1}, Lorg/bitcoinj/net/ConnectionHandler;->closeConnection()V

    :cond_0
    move p1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 181
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method protected executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 189
    new-instance v0, Lorg/bitcoinj/net/NioClientManager$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/net/NioClientManager$1;-><init>(Lorg/bitcoinj/net/NioClientManager;)V

    return-object v0
.end method

.method public getConnectedClientCount()I
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->connectedHandlers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public openConnection(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/bitcoinj/net/StreamConnection;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/bitcoinj/net/NioClientManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 155
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 156
    new-instance v1, Lorg/bitcoinj/net/NioClientManager$PendingConnect;

    invoke-direct {v1, p0, v0, p2, p1}, Lorg/bitcoinj/net/NioClientManager$PendingConnect;-><init>(Lorg/bitcoinj/net/NioClientManager;Ljava/nio/channels/SocketChannel;Lorg/bitcoinj/net/StreamConnection;Ljava/net/SocketAddress;)V

    .line 157
    iget-object p1, p0, Lorg/bitcoinj/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 159
    iget-object p1, v1, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->future:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 161
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public run()V
    .locals 7

    const-string v0, "Error closing channel"

    const-string v1, "Error closing client manager selector"

    .line 104
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/net/NioClientManager;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/net/NioClientManager;->newConnectionChannels:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/net/NioClientManager$PendingConnect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 109
    :try_start_1
    iget-object v3, v2, Lorg/bitcoinj/net/NioClientManager$PendingConnect;->sc:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 110
    invoke-virtual {v3, v2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    :try_start_2
    sget-object v2, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v3, "SocketChannel was closed before it could be registered"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->select()I

    .line 118
    iget-object v2, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 122
    invoke-direct {p0, v3}, Lorg/bitcoinj/net/NioClientManager;->handleKey(Ljava/nio/channels/SelectionKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 129
    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 131
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 133
    sget-object v5, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v5, v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :goto_3
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 136
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/bitcoinj/net/ConnectionHandler;

    if-eqz v4, :cond_3

    .line 137
    invoke-static {v3}, Lorg/bitcoinj/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_2

    .line 140
    :cond_4
    :try_start_4
    iget-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 142
    sget-object v2, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_3
    move-exception v2

    .line 126
    :try_start_5
    sget-object v3, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    const-string v4, "Error trying to open/read from connection: "

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    iget-object v2, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    .line 131
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_4
    move-exception v4

    .line 133
    sget-object v5, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v5, v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :goto_5
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 136
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/bitcoinj/net/ConnectionHandler;

    if-eqz v4, :cond_5

    .line 137
    invoke-static {v3}, Lorg/bitcoinj/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_4

    .line 140
    :cond_6
    :try_start_7
    iget-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_6
    return-void

    .line 129
    :goto_7
    iget-object v3, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v3}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    .line 131
    :try_start_8
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_9

    :catch_5
    move-exception v5

    .line 133
    sget-object v6, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v0, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :goto_9
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 136
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/bitcoinj/net/ConnectionHandler;

    if-eqz v5, :cond_7

    .line 137
    invoke-static {v4}, Lorg/bitcoinj/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_8

    .line 140
    :cond_8
    :try_start_9
    iget-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 142
    sget-object v3, Lorg/bitcoinj/net/NioClientManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v3, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    :goto_a
    throw v2
.end method

.method public triggerShutdown()V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/bitcoinj/net/NioClientManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
