.class public final Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pusher/client/channel/PrivateChannelEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ#\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;",
        "Lcom/pusher/client/channel/PrivateChannelEventListener;",
        "",
        "message",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "e",
        "",
        "onAuthenticationFailure",
        "(Ljava/lang/String;Ljava/lang/Exception;)V",
        "channelName",
        "onSubscriptionSucceeded",
        "(Ljava/lang/String;)V",
        "Lcom/pusher/client/channel/PusherEvent;",
        "event",
        "onEvent",
        "(Lcom/pusher/client/channel/PusherEvent;)V",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;",
        "realtimeEventHandler",
        "Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;",
        "",
        "authError",
        "Z",
        "getAuthError",
        "()Z",
        "setAuthError",
        "(Z)V",
        "<init>",
        "(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private authError:Z

.field private final realtimeEventHandler:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)V
    .locals 1

    const-string v0, "realtimeEventHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->realtimeEventHandler:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    return-void
.end method


# virtual methods
.method public final getAuthError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->authError:Z

    return v0
.end method

.method public onAuthenticationFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private onAuthenticationFailure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->authError:Z

    return-void
.end method

.method public onEvent(Lcom/pusher/client/channel/PusherEvent;)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->realtimeEventHandler:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.eventName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pusher/client/channel/PusherEvent;->getData()Ljava/lang/String;

    move-result-object p1

    const-string v3, "it.data"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->authError:Z

    :cond_0
    return-void
.end method

.method public onSubscriptionSucceeded(Ljava/lang/String;)V
    .locals 2

    const-string v0, "channelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "private onSubscriptionSucceeded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setAuthError(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->authError:Z

    return-void
.end method
