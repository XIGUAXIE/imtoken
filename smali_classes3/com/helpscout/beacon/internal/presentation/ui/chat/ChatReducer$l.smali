.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Landroid/net/Uri;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.chat.ChatReducer$handleSelectedAttachment$1"
    f = "ChatReducer.kt"
    i = {}
    l = {
        0x12e,
        0x130,
        0x133,
        0x136,
        0x138
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->c:Landroid/net/Uri;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->c:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$d;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    iput v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    invoke-virtual {p1, v1, v7, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/internal/presentation/common/a;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->c:Landroid/net/Uri;

    iput v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    invoke-virtual {p1, v1, p0}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/d;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->p(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lcom/helpscout/beacon/a/c/e/g/p;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->d()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "attachment.getOriginalUriAsUri()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/e/a/d;->b()La/a/a/a/a/a;

    move-result-object p1

    iput v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    invoke-virtual {v1, v5, p1, p0}, Lcom/helpscout/beacon/a/c/e/g/p;->a(Landroid/net/Uri;La/a/a/a/a/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/g$c;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    iput v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    invoke-virtual {p1, v1, v4, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_9

    return-object v0

    :goto_3
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$b;

    invoke-direct {v3, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/g$b;-><init>(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;->s(Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatReducer$l;->a:I

    invoke-virtual {v1, v3, p1, p0}, Lcom/helpscout/common/mvi/MviReducer;->postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
