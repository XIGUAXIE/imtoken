.class final Lcom/helpscout/beacon/a/d/d/h/e/b$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/a/d/d/h/e/b;->a(Landroid/content/Intent;)V
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
    c = "com.helpscout.beacon.internal.presentation.push.handler.reply.ConversationNotificationReplyHandler$handleConversationReply$1"
    f = "ConversationNotificationReplyHandler.kt"
    i = {}
    l = {
        0x3a
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/a/d/d/h/e/b;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/a/d/d/h/e/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->b:Lcom/helpscout/beacon/a/d/d/h/e/b;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->d:Ljava/lang/String;

    iput p4, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->e:I

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

    new-instance p1, Lcom/helpscout/beacon/a/d/d/h/e/b$d;

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->b:Lcom/helpscout/beacon/a/d/d/h/e/b;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->d:Ljava/lang/String;

    iget v4, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->e:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/a/d/d/h/e/b$d;-><init>(Lcom/helpscout/beacon/a/d/d/h/e/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/a/d/d/h/e/b$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->a:I

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

    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->b:Lcom/helpscout/beacon/a/d/d/h/e/b;

    invoke-static {p1}, Lcom/helpscout/beacon/a/d/d/h/e/b;->b(Lcom/helpscout/beacon/a/d/d/h/e/b;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance v1, Lcom/helpscout/beacon/a/d/d/h/e/b$d$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/helpscout/beacon/a/d/d/h/e/b$d$a;-><init>(Lcom/helpscout/beacon/a/d/d/h/e/b$d;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->a:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->b:Lcom/helpscout/beacon/a/d/d/h/e/b;

    invoke-static {p1}, Lcom/helpscout/beacon/a/d/d/h/e/b;->a(Lcom/helpscout/beacon/a/d/d/h/e/b;)Lcom/helpscout/beacon/a/d/d/j/b;

    move-result-object p1

    iget v0, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->e:I

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/h/e/b$d;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/helpscout/beacon/a/d/d/j/b;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
