.class final Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.conversation.ConversationReducer$loadMoreConversationThreads$1$1"
    f = "ConversationReducer.kt"
    i = {}
    l = {
        0x91
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->a:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->c(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;)Lcom/helpscout/beacon/a/c/e/h/h;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

    iget-object v3, v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;->c:Ljava/lang/String;

    iget v1, v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;->d:I

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->a:I

    invoke-virtual {p1, v3, v1, p0}, Lcom/helpscout/beacon/a/c/e/h/h;->a(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/c/e/h/g;

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/h/g$b;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/helpscout/beacon/a/d/c/f$c;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;

    iget-object v2, v1, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/h/g$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/h/g$b;->b()Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/helpscout/beacon/internal/domain/model/ConversationThreadsApi;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/conversation/ConversationReducer;Ljava/util/List;Lcom/helpscout/beacon/internal/domain/model/ConversationThreadPreviewApi;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/h/g$b;->a()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/a/d/c/f$c;-><init>(Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/h/g$a;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$c;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/h/g$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/c/e/h/g$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$c;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
