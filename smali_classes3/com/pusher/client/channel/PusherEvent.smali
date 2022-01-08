.class public Lcom/pusher/client/channel/PusherEvent;
.super Ljava/lang/Object;
.source "PusherEvent.java"


# instance fields
.field private eventData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    const-string v1, "channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    const-string v1, "event"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    const-string v1, "user_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/pusher/client/channel/PusherEvent;->eventData:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
