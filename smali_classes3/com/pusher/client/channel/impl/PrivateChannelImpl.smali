.class public Lcom/pusher/client/channel/impl/PrivateChannelImpl;
.super Lcom/pusher/client/channel/impl/ChannelImpl;
.source "PrivateChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/PrivateChannel;


# static fields
.field private static final CLIENT_EVENT_PREFIX:Ljava/lang/String; = "client-"

.field private static final GSON:Lcom/google/gson/Gson;


# instance fields
.field private final authorizer:Lcom/pusher/client/Authorizer;

.field protected channelData:Ljava/lang/String;

.field private final connection:Lcom/pusher/client/connection/impl/InternalConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/pusher/client/connection/impl/InternalConnection;Ljava/lang/String;Lcom/pusher/client/Authorizer;Lcom/pusher/client/util/Factory;)V
    .locals 0

    .line 30
    invoke-direct {p0, p2, p4}, Lcom/pusher/client/channel/impl/ChannelImpl;-><init>(Ljava/lang/String;Lcom/pusher/client/util/Factory;)V

    .line 31
    iput-object p1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 32
    iput-object p3, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->authorizer:Lcom/pusher/client/Authorizer;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 1

    .line 78
    instance-of v0, p2, Lcom/pusher/client/channel/PrivateChannelEventListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only instances of PrivateChannelEventListener can be bound to a private channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getAuthResponse()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v0}, Lcom/pusher/client/connection/impl/InternalConnection;->getSocketId()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->authorizer:Lcom/pusher/client/Authorizer;

    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/pusher/client/Authorizer;->authorize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 2

    const-string v0, "^(?!private-).*"

    const-string v1, "^private-encrypted-.*"

    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Private Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 8

    const-string v0, "channel_data"

    const-string v1, "auth"

    .line 90
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->getAuthResponse()Ljava/lang/String;

    move-result-object v2

    .line 93
    :try_start_0
    sget-object v3, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v4, Ljava/util/Map;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 94
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->channelData:Ljava/lang/String;

    .line 97
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v5, "event"

    const-string v6, "pusher:subscribe"

    .line 98
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v6, "channel"

    .line 101
    iget-object v7, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->name:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->channelData:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->channelData:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "data"

    .line 107
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Lcom/pusher/client/AuthorizationFailureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse response from Authorizer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/pusher/client/AuthorizationFailureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public trigger(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Cannot trigger event "

    if-eqz p1, :cond_2

    const-string v1, "client-"

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    sget-object v2, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    const-string v3, " state"

    if-ne v1, v2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v1}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v1

    sget-object v2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v1, v2, :cond_0

    .line 58
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "event"

    .line 59
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channel"

    .line 60
    iget-object v3, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 61
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    invoke-interface {v2, v1}, Lcom/pusher/client/connection/impl/InternalConnection;->sendMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 68
    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" could not be parsed as valid JSON"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because connection is in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->connection:Lcom/pusher/client/connection/impl/InternalConnection;

    .line 53
    invoke-interface {p1}, Lcom/pusher/client/connection/impl/InternalConnection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pusher/client/connection/ConnectionState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 47
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because channel "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/pusher/client/channel/impl/PrivateChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    .line 48
    invoke-virtual {p1}, Lcom/pusher/client/channel/ChannelState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 42
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": client events must start with \"client-\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
