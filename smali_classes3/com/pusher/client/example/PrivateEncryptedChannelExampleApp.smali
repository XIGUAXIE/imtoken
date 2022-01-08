.class public Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;
.super Ljava/lang/Object;
.source "PrivateEncryptedChannelExampleApp.java"


# instance fields
.field private authorizationEndpoint:Ljava/lang/String;

.field private channel:Lcom/pusher/client/channel/PrivateEncryptedChannel;

.field private channelName:Ljava/lang/String;

.field private channelsKey:Ljava/lang/String;

.field private cluster:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FILL_ME_IN"

    .line 33
    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelsKey:Ljava/lang/String;

    const-string v0, "private-encrypted-channel"

    .line 34
    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelName:Ljava/lang/String;

    const-string v0, "my-event"

    .line 35
    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->eventName:Ljava/lang/String;

    const-string v0, "eu"

    .line 36
    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->cluster:Ljava/lang/String;

    const-string v0, "http://localhost:3030/pusher/auth"

    .line 37
    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    .line 48
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

    .line 49
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->cluster:Ljava/lang/String;

    .line 50
    :cond_1
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->eventName:Ljava/lang/String;

    .line 51
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelName:Ljava/lang/String;

    .line 52
    :cond_3
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelsKey:Ljava/lang/String;

    .line 56
    :goto_0
    new-instance p1, Lcom/pusher/client/util/HttpAuthorizer;

    iget-object v0, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    iget-object v3, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->cluster:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v3}, Lcom/pusher/client/PusherOptions;->setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    .line 61
    invoke-virtual {v0, p1}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v2}, Lcom/pusher/client/PusherOptions;->setUseTLS(Z)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelsKey:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    .line 66
    new-instance p1, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp$1;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp$1;-><init>(Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;)V

    new-array v3, v1, [Lcom/pusher/client/connection/ConnectionState;

    .line 81
    invoke-virtual {v0, p1, v3}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 84
    new-instance p1, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp$2;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp$2;-><init>(Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;)V

    .line 112
    iget-object v3, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->eventName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p1, v2}, Lcom/pusher/client/Pusher;->subscribePrivateEncrypted(Ljava/lang/String;Lcom/pusher/client/channel/PrivateEncryptedChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateEncryptedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;->channel:Lcom/pusher/client/channel/PrivateEncryptedChannel;

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 117
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 42
    new-instance v0, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/PrivateEncryptedChannelExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method
