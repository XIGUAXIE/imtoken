.class public Lcom/pusher/client/channel/impl/ChannelImpl;
.super Ljava/lang/Object;
.source "ChannelImpl.java"

# interfaces
.implements Lcom/pusher/client/channel/impl/InternalChannel;


# static fields
.field private static final INTERNAL_EVENT_PREFIX:Ljava/lang/String; = "pusher_internal:"

.field protected static final SUBSCRIPTION_SUCCESS_EVENT:Ljava/lang/String; = "pusher_internal:subscription_succeeded"


# instance fields
.field protected final GSON:Lcom/google/gson/Gson;

.field private eventListener:Lcom/pusher/client/channel/ChannelEventListener;

.field private final eventNameToListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/SubscriptionEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final lock:Ljava/lang/Object;

.field protected final name:Ljava/lang/String;

.field protected volatile state:Lcom/pusher/client/channel/ChannelState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/pusher/client/util/Factory;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->INITIAL:Lcom/pusher/client/channel/ChannelState;

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 28
    const-class v1, Lcom/pusher/client/channel/PusherEvent;

    new-instance v2, Lcom/pusher/client/channel/PusherEventDeserializer;

    invoke-direct {v2}, Lcom/pusher/client/channel/PusherEventDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 29
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/ChannelImpl;->getDisallowedNameExpressions()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 35
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is invalid. Private channel names must start with \"private-\" and presence channel names must start with \"presence-\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    return-void

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot subscribe to a channel with a null name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/pusher/client/channel/impl/ChannelImpl;)Lcom/pusher/client/channel/ChannelEventListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-object p0
.end method

.method private validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 2

    const-string v0, "Cannot bind or unbind to channel "

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-string p2, "pusher_internal:"

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 207
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    sget-object p2, Lcom/pusher/client/channel/ChannelState;->UNSUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-eq p1, p2, :cond_0

    return-void

    .line 208
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot bind or unbind to events on a channel that has been unsubscribed. Call Pusher.subscribe() to resubscribe to this channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot bind or unbind channel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with an internal event name such as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 199
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with a null listener"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with a null event name"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 3

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    .line 59
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public compareTo(Lcom/pusher/client/channel/impl/InternalChannel;)I
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/pusher/client/channel/impl/ChannelImpl;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/pusher/client/channel/impl/InternalChannel;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 15
    check-cast p1, Lcom/pusher/client/channel/impl/InternalChannel;

    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->compareTo(Lcom/pusher/client/channel/impl/InternalChannel;)I

    move-result p1

    return p1
.end method

.method protected getDisallowedNameExpressions()[Ljava/lang/String;
    .locals 2

    const-string v0, "^private-.*"

    const-string v1, "^presence-.*"

    .line 189
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventListener()Lcom/pusher/client/channel/ChannelEventListener;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-object v0
.end method

.method protected getInterestedListeners(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/pusher/client/channel/SubscriptionEventListener;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    .line 217
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 220
    monitor-exit v0

    return-object p1

    .line 223
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    sget-object v1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pusher_internal:subscription_succeeded"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object p1, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->updateState(Lcom/pusher/client/channel/ChannelState;)V

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl;->getInterestedListeners(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->prepareEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pusher/client/channel/SubscriptionEventListener;

    .line 108
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    new-instance v2, Lcom/pusher/client/channel/impl/ChannelImpl$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/pusher/client/channel/impl/ChannelImpl$1;-><init>(Lcom/pusher/client/channel/impl/ChannelImpl;Lcom/pusher/client/channel/SubscriptionEventListener;Lcom/pusher/client/channel/PusherEvent;)V

    invoke-virtual {v1, v2}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public prepareEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/pusher/client/channel/PusherEvent;
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    const-class v0, Lcom/pusher/client/channel/PusherEvent;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pusher/client/channel/PusherEvent;

    return-object p1
.end method

.method public setEventListener(Lcom/pusher/client/channel/ChannelEventListener;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "[Public Channel: name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSubscribeMessage()Ljava/lang/String;
    .locals 4

    .line 124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "pusher:subscribe"

    .line 125
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    const-string v3, "channel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnsubscribeMessage()Ljava/lang/String;
    .locals 4

    .line 137
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "pusher:unsubscribe"

    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 141
    iget-object v2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->name:Ljava/lang/String;

    const-string v3, "channel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "data"

    .line 143
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelImpl;->validateArguments(Ljava/lang/String;Lcom/pusher/client/channel/SubscriptionEventListener;)V

    .line 74
    iget-object v0, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 79
    iget-object p2, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventNameToListenerMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateState(Lcom/pusher/client/channel/ChannelState;)V
    .locals 1

    .line 151
    iput-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->state:Lcom/pusher/client/channel/ChannelState;

    .line 153
    sget-object v0, Lcom/pusher/client/channel/ChannelState;->SUBSCRIBED:Lcom/pusher/client/channel/ChannelState;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->eventListener:Lcom/pusher/client/channel/ChannelEventListener;

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/pusher/client/channel/impl/ChannelImpl;->factory:Lcom/pusher/client/util/Factory;

    new-instance v0, Lcom/pusher/client/channel/impl/ChannelImpl$2;

    invoke-direct {v0, p0}, Lcom/pusher/client/channel/impl/ChannelImpl$2;-><init>(Lcom/pusher/client/channel/impl/ChannelImpl;)V

    invoke-virtual {p1, v0}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
