.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/b/a$a;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$handleChatStateUpdate$3"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0xe5,
        0xea
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

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    iget v0, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->k(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/b/b;

    move-result-object v0

    iput v2, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->a:I

    invoke-virtual {v0, v7}, Lcom/helpscout/beacon/a/c/b/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_3

    return-object v8

    :cond_3
    :goto_0
    iget-object v0, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ON_REMOTE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x19e

    const/16 v20, 0x0

    invoke-static/range {v9 .. v20}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v2

    iget-object v3, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    iput v1, v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$h;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    return-object v8

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
