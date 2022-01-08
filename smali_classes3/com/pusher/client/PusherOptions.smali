.class public Lcom/pusher/client/PusherOptions;
.super Ljava/lang/Object;
.source "PusherOptions.java"


# static fields
.field private static final DEFAULT_ACTIVITY_TIMEOUT:J = 0x1d4c0L

.field private static final DEFAULT_PONG_TIMEOUT:J = 0x7530L

.field private static final LIB_DEV_VERSION:Ljava/lang/String; = "0.0.0-dev"

.field public static final LIB_VERSION:Ljava/lang/String;

.field private static final MAX_RECONNECTION_ATTEMPTS:I = 0x6

.field private static final MAX_RECONNECT_GAP_IN_SECONDS:I = 0x1e

.field private static final PUSHER_DOMAIN:Ljava/lang/String; = "pusher.com"

.field private static final SRC_LIB_DEV_VERSION:Ljava/lang/String; = "@version@"

.field private static final URI_SUFFIX:Ljava/lang/String;

.field private static final WSS_PORT:I = 0x1bb

.field private static final WSS_SCHEME:Ljava/lang/String; = "wss"

.field private static final WS_PORT:I = 0x50

.field private static final WS_SCHEME:Ljava/lang/String; = "ws"


# instance fields
.field private activityTimeout:J

.field private authorizer:Lcom/pusher/client/Authorizer;

.field private host:Ljava/lang/String;

.field private maxReconnectGapInSeconds:I

.field private maxReconnectionAttempts:I

.field private pongTimeout:J

.field private proxy:Ljava/net/Proxy;

.field private useTLS:Z

.field private wsPort:I

.field private wssPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/pusher/client/PusherOptions;->readVersionFromProperties()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?client=java-client&protocol=5&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pusher/client/PusherOptions;->LIB_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ws.pusherapp.com"

    .line 34
    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    const/16 v0, 0x50

    .line 35
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    const/16 v0, 0x1bb

    .line 36
    iput v0, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    const-wide/32 v0, 0x1d4c0

    .line 38
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    const-wide/16 v0, 0x7530

    .line 39
    iput-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    .line 41
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    const/4 v0, 0x6

    .line 42
    iput v0, p0, Lcom/pusher/client/PusherOptions;->maxReconnectionAttempts:I

    const/16 v0, 0x1e

    .line 43
    iput v0, p0, Lcom/pusher/client/PusherOptions;->maxReconnectGapInSeconds:I

    return-void
.end method

.method private static readVersionFromProperties()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 284
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 285
    const-class v2, Lcom/pusher/client/PusherOptions;

    const-string v3, "/pusher.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 286
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "version"

    .line 287
    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "@version@"

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "0.0.0-dev"

    :cond_0
    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    .line 306
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-object v1

    :cond_2
    if-eqz v0, :cond_4

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 312
    :catch_1
    :cond_3
    throw v1

    :catch_2
    if-eqz v0, :cond_4

    goto :goto_0

    :catch_3
    :cond_4
    :goto_1
    const-string v0, "0.0.0"

    return-object v0
.end method


# virtual methods
.method public buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 240
    iget-boolean v1, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    if-eqz v1, :cond_0

    const-string v1, "wss"

    goto :goto_0

    :cond_0
    const-string v1, "ws"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    sget-object v1, Lcom/pusher/client/PusherOptions;->URI_SUFFIX:Ljava/lang/String;

    aput-object v1, v0, p1

    const-string p1, "%s://%s:%s/app/%s%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getActivityTimeout()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    return-wide v0
.end method

.method public getAuthorizer()Lcom/pusher/client/Authorizer;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object v0
.end method

.method public getMaxReconnectGapInSeconds()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/pusher/client/PusherOptions;->maxReconnectGapInSeconds:I

    return v0
.end method

.method public getMaxReconnectionAttempts()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/pusher/client/PusherOptions;->maxReconnectionAttempts:I

    return v0
.end method

.method public getPongTimeout()J
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public isEncrypted()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    return v0
.end method

.method public isUseTLS()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    return v0
.end method

.method public setActivityTimeout(J)Lcom/pusher/client/PusherOptions;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 176
    iput-wide p1, p0, Lcom/pusher/client/PusherOptions;->activityTimeout:J

    return-object p0

    .line 172
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAuthorizer(Lcom/pusher/client/Authorizer;)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->authorizer:Lcom/pusher/client/Authorizer;

    return-object p0
.end method

.method public setCluster(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ws-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pusher.com"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    const/16 p1, 0x50

    .line 152
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    const/16 p1, 0x1bb

    .line 153
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    return-object p0
.end method

.method public setEncrypted(Z)Lcom/pusher/client/PusherOptions;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iput-boolean p1, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->host:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxReconnectGapInSeconds(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 224
    iput p1, p0, Lcom/pusher/client/PusherOptions;->maxReconnectGapInSeconds:I

    return-object p0
.end method

.method public setMaxReconnectionAttempts(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 212
    iput p1, p0, Lcom/pusher/client/PusherOptions;->maxReconnectionAttempts:I

    return-object p0
.end method

.method public setPongTimeout(J)Lcom/pusher/client/PusherOptions;
    .locals 3

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 201
    iput-wide p1, p0, Lcom/pusher/client/PusherOptions;->pongTimeout:J

    return-object p0

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Pong timeout must be at least 1,000ms (and is recommended to be much higher)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/pusher/client/PusherOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 256
    iput-object p1, p0, Lcom/pusher/client/PusherOptions;->proxy:Ljava/net/Proxy;

    return-object p0

    .line 254
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "proxy must not be null (instead use Proxy.NO_PROXY)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUseTLS(Z)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/pusher/client/PusherOptions;->useTLS:Z

    return-object p0
.end method

.method public setWsPort(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 131
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wsPort:I

    return-object p0
.end method

.method public setWssPort(I)Lcom/pusher/client/PusherOptions;
    .locals 0

    .line 146
    iput p1, p0, Lcom/pusher/client/PusherOptions;->wssPort:I

    return-object p0
.end method
