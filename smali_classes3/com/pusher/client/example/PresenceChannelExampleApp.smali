.class public Lcom/pusher/client/example/PresenceChannelExampleApp;
.super Ljava/lang/Object;
.source "PresenceChannelExampleApp.java"


# instance fields
.field private authorizationEndpoint:Ljava/lang/String;

.field private final channel:Lcom/pusher/client/channel/PresenceChannel;

.field private channelName:Ljava/lang/String;

.field private channelsKey:Ljava/lang/String;

.field private cluster:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FILL_ME_IN"

    .line 31
    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelsKey:Ljava/lang/String;

    const-string v0, "my-channel"

    .line 32
    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelName:Ljava/lang/String;

    const-string v0, "my-event"

    .line 33
    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->eventName:Ljava/lang/String;

    const-string v0, "eu"

    .line 34
    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->cluster:Ljava/lang/String;

    const-string v0, "http://localhost:3030/pusher/auth"

    .line 35
    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    .line 46
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

    .line 47
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->cluster:Ljava/lang/String;

    .line 48
    :cond_1
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->eventName:Ljava/lang/String;

    .line 49
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelName:Ljava/lang/String;

    .line 50
    :cond_3
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelsKey:Ljava/lang/String;

    .line 54
    :goto_0
    new-instance p1, Lcom/pusher/client/util/HttpAuthorizer;

    iget-object v0, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->authorizationEndpoint:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/pusher/client/util/HttpAuthorizer;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/pusher/client/PusherOptions;

    invoke-direct {v0}, Lcom/pusher/client/PusherOptions;-><init>()V

    .line 58
    invoke-virtual {v0, v2}, Lcom/pusher/client/PusherOptions;->setUseTLS(Z)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->cluster:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v3}, Lcom/pusher/client/PusherOptions;->setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/pusher/client/PusherOptions;->setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelsKey:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    .line 64
    new-instance p1, Lcom/pusher/client/example/PresenceChannelExampleApp$1;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PresenceChannelExampleApp$1;-><init>(Lcom/pusher/client/example/PresenceChannelExampleApp;)V

    new-array v3, v1, [Lcom/pusher/client/connection/ConnectionState;

    .line 79
    invoke-virtual {v0, p1, v3}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 82
    new-instance p1, Lcom/pusher/client/example/PresenceChannelExampleApp$2;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/PresenceChannelExampleApp$2;-><init>(Lcom/pusher/client/example/PresenceChannelExampleApp;)V

    .line 121
    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->eventName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p1, v2}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 127
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/pusher/client/example/PresenceChannelExampleApp;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;->printCurrentlySubscribedUsers()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/pusher/client/example/PresenceChannelExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/PresenceChannelExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method private printCurrentlySubscribedUsers()V
    .locals 4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Users now subscribed to the channel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v1}, Lcom/pusher/client/channel/PresenceChannel;->getUsers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pusher/client/channel/User;

    const-string v3, "\n\t"

    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2}, Lcom/pusher/client/channel/User;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v3, p0, Lcom/pusher/client/example/PresenceChannelExampleApp;->channel:Lcom/pusher/client/channel/PresenceChannel;

    invoke-interface {v3}, Lcom/pusher/client/channel/PresenceChannel;->getMe()Lcom/pusher/client/channel/User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pusher/client/channel/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, " (me)"

    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
