.class final Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Landroid/net/Uri;)V
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
    c = "com.helpscout.beacon.internal.presentation.ui.reply.ComposeReplyReducer$attachmentSelected$1"
    f = "ComposeReplyReducer.kt"
    i = {}
    l = {
        0x54
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

.field final synthetic d:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->d:Landroid/net/Uri;

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

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->d:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;)Lcom/helpscout/beacon/internal/presentation/common/a;

    move-result-object v1

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->d:Landroid/net/Uri;

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->a:Ljava/lang/Object;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->b:I

    invoke-virtual {v1, v3, p0}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/d;

    invoke-static {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;Lcom/helpscout/beacon/a/d/e/a/d;)V
    :try_end_1
    .catch Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer$b;->c:Lcom/helpscout/beacon/internal/presentation/ui/reply/ComposeReplyReducer;

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$a;

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/a$a;-><init>(Lcom/helpscout/beacon/internal/domain/model/AttachmentUploadException;)V

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;->c(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/b;)V

    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
