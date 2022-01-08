.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->c(Ljava/lang/String;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$resendFailedAttachment$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x17d,
        0x181,
        0x185,
        0x185,
        0x185
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->g(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/c;

    move-result-object p1

    iget-object v8, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v8}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v8}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/helpscout/beacon/a/c/e/g/c;->b(Ljava/util/List;)Lcom/helpscout/beacon/a/c/e/g/c$a;

    move-result-object p1

    sget-object v8, Lcom/helpscout/beacon/a/c/e/g/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$a;

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/b/c/b/c;

    move-result-object p1

    iget-object v8, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    iput v7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    invoke-virtual {p1, v8, p0}, Lcom/helpscout/beacon/a/b/c/b/c;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$d;

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/helpscout/beacon/a/c/e/g/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$b;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$e;

    :goto_1
    iget-object v7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    iput-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    iput v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    invoke-virtual {v1, p1, v7, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    iput v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    invoke-virtual {p1, v1, v2, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_8
    :try_start_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t send attachment with id: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Reason: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1, v1, v5}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iput-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->a:Ljava/lang/Object;

    iput v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$s;->b:I

    invoke-virtual {v1, v2, v4, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a

    return-object v0

    :cond_a
    move-object v0, p1

    :goto_5
    throw v0
.end method
