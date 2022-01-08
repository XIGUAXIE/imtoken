.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->d()V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$handleSelectAttachment$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x143
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->g(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/c;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/helpscout/beacon/a/c/e/g/c;->b(Ljava/util/List;)Lcom/helpscout/beacon/a/c/e/g/c$a;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v3, Lcom/helpscout/beacon/a/c/e/g/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$a;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$i;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$i;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/helpscout/beacon/a/c/e/g/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/g/c$a$b;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$e;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$e;

    :goto_0
    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$k;->a:I

    invoke-virtual {v1, p1, v3, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
