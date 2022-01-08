.class final Lcom/helpscout/common/mvi/MviReducer$runAsync$6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MviReducer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviReducer;->runAsync(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMviReducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MviReducer.kt\ncom/helpscout/common/mvi/MviReducer$runAsync$6\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u000c\u0008\u0002\u0010\u0004*\u00060\u0005j\u0002`\u0006\"\u000c\u0008\u0003\u0010\u0007*\u00060\u0005j\u0002`\u0008\"\u000c\u0008\u0004\u0010\t*\u00060\u0005j\u0002`\n*\u00020\u000bH\u008a@\u00a2\u0006\u0004\u0008\u000c\u0010\r"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.common.mvi.MviReducer$runAsync$6"
    f = "MviReducer.kt"
    i = {}
    l = {
        0x88,
        0x89
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $action:Lkotlin/jvm/functions/Function1;

.field final synthetic $map:Lkotlin/jvm/functions/Function1;

.field final synthetic $onResult:Lkotlin/jvm/functions/Function1;

.field label:I

.field final synthetic this$0:Lcom/helpscout/common/mvi/MviReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/common/mvi/MviReducer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    iput-object p2, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$action:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$map:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$onResult:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;

    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    iget-object v2, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$action:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$map:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$onResult:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;-><init>(Lcom/helpscout/common/mvi/MviReducer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 135
    iget v1, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviReducer;->getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/helpscout/common/coroutines/DispatcherProvider;->io()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/helpscout/common/mvi/MviReducer$runAsync$6$1;

    invoke-direct {v1, p0, v2}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6$1;-><init>(Lcom/helpscout/common/mvi/MviReducer$runAsync$6;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput v4, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 137
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/helpscout/common/coroutines/DispatcherProvider;->default()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/helpscout/common/mvi/MviReducer$runAsync$6$invokeSuspend$$inlined$let$lambda$1;

    invoke-direct {v4, p1, v2, p0}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6$invokeSuspend$$inlined$let$lambda$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/helpscout/common/mvi/MviReducer$runAsync$6;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v3, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 138
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;->$onResult:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
