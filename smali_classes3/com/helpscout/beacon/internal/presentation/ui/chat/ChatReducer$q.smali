.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$processInitChatResult$2"
    f = "ChatReducer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

.field final synthetic c:Lcom/helpscout/beacon/a/c/e/g/k$a;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->a:I

    if-nez v1, :cond_3

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

    instance-of v2, v1, Lcom/helpscout/beacon/a/c/e/g/k$a$b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENTS_LOADED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/k$a$b;

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/c/e/g/k$a$b;->a()Ljava/util/List;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfa

    :goto_0
    const/16 v17, 0x0

    invoke-static/range {v6 .. v17}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v2

    invoke-static {v1, v2, v5, v4, v3}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v7, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->AGENT_ASSIGNED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v10

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->c:Lcom/helpscout/beacon/a/c/e/g/k$a;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/k$a$c;

    invoke-virtual {v2}, Lcom/helpscout/beacon/a/c/e/g/k$a$c;->b()Z

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe6

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/helpscout/beacon/a/c/e/g/k$a$a;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$q;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    check-cast v1, Lcom/helpscout/beacon/a/c/e/g/k$a$a;

    invoke-virtual {v1}, Lcom/helpscout/beacon/a/c/e/g/k$a$a;->a()Lcom/helpscout/beacon/a/c/b/a$b;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lcom/helpscout/beacon/a/c/b/a$b;)V

    :cond_2
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
