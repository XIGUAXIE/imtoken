.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Ljava/lang/String;Z)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$createChat$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x152,
        0x157,
        0x15b,
        0x161,
        0x162,
        0x163,
        0x167,
        0x169,
        0x173
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->d:Z

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->d:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v8, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :pswitch_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$f;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    iput v11, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_0

    return-object v9

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v13, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->CHAT_CREATION_UPDATE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1de

    const/16 v23, 0x0

    invoke-static/range {v12 .. v23}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v2

    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x2

    iput v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    move-object/from16 v5, p0

    invoke-static/range {v1 .. v7}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_1

    return-object v9

    :cond_1
    :goto_1
    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->q(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/q;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->SUBJECT:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    const/4 v3, 0x3

    iput v3, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v1, v0, v2, v8}, Lcom/helpscout/beacon/a/c/e/g/q;->a(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2

    return-object v9

    :cond_2
    :goto_2
    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v0, v11, v8}, Lcom/helpscout/beacon/a/c/e/g/h;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3

    return-object v9

    :cond_3
    :goto_3
    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->h(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/e;

    move-result-object v0

    iget-boolean v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->d:Z

    const/4 v2, 0x5

    iput v2, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v0, v1, v8}, Lcom/helpscout/beacon/a/c/e/g/e;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4

    return-object v9

    :cond_4
    :goto_4
    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v0, v10, v8}, Lcom/helpscout/beacon/a/c/e/g/h;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    return-object v9

    :cond_5
    :goto_5
    iget-object v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    sget-object v12, Lcom/helpscout/beacon/internal/presentation/ui/chat/i;->CHAT_CREATION_UPDATE:Lcom/helpscout/beacon/internal/presentation/ui/chat/i;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1de

    const/16 v22, 0x0

    invoke-static/range {v11 .. v22}, Lcom/helpscout/beacon/internal/presentation/ui/chat/h;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/h;Lcom/helpscout/beacon/internal/presentation/ui/chat/i;Ljava/util/List;Ljava/util/List;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/a;ZZZZLcom/helpscout/beacon/internal/presentation/ui/chat/h$a;ILjava/lang/Object;)Lcom/helpscout/beacon/internal/presentation/ui/chat/h;

    move-result-object v2

    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v0, 0x7

    iput v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    move-object/from16 v5, p0

    invoke-static/range {v1 .. v7}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState$default(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v9, :cond_7

    return-object v9

    :goto_6
    iget-object v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;

    const/4 v3, 0x0

    invoke-direct {v2, v8, v0, v3}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)V

    const/16 v0, 0x8

    iput v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-static {v1, v2, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_6

    return-object v9

    :cond_6
    :goto_7
    iget-object v0, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->l(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/h;

    move-result-object v0

    const/16 v1, 0x9

    iput v1, v8, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$e;->a:I

    invoke-virtual {v0, v10, v8}, Lcom/helpscout/beacon/a/c/e/g/h;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    return-object v9

    :cond_7
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
