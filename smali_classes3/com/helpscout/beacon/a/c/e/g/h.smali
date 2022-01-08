.class public final Lcom/helpscout/beacon/a/c/e/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;)V
    .locals 1

    const-string v0, "chatEventRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/h;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
    .locals 11

    new-instance v10, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    sget-object v0, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->INSTANCE:Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/data/local/db/DefaultUsers;->getSYSTEM_AUTHOR_API()Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object v5

    const-string v1, "HELP_BOT_IS_TYPING_EVENT_ID"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x68

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method


# virtual methods
.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/helpscout/beacon/a/c/e/g/h;->a()Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object v0

    iget-object v1, p0, Lcom/helpscout/beacon/a/c/e/g/h;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    invoke-virtual {v1, v0, v2, p1}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/h$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/h$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/h$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/h$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/h;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/h;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/h;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    const-string p2, "HELP_BOT_IS_TYPING_EVENT_ID"

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p0

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_7

    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/h;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_6
    move-object p1, p0

    :cond_7
    iput-object v3, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/h$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/h;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/h;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    const-string v1, "HELP_BOT_IS_TYPING_EVENT_ID"

    invoke-virtual {v0, v1, p1}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
