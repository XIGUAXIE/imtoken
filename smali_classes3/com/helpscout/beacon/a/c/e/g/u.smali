.class public final Lcom/helpscout/beacon/a/c/e/g/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/b/a;

.field private final b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;)V
    .locals 1

    const-string v0, "chatState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatApiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/u;->a:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/u;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/a/c/b/a$b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/u;->a:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/a/c/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT:Lcom/helpscout/beacon/a/c/b/a$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/a/c/b/a$b;->USER_END_CHAT_UNASSIGNED:Lcom/helpscout/beacon/a/c/b/a$b;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/u$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/u$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/u$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/u$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/u$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/u$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/u;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/u$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/u$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/u;->a:Lcom/helpscout/beacon/a/c/b/a;

    invoke-direct {p0}, Lcom/helpscout/beacon/a/c/e/g/u;->a()Lcom/helpscout/beacon/a/c/b/a$b;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/helpscout/beacon/a/c/b/a;->a(Lcom/helpscout/beacon/a/c/b/a$b;)V

    :try_start_1
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/u;->b:Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/u$a;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/chat/ChatApiClient;->endChat(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_3

    return-object v1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring error ending chat via API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
