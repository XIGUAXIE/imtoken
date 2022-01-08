.class final Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.conversations.ConversationsReducer$showPreviousMessages$1"
    f = "ConversationsReducer.kt"
    i = {}
    l = {
        0x31
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->c:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->c:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;

    invoke-direct {v0, v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->a:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->c:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;->a:Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f$e;

    invoke-virtual {p1, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->c:Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer;)Lcom/helpscout/beacon/a/c/e/i/d;

    move-result-object v1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/conversations/ConversationsReducer$g;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, p0, v2, v4}, Lcom/helpscout/beacon/a/c/e/i/d;->a(Lcom/helpscout/beacon/a/c/e/i/d;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
