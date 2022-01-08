.class public Lcom/pusher/client/Pusher;
.super Ljava/lang/Object;
.source "Pusher.java"

# interfaces
.implements Lcom/pusher/client/Client;


# instance fields
.field private final channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

.field private final connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final pusherOptions:Lcom/pusher/client/PusherOptions;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V
    .locals 1

    .line 86
    new-instance v0, Lcom/pusher/client/util/Factory;

    invoke-direct {v0}, Lcom/pusher/client/util/Factory;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;Lcom/pusher/client/util/Factory;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 103
    iput-object p2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 104
    iput-object p3, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    .line 105
    invoke-virtual {p3, p1, p2}, Lcom/pusher/client/util/Factory;->getConnection(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)Lcom/pusher/client/connection/impl/InternalConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 106
    invoke-virtual {p3}, Lcom/pusher/client/util/Factory;->getChannelManager()Lcom/pusher/client/channel/impl/ChannelManager;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    .line 107
    iget-object p2, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-virtual {p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager;->setConnection(Lcom/pusher/client/connection/impl/InternalConnection;)V

    return-void

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PusherOptions cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "API Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private throwExceptionIfNoAuthorizerHasBeenSet()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    invoke-virtual {v0}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot subscribe to a private or presence channel because no Authorizer has been set. Call PusherOptions.setAuthorizer() before connecting to Pusher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connect()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/pusher/client/connection/ConnectionState;

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method public varargs connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 163
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/pusher/client/connection/ConnectionState;

    .line 164
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    aput-object v0, p2, v1

    .line 167
    :cond_0
    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 168
    iget-object v3, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v3, v2, p1}, Lcom/pusher/client/connection/impl/InternalConnection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    array-length p1, p2

    if-gtz p1, :cond_3

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {p1}, Lcom/pusher/client/connection/impl/InternalConnection;->connect()V

    return-void

    .line 173
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot bind to connection states with a null connection event listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    move-result-object p1

    return-object p1
.end method

.method public getConnection()Lcom/pusher/client/connection/Connection;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    return-object v0
.end method

.method public getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateEncryptedChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateEncryptedChannel;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->getPrivateEncryptedChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateEncryptedChannel;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    invoke-virtual {v0, p1}, Lcom/pusher/client/util/Factory;->newPublicChannel(Ljava/lang/String;)Lcom/pusher/client/channel/impl/ChannelImpl;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public subscribePresence(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 336
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 3

    .line 352
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 354
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 355
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 354
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPresenceChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PresenceChannelImpl;

    move-result-object p1

    .line 356
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public subscribePrivate(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p0, p1, v1, v0}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object p1

    return-object p1
.end method

.method public varargs subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 3

    .line 281
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 283
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 284
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPrivateChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PrivateChannelImpl;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public varargs subscribePrivateEncrypted(Ljava/lang/String;Lcom/pusher/client/channel/PrivateEncryptedChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateEncryptedChannel;
    .locals 3

    .line 312
    invoke-direct {p0}, Lcom/pusher/client/Pusher;->throwExceptionIfNoAuthorizerHasBeenSet()V

    .line 314
    iget-object v0, p0, Lcom/pusher/client/Pusher;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/Pusher;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    iget-object v2, p0, Lcom/pusher/client/Pusher;->pusherOptions:Lcom/pusher/client/PusherOptions;

    .line 315
    invoke-virtual {v2}, Lcom/pusher/client/PusherOptions;->getAuthorizer()Lcom/pusher/client/Authorizer;

    move-result-object v2

    .line 314
    invoke-virtual {v0, v1, p1, v2}, Lcom/pusher/client/util/Factory;->newPrivateEncryptedChannel(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;)Lcom/pusher/client/channel/impl/PrivateEncryptedChannelImpl;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    return-object p1
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/pusher/client/Pusher;->channelManager:Lcom/pusher/client/channel/impl/ChannelManager;

    invoke-virtual {v0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->unsubscribeFrom(Ljava/lang/String;)V

    return-void
.end method
