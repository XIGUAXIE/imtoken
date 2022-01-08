.class public final Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0097\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001%\u0008\u0000\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u00107\u001a\u000206\u0012\u0006\u0010=\u001a\u00020<\u0012\u0006\u00103\u001a\u000202\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u0010D\u001a\u00020C\u0012\u0008\u0008\u0002\u0010F\u001a\u00020E\u0012\u0008\u0008\u0002\u0010H\u001a\u00020G\u0012\u0008\u0008\u0002\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008I\u0010JJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u001d\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\r\u0010\u0016\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\r\u0010\u0017\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\r\u0010\u0018\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0018\u0010\rR\u001c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR(\u0010\u001c\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u001c\u0010\u001d\u0012\u0004\u0008!\u0010\u0004\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010\tR\u0016\u0010#\u001a\u00020\"8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0016\u0010.\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010\u001dR\u0016\u00100\u001a\u00020/8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0016\u00103\u001a\u0002028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u001c\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u0010\u001bR\u0016\u00107\u001a\u0002068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0016\u0010:\u001a\u0002098\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u001c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020@0?8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006K"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;",
        "",
        "",
        "onConnected",
        "()V",
        "requestAuthTokensAndSubscribe",
        "",
        "channelName",
        "subscribeToPrivateChannel",
        "(Ljava/lang/String;)V",
        "subscribeToPresenceChannel",
        "",
        "isConnected",
        "()Z",
        "resetAuthAndListenerErrors",
        "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
        "customer",
        "isTyping",
        "sendUserTyping",
        "(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V",
        "refreshConnectionIfNeeded$beacon_release",
        "refreshConnectionIfNeeded",
        "connect",
        "disconnect",
        "isPresenceChannelsReady",
        "",
        "privateChatEvents",
        "[Ljava/lang/String;",
        "presenceChannelName",
        "Ljava/lang/String;",
        "getPresenceChannelName$beacon_release",
        "()Ljava/lang/String;",
        "setPresenceChannelName$beacon_release",
        "getPresenceChannelName$beacon_release$annotations",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "logExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "com/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1",
        "connectionEventListener",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;",
        "Lcom/helpscout/beacon/a/b/c/b/f;",
        "chatRepository",
        "Lcom/helpscout/beacon/a/b/c/b/f;",
        "Lcom/helpscout/beacon/internal/presentation/common/m;",
        "triggerThrottler",
        "Lcom/helpscout/beacon/internal/presentation/common/m;",
        "privateChannelName",
        "Lcom/pusher/client/Pusher;",
        "pusher",
        "Lcom/pusher/client/Pusher;",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;",
        "pusherAuthorizer",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;",
        "presenceChatEvents",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;",
        "presenceListener",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "backgroundScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;",
        "privateListener",
        "Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;",
        "Lcom/helpscout/beacon/a/a/b;",
        "Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventWithUserApiWrapper;",
        "realTimeUserParser",
        "Lcom/helpscout/beacon/a/a/b;",
        "Lcom/helpscout/beacon/a/a/a;",
        "parser",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lkotlinx/coroutines/Job;",
        "job",
        "<init>",
        "(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;Lcom/pusher/client/Pusher;Lcom/helpscout/beacon/a/a/a;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;Lcom/helpscout/beacon/internal/presentation/common/m;)V",
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
.field private final backgroundScope:Lkotlinx/coroutines/CoroutineScope;

.field private final chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final connectionEventListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;

.field private final logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private presenceChannelName:Ljava/lang/String;

.field private final presenceChatEvents:[Ljava/lang/String;

.field private final presenceListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;

.field private privateChannelName:Ljava/lang/String;

.field private final privateChatEvents:[Ljava/lang/String;

.field private final privateListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;

.field private final pusher:Lcom/pusher/client/Pusher;

.field private final pusherAuthorizer:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;

.field private final realTimeUserParser:Lcom/helpscout/beacon/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/beacon/a/a/b<",
            "Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventWithUserApiWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final triggerThrottler:Lcom/helpscout/beacon/internal/presentation/common/m;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;Lcom/pusher/client/Pusher;Lcom/helpscout/beacon/a/a/a;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;Lcom/helpscout/beacon/internal/presentation/common/m;)V
    .locals 1

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherAuthorizer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusher"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerThrottler"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusherAuthorizer:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iput-object p9, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->triggerThrottler:Lcom/helpscout/beacon/internal/presentation/common/m;

    const-class p1, Lcom/helpscout/beacon/internal/data/realtime/RealTimeEventWithUserApiWrapper;

    invoke-interface {p6, p1}, Lcom/helpscout/beacon/a/a/a;->a(Ljava/lang/Class;)Lcom/helpscout/beacon/a/a/b;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->realTimeUserParser:Lcom/helpscout/beacon/a/a/b;

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$$special$$inlined$CoroutineExceptionHandler$1;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->logExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p7, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p8}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    const-string p1, ""

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChannelName:Ljava/lang/String;

    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/String;

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->MESSAGE_UPDATED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p1, p4

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->EVENT_ADDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x2

    aput-object p2, p1, p5

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CHAT_ENDED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p6, 0x3

    aput-object p2, p1, p6

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->CUSTOMER_INACTIVE:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p7, 0x4

    aput-object p2, p1, p7

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChatEvents:[Ljava/lang/String;

    new-array p1, p6, [Ljava/lang/String;

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->AGENT_JOINED:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p3

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p4

    sget-object p2, Lcom/helpscout/beacon/internal/data/realtime/EventType;->USER_STOPPED_TYPING:Lcom/helpscout/beacon/internal/data/realtime/EventType;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/EventType;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, p5

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChatEvents:[Ljava/lang/String;

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->connectionEventListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;Lcom/pusher/client/Pusher;Lcom/helpscout/beacon/a/a/a;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;Lcom/helpscout/beacon/internal/presentation/common/m;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    :goto_1
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/m;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/helpscout/beacon/internal/presentation/common/m;-><init>(J)V

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p9

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v11}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;-><init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;Lcom/pusher/client/Pusher;Lcom/helpscout/beacon/a/a/a;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;Lcom/helpscout/beacon/internal/presentation/common/m;)V

    return-void
.end method

.method public static final synthetic access$getChatRepository$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/helpscout/beacon/a/b/c/b/f;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->chatRepository:Lcom/helpscout/beacon/a/b/c/b/f;

    return-object p0
.end method

.method public static final synthetic access$getPrivateChannelName$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPusher$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/pusher/client/Pusher;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    return-object p0
.end method

.method public static final synthetic access$getRealTimeUserParser$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/helpscout/beacon/a/a/b;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->realTimeUserParser:Lcom/helpscout/beacon/a/a/b;

    return-object p0
.end method

.method public static final synthetic access$onConnected(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)V
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->onConnected()V

    return-void
.end method

.method public static final synthetic access$setPrivateChannelName$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChannelName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$subscribeToPresenceChannel(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->subscribeToPresenceChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$subscribeToPrivateChannel(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->subscribeToPrivateChannel(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getPresenceChannelName$beacon_release$annotations()V
    .locals 0

    return-void
.end method

.method private final isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->getConnection()Lcom/pusher/client/connection/Connection;

    move-result-object v0

    const-string v1, "pusher.connection"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/pusher/client/connection/Connection;->getState()Lcom/pusher/client/connection/ConnectionState;

    move-result-object v0

    sget-object v1, Lcom/pusher/client/connection/ConnectionState;->CONNECTED:Lcom/pusher/client/connection/ConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final onConnected()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Pusher Connected. Next: authenticate and subscribe to private and presence channels"

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->requestAuthTokensAndSubscribe()V

    return-void
.end method

.method private final requestAuthTokensAndSubscribe()V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->backgroundScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final resetAuthAndListenerErrors()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusherAuthorizer:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->resetAuthErrorFlags()V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;->setAuthError(Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->setAuthError(Z)V

    return-void
.end method

.method private final subscribeToPresenceChannel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0, p1}, Lcom/pusher/client/Pusher;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChatEvents:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/pusher/client/Pusher;->subscribePresence(Ljava/lang/String;Lcom/pusher/client/channel/PresenceChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "presenceChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSubscribed? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/pusher/client/channel/PresenceChannel;->isSubscribed()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final subscribeToPrivateChannel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0, p1}, Lcom/pusher/client/Pusher;->getPrivateChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChatEvents:[Ljava/lang/String;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/pusher/client/Pusher;->subscribePrivate(Ljava/lang/String;Lcom/pusher/client/channel/PrivateChannelEventListener;[Ljava/lang/String;)Lcom/pusher/client/channel/PrivateChannel;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "privateChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isSubscribed? "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/pusher/client/channel/PrivateChannel;->isSubscribed()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 5

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->connectionEventListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$connectionEventListener$1;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/pusher/client/connection/ConnectionState;

    sget-object v3, Lcom/pusher/client/connection/ConnectionState;->ALL:Lcom/pusher/client/connection/ConnectionState;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/pusher/client/Pusher;->connect(Lcom/pusher/client/connection/ConnectionEventListener;[Lcom/pusher/client/connection/ConnectionState;)V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    invoke-virtual {v0}, Lcom/pusher/client/Pusher;->disconnect()V

    const-string v0, ""

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateChannelName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->resetAuthAndListenerErrors()V

    return-void
.end method

.method public final getPresenceChannelName$beacon_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public final isPresenceChannelsReady()Z
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/pusher/client/Pusher;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusher:Lcom/pusher/client/Pusher;

    iget-object v3, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/pusher/client/Pusher;->getPresenceChannel(Ljava/lang/String;)Lcom/pusher/client/channel/PresenceChannel;

    move-result-object v0

    const-string v3, "pusher.getPresenceChannel(presenceChannelName)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/pusher/client/channel/PresenceChannel;->isSubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final refreshConnectionIfNeeded$beacon_release()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->pusherAuthorizer:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherAuthorizer;->hasAuthErrorOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPresenceChannelEventListener;->getAuthError()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->privateListener:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherPrivateChannelEventListener;->getAuthError()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Re-Auth Pusher due to auth error"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->requestAuthTokensAndSubscribe()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->connect()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final sendUserTyping(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V
    .locals 2

    const-string v0, "customer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->triggerThrottler:Lcom/helpscout/beacon/internal/presentation/common/m;

    new-instance v1, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$sendUserTyping$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/m;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setPresenceChannelName$beacon_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->presenceChannelName:Ljava/lang/String;

    return-void
.end method
