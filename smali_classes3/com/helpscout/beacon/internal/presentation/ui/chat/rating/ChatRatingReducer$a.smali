.class final Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;->b(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/helpscout/beacon/a/c/e/g/l$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.helpscout.beacon.internal.presentation.ui.chat.rating.ChatRatingReducer$sendChatRating$1"
    f = "ChatRatingReducer.kt"
    i = {}
    l = {
        0x6f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;

    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviReducer;->getLastViewState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h;->d()Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/h$a;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v1, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/l$a;->NEGATIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;

    goto :goto_0

    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/l$a;->NEUTRAL:Lcom/helpscout/beacon/a/c/e/g/l$a;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/helpscout/beacon/a/c/e/g/l$a;->POSITIVE:Lcom/helpscout/beacon/a/c/e/g/l$a;

    :goto_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->b:Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;

    invoke-static {v1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer;)Lcom/helpscout/beacon/a/c/e/g/l;

    move-result-object v1

    iget-object v3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->c:Ljava/lang/String;

    iput v2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/rating/ChatRatingReducer$a;->a:I

    invoke-virtual {v1, p1, v3, p0}, Lcom/helpscout/beacon/a/c/e/g/l;->a(Lcom/helpscout/beacon/a/c/e/g/l$a;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/l$b;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
