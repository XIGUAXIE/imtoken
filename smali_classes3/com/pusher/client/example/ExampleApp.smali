.class public Lcom/pusher/client/example/ExampleApp;
.super Ljava/lang/Object;
.source "ExampleApp.java"


# instance fields
.field private channelName:Ljava/lang/String;

.field private channelsKey:Ljava/lang/String;

.field private cluster:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FILL_ME_IN"

    .line 25
    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->channelsKey:Ljava/lang/String;

    const-string v0, "my-channel"

    .line 26
    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->channelName:Ljava/lang/String;

    const-string v0, "my-event"

    .line 27
    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->eventName:Ljava/lang/String;

    const-string v0, "eu"

    .line 28
    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->cluster:Ljava/lang/String;

    .line 37
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

    .line 38
    :cond_0
    aget-object v0, p1, v4

    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->cluster:Ljava/lang/String;

    .line 39
    :cond_1
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->eventName:Ljava/lang/String;

    .line 40
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/pusher/client/example/ExampleApp;->channelName:Ljava/lang/String;

    .line 41
    :cond_3
    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/pusher/client/example/ExampleApp;->channelsKey:Ljava/lang/String;

    .line 45
    :goto_0
    new-instance p1, Lcom/pusher/client/PusherOptions;

    invoke-direct {p1}, Lcom/pusher/client/PusherOptions;-><init>()V

    .line 46
    invoke-virtual {p1, v2}, Lcom/pusher/client/PusherOptions;->setUseTLS(Z)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    iget-object v0, p0, Lcom/pusher/client/example/ExampleApp;->cluster:Ljava/lang/String;

    .line 47
    invoke-virtual {p1, v0}, Lcom/pusher/client/PusherOptions;->setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;

    move-result-object p1

    .line 48
    new-instance v0, Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/pusher/client/example/ExampleApp;->channelsKey:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Lcom/pusher/client/Pusher;-><init>(Ljava/lang/String;Lcom/pusher/client/PusherOptions;)V

    .line 51
    new-instance p1, Lcom/pusher/client/example/ExampleApp$1;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/ExampleApp$1;-><init>(Lcom/pusher/client/example/ExampleApp;)V

    new-array v3, v1, [Lcom/pusher/client/connection/ConnectionState;

    .line 66
    invoke-virtual {v0, p1, v3}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    .line 69
    new-instance p1, Lcom/pusher/client/example/ExampleApp$2;

    invoke-direct {p1, p0}, Lcom/pusher/client/example/ExampleApp$2;-><init>(Lcom/pusher/client/example/ExampleApp;)V

    .line 84
    iget-object v3, p0, Lcom/pusher/client/example/ExampleApp;->channelName:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/pusher/client/example/ExampleApp;->eventName:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, p1, v2}, Lcom/pusher/client/Pusher;->subscribe(Ljava/lang/String;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/Channel;

    :goto_1
    const-wide/16 v0, 0x3e8

    .line 90
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/pusher/client/example/ExampleApp;

    invoke-direct {v0, p0}, Lcom/pusher/client/example/ExampleApp;-><init>([Ljava/lang/String;)V

    return-void
.end method
