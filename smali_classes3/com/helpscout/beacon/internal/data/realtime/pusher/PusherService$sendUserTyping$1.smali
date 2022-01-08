.class final Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->sendUserTyping(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $customer:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

.field final synthetic $isTyping:Z

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->$customer:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->$isTyping:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$getPusher$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/pusher/client/Pusher;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->getPresenceChannelName$beacon_release()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pusher/client/Pusher;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$getRealTimeUserParser$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/helpscout/beacon/a/a/b;

    move-result-object v1

    new-instance v2, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventWithUserApiWrapper;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventUserWrapper;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->$customer:Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-direct {v3, v4}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventUserWrapper;-><init>(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    invoke-direct {v2, v3}, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventWithUserApiWrapper;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventUserWrapper;)V

    invoke-interface {v1, v2}, Lcom/helpscout/beacon/a/a/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;->$isTyping:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    :goto_0
    invoke-virtual {v2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/pusher/client/channel/PresenceChannel;->trigger(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
