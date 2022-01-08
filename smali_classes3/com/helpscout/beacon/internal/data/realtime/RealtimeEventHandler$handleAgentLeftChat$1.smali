.class final Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->handleAgentLeftChat(Ljava/lang/String;)V
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
    c = "com.helpscout.beacon.internal.data.realtime.RealtimeEventHandler$handleAgentLeftChat$1"
    f = "RealtimeEventHandler.kt"
    i = {}
    l = {
        0x48,
        0x4a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

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

    new-instance p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;-><init>(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->access$getChatRepository$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/b/c/b/f;

    move-result-object p1

    iput v3, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->label:I

    invoke-virtual {p1, p0}, Lcom/helpscout/beacon/a/b/c/b/f;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Agent left "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->access$getHelpBot$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/b/b;

    move-result-object v1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, ""

    :goto_1
    iput v2, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/helpscout/beacon/a/c/b/b;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler$handleAgentLeftChat$1;->this$0:Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;->access$getChatState$p(Lcom/helpscout/beacon/internal/data/realtime/RealtimeEventHandler;)Lcom/helpscout/beacon/a/c/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/b/a;->a()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
