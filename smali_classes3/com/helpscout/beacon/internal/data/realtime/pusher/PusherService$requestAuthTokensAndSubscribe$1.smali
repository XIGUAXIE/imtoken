.class final Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->requestAuthTokensAndSubscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.data.realtime.pusher.PusherService$requestAuthTokensAndSubscribe$1"
    f = "PusherService.kt"
    i = {}
    l = {
        0x5a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$getChatRepository$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Lcom/helpscout/beacon/a/b/c/b/f;

    move-result-object p1

    sget-object v1, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    iput v2, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->label:I

    invoke-virtual {p1, v1, p0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getPusherPresence()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->setPresenceChannelName$beacon_release(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/ChatEnvelopeDB;->getPusherPrivate()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$setPrivateChannelName$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->getPresenceChannelName$beacon_release()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$subscribeToPresenceChannel(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService$requestAuthTokensAndSubscribe$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$getPrivateChannelName$p(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->access$subscribeToPrivateChannel(Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;Ljava/lang/String;)V

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
