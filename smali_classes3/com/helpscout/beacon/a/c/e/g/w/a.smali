.class public final Lcom/helpscout/beacon/a/c/e/g/w/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final b:Lkotlinx/coroutines/CoroutineScope;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final e:Lcom/helpscout/beacon/a/b/c/b/h;

.field private f:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/h;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "chatEventRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->e:Lcom/helpscout/beacon/a/b/c/b/h;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->f:Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/helpscout/beacon/a/c/e/g/w/a$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/g/w/a$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p4, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/h;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-static {p5, p4, p5}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p5

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/a/c/e/g/w/a;-><init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/a/b/c/b/h;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/c/e/g/w/a;)Lcom/helpscout/beacon/a/b/c/b/c;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;
    .locals 11

    new-instance v10, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    sget-object v2, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;->isTypingMessage:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;

    const-string v1, "AGENT_IS_TYPING_EVENT_ID"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x68

    const/4 v9, 0x0

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;-><init>(Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventType;Ljava/lang/String;Ljava/lang/String;Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method


# virtual methods
.method final synthetic a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->f:Lkotlinx/coroutines/Job;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lcom/helpscout/beacon/a/c/e/g/w/a$b;

    invoke-direct {v5, p0, v0}, Lcom/helpscout/beacon/a/c/e/g/w/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/a;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->f:Lkotlinx/coroutines/Job;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/c/e/g/w/a;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/a/c/e/g/w/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/w/a$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/w/a$c;-><init>(Lcom/helpscout/beacon/a/c/e/g/w/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/w/a;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->d:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->d:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    if-eqz p1, :cond_7

    iget-object v6, v2, Lcom/helpscout/beacon/a/c/e/g/w/a;->e:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {v6, p1, v5}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Z)Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-direct {v2, p1}, Lcom/helpscout/beacon/a/c/e/g/w/a;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object p1

    iget-object v5, v2, Lcom/helpscout/beacon/a/c/e/g/w/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    sget-object v6, Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;->LOCAL_ONLY:Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    invoke-virtual {v5, p1, v6, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/w/a$c;->b:I

    invoke-virtual {v2, v0}, Lcom/helpscout/beacon/a/c/e/g/w/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->f:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/w/a;->c:Lcom/helpscout/beacon/a/b/c/b/c;

    const-string v1, "AGENT_IS_TYPING_EVENT_ID"

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
