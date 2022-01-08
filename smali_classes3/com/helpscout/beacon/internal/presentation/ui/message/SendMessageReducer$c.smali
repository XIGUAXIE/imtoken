.class final Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->f()V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.message.SendMessageReducer$loadForm$2"
    f = "SendMessageReducer.kt"
    i = {}
    l = {
        0x9a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->a:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    invoke-virtual {p1, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c$a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->b:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;)Lcom/helpscout/beacon/internal/presentation/ui/message/d$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer$c;->c:Lcom/helpscout/beacon/internal/presentation/ui/message/SendMessageReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/message/d$d;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/message/d$d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
