.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->e()V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$initChat$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x98,
        0x9a,
        0x9a,
        0x9b,
        0x9b,
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-direct {p1, v0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_2
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;

    move-result-object p1

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {p1, v4, p0}, Lcom/helpscout/beacon/a/c/e/g/h;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/k;

    move-result-object p1

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {p1, v4, p0}, Lcom/helpscout/beacon/a/c/e/g/k;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    iput-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {v1, p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->m(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/k;

    move-result-object p1

    iput-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {p1, v2, p0}, Lcom/helpscout/beacon/a/c/e/g/k;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_3
    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/k$a;

    iput-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->a:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {v1, p1, p0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/a/c/e/g/k$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;

    move-result-object p1

    const/4 v1, 0x6

    iput v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$m;->b:I

    invoke-virtual {p1, v2, p0}, Lcom/helpscout/beacon/a/c/e/g/h;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
