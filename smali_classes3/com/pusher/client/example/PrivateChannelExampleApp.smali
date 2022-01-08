.class public Lcom/pusher/client/example/PrivateChannelExampleApp;
.super Ljava/lang/Object;
.source "PrivateChannelExampleApp.java"


# instance fields
.field private authorizationEndpoint:Ljava/lang/String;

.field private final channel:Lcom/pusher/client/channel/PrivateChannel;

.field private channelName:Ljava/lang/String;

.field private channelsKey:Ljava/lang/String;

.field private cluster:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FILL_ME_IN"

    .line 28
    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelsKey:Ljava/lang/String;

    const-string v0, "my-channel"

    .line 29
    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelName:Ljava/lang/String;

    const-string v0, "my-event"

    .line 30
    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->eventName:Ljava/lang/String;

    const-string v0, "eu"

    .line 31
    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->cluster:Ljava/lang/String;

    const-string v0, "http://localhost:3030/pusher/auth"

    .line 32
    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v5, 0x4

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->cluster:Ljava/lang/String;

    .line 45
    :cond_1
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->eventName:Ljava/lang/String;

    .line 46
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelName:Ljava/lang/String;

    .line 47
    :cond_3
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelsKey:Ljava/lang/String;

    .line 51
    :goto_0
    new-instance p1, Lcom/pusher/client/util/HttpAuthorizer;

    iget-object v0, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    .line 55
    invoke-virtual {v0, v2}, Lcom/pusher/client/PusherOptions;->setUseTLS(Z)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    iget-object v3, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->cluster:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v3}, Lcom/pusher/client/PusherOptions;->setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 58
    new-instance v0, Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelsKey:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    .line 61
    new-instance p1, Lcom/pusher/client/example/PrivateChannelExampleApp$1;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PrivateChannelExampleApp$1;-><init>(Lcom/pusher/client/example/PrivateChannelExampleApp;)V

    new-array v3, v1, [Lcom/pusher/client/connection/ConnectionState;

    .line 76
    invoke-virtual {v0, p1, v3}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 79
    new-instance p1, Lcom/pusher/client/example/PrivateChannelExampleApp$2;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PrivateChannelExampleApp$2;-><init>(Lcom/pusher/client/example/PrivateChannelExampleApp;)V

    .line 100
    iget-object v3, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->eventName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p1, v2}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/example/PrivateChannelExampleApp;->channel:Lcom/pusher/client/channel/PrivateChannel;

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 105
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 37
    new-instance v0, Lcom/pusher/client/example/PrivateChannelExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/PrivateChannelExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method
