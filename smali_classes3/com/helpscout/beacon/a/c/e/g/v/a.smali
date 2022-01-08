.class public final Lcom/helpscout/beacon/a/c/e/g/v/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/d/d/j/a;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

.field private final d:Lcom/helpscout/beacon/a/b/c/b/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/j/a;Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;Lcom/helpscout/beacon/a/b/c/b/a;)V
    .locals 1

    const-string v0, "chatNotificationDisplayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatActivityForegroundStatusMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatastore"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->d:Lcom/helpscout/beacon/a/b/c/b/a;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/a/d/d/b$c;)V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->c:Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/chat/ChatActivityForegroundStatusMonitor;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring push message with eventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$c;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as chat is in foreground"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->a:Lcom/helpscout/beacon/a/d/d/j/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/d/d/j/a;->a(Lcom/helpscout/beacon/a/d/d/b$c;)V

    :goto_0
    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->d:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {v0}, Lcom/helpscout/beacon/a/b/c/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/d/d/b$c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/d/d/b$c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/v/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/v/a$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/v/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/d/d/b$c;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/v/a;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$c;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/c/e/g/v/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/d/b$c;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$a;->b:I

    invoke-virtual {p0, p2, v0}, Lcom/helpscout/beacon/a/c/e/g/v/a;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/g/v/a;->a(Lcom/helpscout/beacon/a/d/d/b$c;)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Ignoring AgentReply push message has it\'s not for the active chat"

    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/v/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/v/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/v/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/v/a;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/v/a;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, v2, Lcom/helpscout/beacon/a/c/e/g/v/a;->b:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/v/a$b;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_5

    return-object v1

    :catchall_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not add new event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from push to DB"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
