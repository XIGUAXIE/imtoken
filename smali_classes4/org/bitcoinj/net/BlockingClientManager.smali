.class public Lorg/bitcoinj/net/BlockingClientManager;
.super Lcom/google/common/util/concurrent/AbstractIdleService;
.source "BlockingClientManager.java"

# interfaces
.implements Lorg/bitcoinj/net/ClientConnectionManager;


# instance fields
.field private final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/net/BlockingClient;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeoutMillis:I

.field private final socketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->connectTimeoutMillis:I

    .line 46
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    const/16 v0, 0x3e8

    .line 43
    iput v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->connectTimeoutMillis:I

    .line 54
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/SocketFactory;

    iput-object p1, p0, Lorg/bitcoinj/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public closeConnections(I)V
    .locals 3

    .line 91
    invoke-virtual {p0}, Lorg/bitcoinj/net/BlockingClientManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/net/BlockingClient;

    invoke-virtual {p1}, Lorg/bitcoinj/net/BlockingClient;->closeConnection()V

    move p1, v2

    goto :goto_0

    .line 97
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getConnectedClientCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public openConnection(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
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

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/net/BlockingClientManager;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lorg/bitcoinj/net/BlockingClient;

    iget v4, p0, Lorg/bitcoinj/net/BlockingClientManager;->connectTimeoutMillis:I

    iget-object v5, p0, Lorg/bitcoinj/net/BlockingClientManager;->socketFactory:Ljavax/net/SocketFactory;

    iget-object v6, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/net/BlockingClient;-><init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;ILjavax/net/SocketFactory;Ljava/util/Set;)V

    invoke-virtual {v0}, Lorg/bitcoinj/net/BlockingClient;->getConnectFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 64
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 0

    .line 70
    iput p1, p0, Lorg/bitcoinj/net/BlockingClientManager;->connectTimeoutMillis:I

    return-void
.end method

.method protected shutDown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/net/BlockingClientManager;->clients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/net/BlockingClient;

    .line 80
    invoke-virtual {v2}, Lorg/bitcoinj/net/BlockingClient;->closeConnection()V

    goto :goto_0

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
