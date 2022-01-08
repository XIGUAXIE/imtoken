.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$notifyChatEnded$1$1"
    f = "ChatReducer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->a:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object p1, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getChatConfig()Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/ChatConfigApi;->getRatingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v1, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    instance-of v1, v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a$c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->c()Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->RATE_CHAT:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v11, 0x7e

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->u(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->ENDED:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$n;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/helpscout/beacon/internal/presentation/ui/chat/h$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xfe

    :goto_0
    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;ZILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
