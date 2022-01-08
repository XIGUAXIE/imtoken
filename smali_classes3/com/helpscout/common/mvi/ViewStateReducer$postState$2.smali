.class final Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ViewStateReducer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u000c\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u0004\"\u000c\u0008\u0001\u0010\u0005*\u00060\u0003j\u0002`\u0006\"\u000c\u0008\u0002\u0010\u0007*\u00060\u0003j\u0002`\u0008*\u00020\tH\u008a@\u00a2\u0006\u0004\u0008\n\u0010\u000b"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.helpscout.common.mvi.ViewStateReducer$postState$2"
    f = "ViewStateReducer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $state:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $updateUi:Z

.field label:I

.field final synthetic this$0:Lcom/helpscout/common/mvi/ViewStateReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/common/mvi/ViewStateReducer;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->this$0:Lcom/helpscout/common/mvi/ViewStateReducer;

    iput-object p2, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-boolean p3, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$updateUi:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;

    iget-object v0, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->this$0:Lcom/helpscout/common/mvi/ViewStateReducer;

    iget-object v1, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-boolean v2, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$updateUi:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;-><init>(Lcom/helpscout/common/mvi/ViewStateReducer;Lkotlin/jvm/internal/Ref$ObjectRef;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 77
    iget v0, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->this$0:Lcom/helpscout/common/mvi/ViewStateReducer;

    iget-object v0, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$state:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/helpscout/common/mvi/ViewStateReducer$postState$2;->$updateUi:Z

    invoke-interface {p1, v0, v1}, Lcom/helpscout/common/mvi/ViewStateReducer;->pushStateImmediate(Ljava/lang/Object;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
