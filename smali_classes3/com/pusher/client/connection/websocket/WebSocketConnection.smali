.class public Lcom/pusher/client/connection/websocket/WebSocketConnection;
.super Ljava/lang/Object;
.source "WebSocketConnection.java"

# interfaces
.implements Lcom/pusher/client/connection/impl/InternalConnection;
.implements Lcom/pusher/client/connection/websocket/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;
    }
.end annotation


# static fields
.field private static final GSON:Lcom/google/gson/Gson;

.field private static final INTERNAL_EVENT_PREFIX:Ljava/lang/String; = "pusher:"

.field private static final PING_EVENT_SERIALIZED:Ljava/lang/String; = "{\"event\": \"pusher:ping\"}"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final activityTimer:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

.field private final eventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/pusher/client/connection/ConnectionState;",
            "Ljava/util/Set<",
            "Lcom/pusher/client/connection/ConnectionEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final factory:Lcom/pusher/client/util/Factory;

.field private final maxReconnectionAttempts:I

.field private final maxReconnectionGap:I

.field private final proxy:Ljava/net/Proxy;

.field private reconnectAttempts:I

.field private socketId:Ljava/lang/String;

.field private volatile state:Lcom/pusher/client/connection/ConnectionState;

.field private underlyingConnection:Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

.field private final webSocketUri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->log:Ljava/util/logging/Logger;

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJIILjava/net/Proxy;Lcom/pusher/client/util/Factory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object v6, p0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    iput-object v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    const/4 v7, 0x0

    .line 45
    iput v7, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    .line 56
    new-instance v0, Ljava/net/URI;

    move-object v1, p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->webSocketUri:Ljava/net/URI;

    .line 57
    new-instance v8, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;JJ)V

    iput-object v8, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->activityTimer:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    move v0, p6

    .line 58
    iput v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->maxReconnectionAttempts:I

    move/from16 v0, p7

    .line 59
    iput v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->maxReconnectionGap:I

    move-object/from16 v0, p8

    .line 60
    iput-object v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->proxy:Ljava/net/Proxy;

    move-object/from16 v0, p9

    .line 61
    iput-object v0, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    .line 63
    invoke-static {}, Lcom/pusher/client/connection/ConnectionState;->values()[Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v7, v1, :cond_0

    aget-object v2, v0, v7

    .line 64
    iget-object v3, v6, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/ConnectionState;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->tryConnecting()V

    return-void
.end method

.method static synthetic access$200(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionState;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->underlyingConnection:Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendErrorToAllListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500()Lcom/google/gson/Gson;
    .locals 1

    .line 27
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->handleEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/pusher/client/connection/websocket/WebSocketConnection;)Lcom/pusher/client/util/Factory;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/logging/Logger;
    .locals 1

    .line 27
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private cancelTimeoutsAndTransitonToDisconnected()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->activityTimer:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->cancelTimeouts()V

    .line 319
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$8;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$8;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 326
    iput v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    return-void
.end method

.method private handleConnectionMessage(Ljava/lang/String;)V
    .locals 2

    .line 192
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "data"

    .line 193
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "socket_id"

    .line 195
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->socketId:Ljava/lang/String;

    .line 197
    iget-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq p1, v0, :cond_0

    .line 198
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    :cond_0
    const/4 p1, 0x0

    .line 201
    iput p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    return-void
.end method

.method private handleError(Ljava/lang/String;)V
    .locals 4

    .line 206
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "data"

    .line 207
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->GSON:Lcom/google/gson/Gson;

    check-cast p1, Ljava/lang/String;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 214
    :cond_0
    check-cast p1, Ljava/util/Map;

    :goto_0
    const-string v0, "message"

    .line 217
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "code"

    .line 219
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 222
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 225
    :goto_1
    invoke-direct {p0, v0, p1, v1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendErrorToAllListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private handleEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pusher:"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->handleInternalEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    invoke-virtual {v0}, Lcom/pusher/client/util/Factory;->getChannelManager()Lcom/pusher/client/channel/impl/ChannelManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pusher/client/channel/impl/ChannelManager;->onMessage(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleInternalEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "pusher:connection_established"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-direct {p0, p2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->handleConnectionMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pusher:error"

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-direct {p0, p2}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->handleError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendErrorToAllListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 9

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 231
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/pusher/client/connection/ConnectionEventListener;

    .line 235
    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v8, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/pusher/client/connection/websocket/WebSocketConnection$5;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionEventListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v8}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private shouldReconnect(I)Z
    .locals 1

    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1004

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private tryConnecting()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->webSocketUri:Ljava/net/URI;

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->proxy:Ljava/net/Proxy;

    .line 86
    invoke-virtual {v0, v1, v2, p0}, Lcom/pusher/client/util/Factory;->newWebSocketClientWrapper(Ljava/net/URI;Ljava/net/Proxy;Lcom/pusher/client/connection/websocket/WebSocketListener;)Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->underlyingConnection:Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    .line 87
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->CONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    .line 88
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->underlyingConnection:Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketClientWrapper;->connect()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const-string v2, "Error connecting over SSL"

    .line 91
    invoke-direct {p0, v2, v1, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->sendErrorToAllListeners(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private tryReconnecting()V
    .locals 5

    .line 297
    iget v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    .line 298
    sget-object v0, Lcom/pusher/client/connection/ConnectionState;->RECONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    .line 299
    iget v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->maxReconnectionGap:I

    iget v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    mul-int v1, v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 301
    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    invoke-virtual {v2}, Lcom/pusher/client/util/Factory;->getTimers()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/pusher/client/connection/websocket/WebSocketConnection$7;

    invoke-direct {v3, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$7;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private updateState(Lcom/pusher/client/connection/ConnectionState;)V
    .locals 4

    .line 153
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State transition requested, current ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 155
    new-instance v0, Lcom/pusher/client/connection/ConnectionStateChange;

    iget-object v1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {v0, v1, p1}, Lcom/pusher/client/connection/ConnectionStateChange;-><init>(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionState;)V

    .line 156
    iput-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    .line 158
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 159
    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    sget-object v3, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 162
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pusher/client/connection/ConnectionEventListener;

    .line 163
    iget-object v2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v3, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$4;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Lcom/pusher/client/connection/ConnectionEventListener;Lcom/pusher/client/connection/ConnectionStateChange;)V

    invoke-virtual {v2, v3}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$1;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$2;

    invoke-direct {v1, p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$2;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSocketId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->socketId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/pusher/client/connection/ConnectionState;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    return-object v0
.end method

.method public onClose(ILjava/lang/String;Z)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->RECONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->shouldReconnect(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 275
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->CONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 291
    :cond_2
    iget-object p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->state:Lcom/pusher/client/connection/ConnectionState;

    sget-object p2, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    if-ne p1, p2, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->cancelTimeoutsAndTransitonToDisconnected()V

    :cond_3
    return-void

    .line 281
    :cond_4
    :goto_0
    iget p1, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->reconnectAttempts:I

    iget p2, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->maxReconnectionAttempts:I

    if-ge p1, p2, :cond_5

    .line 282
    invoke-direct {p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->tryReconnecting()V

    goto :goto_1

    .line 285
    :cond_5
    sget-object p1, Lcom/pusher/client/connection/ConnectionState;->DISCONNECTING:Lcom/pusher/client/connection/ConnectionState;

    invoke-direct {p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->updateState(Lcom/pusher/client/connection/ConnectionState;)V

    .line 286
    invoke-direct {p0}, Lcom/pusher/client/connection/websocket/WebSocketConnection;->cancelTimeoutsAndTransitonToDisconnected()V

    :goto_1
    return-void

    .line 269
    :cond_6
    :goto_2
    sget-object v0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->log:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received close from underlying socket when already disconnected.Close code ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], Reason ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], Remote ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection$9;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->activityTimer:Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;

    invoke-virtual {v0}, Lcom/pusher/client/connection/websocket/WebSocketConnection$ActivityTimer;->activity()V

    .line 256
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection$6;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 0

    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->factory:Lcom/pusher/client/util/Factory;

    new-instance v1, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;

    invoke-direct {v1, p0, p1}, Lcom/pusher/client/connection/websocket/WebSocketConnection$3;-><init>(Lcom/pusher/client/connection/websocket/WebSocketConnection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pusher/client/util/Factory;->queueOnEventThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unbind(Lcom/pusher/client/connection/ConnectionState;Lcom/pusher/client/connection/ConnectionEventListener;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/pusher/client/connection/websocket/WebSocketConnection;->eventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
