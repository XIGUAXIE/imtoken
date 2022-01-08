.class public final Lcom/helpscout/beacon/a/c/e/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/j/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/b/a;

.field private final c:Lcom/helpscout/beacon/a/c/e/c;

.field private final d:Lcom/helpscout/beacon/a/c/e/g/a;

.field private final e:Lcom/helpscout/beacon/a/c/e/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/c/e/c;Lcom/helpscout/beacon/a/c/e/g/a;Lcom/helpscout/beacon/a/c/e/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifyCustomerUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatAgentAvailabilityUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getConfigUseCase"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/j/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/j/a;->b:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/j/a;->c:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/j/a;->d:Lcom/helpscout/beacon/a/c/e/g/a;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/j/a;->e:Lcom/helpscout/beacon/a/c/e/a;

    return-void
.end method

.method private final a(ZLcom/helpscout/beacon/a/c/e/j/a$a;)Lcom/helpscout/beacon/a/c/e/j/a$a;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/helpscout/beacon/a/c/e/j/a$a$f;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$f;

    :goto_0
    return-object p2
.end method


# virtual methods
.method final synthetic a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
            "Lcom/helpscout/beacon/a/c/c/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/j/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/j/a$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/j/a$d;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/j/a$d;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/j/a$d;-><init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/j/a;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/j/a;->e:Lcom/helpscout/beacon/a/c/e/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->b:I

    invoke-virtual {p3, p2, v0}, Lcom/helpscout/beacon/a/c/e/a;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p2, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a;

    instance-of v2, p3, Lcom/helpscout/beacon/a/c/e/a$a$b;

    if-eqz v2, :cond_6

    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a$b;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/a$a$b;->a()Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    move-result-object p3

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/j/a$d;->b:I

    invoke-virtual {p2, p1, p3, v0}, Lcom/helpscout/beacon/a/c/e/j/a;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p3, Lcom/helpscout/beacon/a/c/e/j/a$a;

    goto :goto_3

    :cond_6
    instance-of p1, p3, Lcom/helpscout/beacon/a/c/e/a$a$a;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/helpscout/beacon/a/c/e/j/a$a$a;

    check-cast p3, Lcom/helpscout/beacon/a/c/e/a$a$a;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/e/a$a$a;->a()Ljava/lang/Exception;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/j/a$a$a;-><init>(Ljava/lang/Throwable;)V

    move-object p3, p1

    :goto_3
    return-object p3

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method final synthetic a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
            "Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/j/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/j/a$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/j/a$e;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$e;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$e;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/j/a$e;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/j/a$e;-><init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    iget-object p1, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    iget-object v1, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->d:Ljava/lang/Object;

    check-cast v1, Lcom/helpscout/beacon/a/c/e/j/a;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/j/a;->b:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p3}, Lcom/helpscout/beacon/a/c/b/a;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p1, Lcom/helpscout/beacon/a/c/e/j/a$a$c;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$c;

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/j/a;->c:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p0, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->d:Ljava/lang/Object;

    iput-object p1, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->e:Ljava/lang/Object;

    iput-object p2, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->f:Ljava/lang/Object;

    iput v3, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->b:I

    invoke-virtual {p3, v6}, Lcom/helpscout/beacon/a/c/e/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessagingEnabled()Z

    move-result v3

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getDocsEnabled()Z

    move-result v4

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->getMessaging()Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/MessagingConfigApi;->getChatEnabled()Z

    move-result v5

    const/4 p2, 0x0

    iput-object p2, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->d:Ljava/lang/Object;

    iput-object p2, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->e:Ljava/lang/Object;

    iput-object p2, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->f:Ljava/lang/Object;

    iput v2, v6, Lcom/helpscout/beacon/a/c/e/j/a$e;->b:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/helpscout/beacon/a/c/e/j/a;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    move-object p1, p3

    check-cast p1, Lcom/helpscout/beacon/a/c/e/j/a$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/helpscout/beacon/a/c/e/j/a$a$a;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/j/a$a$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    return-object p1
.end method

.method public final a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/j/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/j/a;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0, p2}, Lcom/helpscout/beacon/BeaconDatastore;->setSignature(Ljava/lang/String;)V

    sget-object p2, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/a/c/e/j/a;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;ZZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
            "ZZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/j/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lcom/helpscout/beacon/a/c/e/j/a$c;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/helpscout/beacon/a/c/e/j/a$c;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/j/a$c;

    invoke-direct {v0, p0, p5}, Lcom/helpscout/beacon/a/c/e/j/a$c;-><init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lcom/helpscout/beacon/a/c/e/j/a$c;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->getScreen()Lcom/helpscout/beacon/model/BeaconScreens;

    move-result-object p5

    sget-object v2, Lcom/helpscout/beacon/a/c/e/j/b;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v2, p5

    if-eq p5, v3, :cond_7

    const/4 p3, 0x2

    if-eq p5, p3, :cond_6

    const/4 p3, 0x3

    if-eq p5, p3, :cond_5

    const/4 p3, 0x4

    if-ne p5, p3, :cond_4

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/j/a$c;->b:I

    invoke-virtual {p0, p2, p4, v0}, Lcom/helpscout/beacon/a/c/e/j/a;->a(ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p5, Lcom/helpscout/beacon/a/c/e/j/a$a;

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "The "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->getScreen()Lcom/helpscout/beacon/model/BeaconScreens;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " route is handled by the AskAnswers(home) screen."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/a/c/e/j/a$a$e;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$e;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/helpscout/beacon/a/c/e/j/a$a$d;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$d;

    :goto_2
    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/a/c/e/j/a;->a(ZLcom/helpscout/beacon/a/c/e/j/a$a;)Lcom/helpscout/beacon/a/c/e/j/a$a;

    move-result-object p5

    goto :goto_3

    :cond_7
    new-instance p2, Lcom/helpscout/beacon/a/c/e/j/a$a$b;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->getArgs()Ljava/util/List;

    move-result-object p1

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/j/a$a$b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3, p2}, Lcom/helpscout/beacon/a/c/e/j/a;->a(ZLcom/helpscout/beacon/a/c/e/j/a$a;)Lcom/helpscout/beacon/a/c/e/j/a$a;

    move-result-object p5

    :goto_3
    return-object p5
.end method

.method final synthetic a(ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/j/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/j/a$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/j/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/j/a$b;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/j/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->e:Z

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/j/a;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/j/a;->d:Lcom/helpscout/beacon/a/c/e/g/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->d:Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->e:Z

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/j/a$b;->b:I

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/a/c/e/g/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p2, p0

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    sget-object p1, Lcom/helpscout/beacon/a/c/e/j/a$a$c;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$c;

    goto :goto_2

    :cond_4
    sget-object p3, Lcom/helpscout/beacon/a/c/e/j/a$a$d;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$d;

    invoke-direct {p2, p1, p3}, Lcom/helpscout/beacon/a/c/e/j/a;->a(ZLcom/helpscout/beacon/a/c/e/j/a$a;)Lcom/helpscout/beacon/a/c/e/j/a$a;

    move-result-object p1

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/a/c/e/j/a$a$f;->a:Lcom/helpscout/beacon/a/c/e/j/a$a$f;

    :goto_2
    return-object p1
.end method
