.class public Lcom/pusher/client/channel/impl/ChannelManager;
.super Ljava/lang/Object;
.source "ChannelManager.java"

# interfaces
.implements Lcom/pusher/client/connection/ConnectionEventListener;


# static fields
.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field private final channelNameToChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pusher/client/channel/impl/InternalChannel;",
            ">;"
        }
    .end annotation
.end field

.field private connection:Lcom/pusher/client/connection/impl/InternalConnection;

.field private final factory:Lcom/pusher/client/util/Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/impl/ChannelManager;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/util/Factory;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager;->factory:Lcom/pusher/client/util/Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/pusher/client/channel/impl/ChannelManager;)Lcom/pusher/client/connection/impl/InternalConnection;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager;->handleAuthenticationFailure(Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V

    return-void
.end method

.method private findChannelInChannelMap(Ljava/lang/String;)Lcom/pusher/client/channel/impl/InternalChannel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/InternalChannel;

    return-object p1
.end method

.method private handleAuthenticationFailure(Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->FAILED:Lcom/pusher/client/channel/ChannelState;

    invoke-interface {p1, v0}, Lcom/pusher/client/channel/impl/InternalChannel;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    .line 175
    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getEventListener()Lcom/pusher/client/channel/ChannelEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/channel/impl/ChannelManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager$3;-><init>(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private sendOrQueueSubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/channel/impl/ChannelManager$1;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager$1;-><init>(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendUnsubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/channel/impl/ChannelManager$2;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager$2;-><init>(Lcom/pusher/client/channel/impl/ChannelManager;Lcom/pusher/client/channel/impl/InternalChannel;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private varargs validateArgumentsAndBindEvents(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 202
    invoke-interface {p1, v2, p2}, Lcom/pusher/client/channel/impl/InternalChannel;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1, p2}, Lcom/pusher/client/channel/impl/InternalChannel;->setEventListener(Lcom/pusher/client/channel/ChannelEventListener;)V

    return-void

    .line 198
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already subscribed to a channel with name "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 194
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot subscribe to a null channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChannel(Ljava/lang/String;)Lcom/pusher/client/channel/Channel;
    .locals 1

    const-string v0, "private-"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "presence-"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->findChannelInChannelMap(Ljava/lang/String;)Lcom/pusher/client/channel/impl/InternalChannel;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use the getPresenceChannel method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please use the getPrivateChannel method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "presence-"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->findChannelInChannelMap(Ljava/lang/String;)Lcom/pusher/client/channel/impl/InternalChannel;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/PresenceChannel;

    return-object p1

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Presence channels must begin with \'presence-\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "private-"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->findChannelInChannelMap(Ljava/lang/String;)Lcom/pusher/client/channel/impl/InternalChannel;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/PrivateChannel;

    return-object p1

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Private channels must begin with \'private-\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateEncryptedChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateEncryptedChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "private-encrypted-"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->findChannelInChannelMap(Ljava/lang/String;)Lcom/pusher/client/channel/impl/InternalChannel;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/PrivateEncryptedChannel;

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encrypted private channels must begin with \'private-encrypted-\'"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onConnectionStateChange(Lcom/pusher/client/connection/ConnectionStateChange;)V
    .locals 1

    .line 126
    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionStateChange;->getCurrentState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/impl/InternalChannel;

    .line 128
    invoke-direct {p0, v0}, Lcom/pusher/client/channel/impl/ChannelManager;->sendOrQueueSubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 108
    sget-object v0, Lcom/pusher/client/channel/impl/ChannelManager;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "channel"

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    check-cast v0, Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/impl/InternalChannel;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0, p1, p2}, Lcom/pusher/client/channel/impl/InternalChannel;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setConnection(Lcom/pusher/client/connection/impl/InternalConnection;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    if-eqz v0, :cond_0

    .line 76
    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {v0, v1, p0}, Lcom/pusher/client/connection/impl/InternalConnection;->unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)Z

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelManager;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 80
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {p1, v0, p0}, Lcom/pusher/client/connection/impl/InternalConnection;->bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V

    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot construct ChannelManager with a null connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs subscribeTo(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/pusher/client/channel/impl/ChannelManager;->validateArgumentsAndBindEvents(Lcom/pusher/client/channel/impl/InternalChannel;Lcom/pusher/client/channel/ChannelEventListener;[Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->sendOrQueueSubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V

    return-void
.end method

.method public unsubscribeFrom(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 96
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->channelNameToChannelMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/impl/InternalChannel;

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelManager;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_1

    .line 101
    invoke-direct {p0, p1}, Lcom/pusher/client/channel/impl/ChannelManager;->sendUnsubscribeMessage(Lcom/pusher/client/channel/impl/InternalChannel;)V

    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot unsubscribe from null channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
