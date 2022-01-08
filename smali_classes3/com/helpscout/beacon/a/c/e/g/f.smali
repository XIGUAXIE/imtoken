.class public final Lcom/helpscout/beacon/a/c/e/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final b:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;)V
    .locals 1

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pusherService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/f;->a:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/f;->b:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/f$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/f$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/f$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/f$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/f;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->d:Z

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/f;->b:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->isPresenceChannelsReady()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/f;->b:Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;

    iget-object v2, p0, Lcom/helpscout/beacon/a/c/e/g/f;->a:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->e:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->d:Z

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/f$a;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    invoke-virtual {v0, p2, p1}, Lcom/helpscout/beacon/internal/data/realtime/pusher/PusherService;->sendUserTyping(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Z)V

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
