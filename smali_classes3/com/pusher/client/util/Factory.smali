.class public Lcom/pusher/client/util/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/util/Factory$DaemonThreadFactory;
    }
.end annotation


# static fields
.field private static final eventLock:Ljava/lang/Object;


# instance fields
.field private channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

.field private connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private eventQueue:Ljava/util/concurrent/ExecutorService;

.field private timers:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pusher/client/util/Factory;->eventLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Lcom/pusher/client/util/Factory;->eventLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getChannelManager()Lcom/pusher/client/channel/impl/ChannelManager;
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-direct {v0, p0}, Lcom/pusher/client/channel/impl/ChannelManager;-><init>(Lcom/pusher/client/util/Factory;)V

    iput-object v0, p0, Lcom/pusher/client/util/Factory;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnection(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)Lcom/pusher/client/connection/impl/InternalConnection;
    .locals 11

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->connection:Lcom/pusher/client/connection/impl/InternalConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 55
    :try_start_1
    new-instance v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;

    .line 56
    invoke-virtual {p2, p1}, Lcom/pusher/client/PusherOptions;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p2}, Lcom/pusher/client/PusherOptions;->getActivityTimeout()J

    move-result-wide v3

    .line 58
    invoke-virtual {p2}, Lcom/pusher/client/PusherOptions;->getPongTimeout()J

    move-result-wide v5

    .line 59
    invoke-virtual {p2}, Lcom/pusher/client/PusherOptions;->getMaxReconnectionAttempts()I

    move-result v7

    .line 60
    invoke-virtual {p2}, Lcom/pusher/client/PusherOptions;->getMaxReconnectGapInSeconds()I

    move-result v8

    .line 61
    invoke-virtual {p2}, Lcom/pusher/client/PusherOptions;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    move-object v1, v0

    move-object v10, p0

    invoke-direct/range {v1 .. v10}, Lcom/pusher/client/connection/websocket/WebSocketConnection;-><init>(Ljava/lang/String;JJIILjava/net/Proxy;Lcom/pusher/client/util/Factory;)V

    iput-object v0, p0, Lcom/pusher/client/util/Factory;->connection:Lcom/pusher/client/connection/impl/InternalConnection;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed to initialise connection"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 68
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/pusher/client/util/Factory;->connection:Lcom/pusher/client/connection/impl/InternalConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTimers()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/pusher/client/util/Factory$DaemonThreadFactory;

    const-string v1, "timers"

    invoke-direct {v0, v1}, Lcom/pusher/client/util/Factory$DaemonThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newPresenceChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PresenceChannelImpl;
    .locals 1

    .line 101
    new-instance v0, Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/pusher/client/channel/impl/PresenceChannelImpl;-><init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V

    return-object v0
.end method

.method public newPrivateChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PrivateChannelImpl;
    .locals 1

    .line 88
    new-instance v0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;-><init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V

    return-object v0
.end method

.method public newPrivateEncryptedChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;
    .locals 7

    .line 95
    new-instance v6, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;

    new-instance v5, Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;

    invoke-direct {v5}, Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;-><init>()V

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;-><init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;Lcom/pusher/client/crypto/nacl/SecretBoxOpenerFactory;)V

    return-object v6
.end method

.method public newPublicChannel(Ljava/lang/String;)Lcom/pusher/client/channel/impl/ChannelImpl;
    .locals 1

    .line 83
    new-instance v0, Lcom/pusher/client/channel/impl/ChannelImpl;

    invoke-direct {v0, p1, p0}, Lcom/pusher/client/channel/impl/ChannelImpl;-><init>(Ljava/lang/String;Lcom/pusher/client/util/Factory;)V

    return-object v0
.end method

.method public newWebSocketClientWrapper(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/websocket/WebSocketListener;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;-><init>(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/websocket/WebSocketListener;)V

    return-object v0
.end method

.method public declared-synchronized queueOnEventThread(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/pusher/client/util/Factory$DaemonThreadFactory;

    const-string v1, "eventQueue"

    invoke-direct {v0, v1}, Lcom/pusher/client/util/Factory$DaemonThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/pusher/client/util/Factory$1;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/util/Factory$1;-><init>(Lcom/pusher/client/util/Factory;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdownThreads()V
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 128
    iput-object v1, p0, Lcom/pusher/client/util/Factory;->eventQueue:Ljava/util/concurrent/ExecutorService;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 132
    iput-object v1, p0, Lcom/pusher/client/util/Factory;->timers:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
