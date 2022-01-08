.class public Lorg/bitcoinj/net/NioServer;
.super Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.source "NioServer.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final connectionFactory:Lorg/bitcoinj/net/StreamConnectionFactory;

.field private final sc:Ljava/nio/channels/ServerSocketChannel;

.field final selector:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/bitcoinj/net/NioServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/net/StreamConnectionFactory;Ljava/net/InetSocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/bitcoinj/net/NioServer;->connectionFactory:Lorg/bitcoinj/net/StreamConnectionFactory;

    .line 72
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, v0}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 74
    iget-object p1, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 75
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    .line 76
    iget-object p2, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    const/16 v0, 0x10

    invoke-virtual {p2, p1, v0}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method private handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object p2, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p2, v0}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p2, p1, v0}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    .line 50
    :try_start_0
    new-instance p2, Lorg/bitcoinj/net/ConnectionHandler;

    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->connectionFactory:Lorg/bitcoinj/net/StreamConnectionFactory;

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/net/ConnectionHandler;-><init>(Lorg/bitcoinj/net/StreamConnectionFactory;Ljava/nio/channels/SelectionKey;)V

    .line 51
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object p2, p2, Lorg/bitcoinj/net/ConnectionHandler;->connection:Lorg/bitcoinj/net/StreamConnection;

    invoke-interface {p2}, Lorg/bitcoinj/net/StreamConnection;->connectionOpened()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 55
    sget-object v0, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-static {p2}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Error handling new connection"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->close()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p2}, Lorg/bitcoinj/net/ConnectionHandler;->handleKey(Ljava/nio/channels/SelectionKey;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Error closing selection key"

    const-string v1, "Error closing server channel"

    const-string v2, "Error closing channel"

    const-string v3, "Error closing server selector"

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/net/NioServer;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    iget-object v4, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    .line 85
    iget-object v4, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 86
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 90
    iget-object v6, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v6, v5}, Lorg/bitcoinj/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v4, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 99
    :try_start_1
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 101
    sget-object v7, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v7, v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 105
    iget-object v6, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v6, v5}, Lorg/bitcoinj/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    .line 107
    sget-object v6, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 111
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 113
    sget-object v2, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_3
    :try_start_4
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 118
    sget-object v2, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception v4

    goto :goto_8

    :catch_4
    move-exception v4

    .line 94
    :try_start_5
    sget-object v5, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    const-string v6, "Error trying to open/read from connection: {}"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 97
    iget-object v4, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/SelectionKey;

    .line 99
    :try_start_6
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v6

    .line 101
    sget-object v7, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v7, v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 105
    iget-object v6, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v6, v5}, Lorg/bitcoinj/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception v5

    .line 107
    sget-object v6, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v6, v0, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 111
    :cond_3
    :try_start_8
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v0

    .line 113
    sget-object v2, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_6
    :try_start_9
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :goto_7
    return-void

    .line 97
    :goto_8
    iget-object v5, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v5}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/channels/SelectionKey;

    .line 99
    :try_start_a
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v7

    .line 101
    sget-object v8, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v8, v2, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    :goto_a
    :try_start_b
    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 105
    iget-object v7, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-direct {p0, v7, v6}, Lorg/bitcoinj/net/NioServer;->handleKey(Ljava/nio/channels/Selector;Ljava/nio/channels/SelectionKey;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v6

    .line 107
    sget-object v7, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v7, v0, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 111
    :cond_4
    :try_start_c
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    .line 113
    sget-object v2, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_b
    :try_start_d
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->sc:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_c

    :catch_b
    move-exception v0

    .line 118
    sget-object v2, Lorg/bitcoinj/net/NioServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_c
    throw v4
.end method

.method public triggerShutdown()V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bitcoinj/net/NioServer;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
