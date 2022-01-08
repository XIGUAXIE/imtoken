.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e(Ljava/lang/String;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$sendMessage$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x11e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->c:Ljava/lang/String;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->a:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->q(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/q;

    move-result-object v3

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->c:Ljava/lang/String;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$v;->a:I

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v3 .. v8}, Lcom/helpscout/beacon/a/c/e/g/q;->a(Lcom/helpscout/beacon/a/c/e/g/q;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
