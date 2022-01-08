.class public final Lcom/helpscout/beacon/a/c/e/h/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/a/c/e/h/c;

.field private final c:Lcom/helpscout/beacon/a/b/c/a;

.field private final d:Lcom/helpscout/beacon/internal/presentation/common/a;

.field private final e:Lcom/helpscout/beacon/a/d/d/f;

.field private final f:Lcom/helpscout/beacon/a/c/e/c;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/a/c/e/h/c;Lcom/helpscout/beacon/a/b/c/a;Lcom/helpscout/beacon/internal/presentation/common/a;Lcom/helpscout/beacon/a/d/d/f;Lcom/helpscout/beacon/a/c/e/c;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUploaderUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftsProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushSubscriptionDelegate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifyCustomerUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/m;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/m;->b:Lcom/helpscout/beacon/a/c/e/h/c;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/h/m;->c:Lcom/helpscout/beacon/a/b/c/a;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/h/m;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    iput-object p5, p0, Lcom/helpscout/beacon/a/c/e/h/m;->e:Lcom/helpscout/beacon/a/d/d/f;

    iput-object p6, p0, Lcom/helpscout/beacon/a/c/e/h/m;->f:Lcom/helpscout/beacon/a/c/e/c;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/m;->c:Lcom/helpscout/beacon/a/b/c/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/a;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p4, Lcom/helpscout/beacon/a/c/e/h/m$b;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/m$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/m$b;

    invoke-direct {v0, p0, p4}, Lcom/helpscout/beacon/a/c/e/h/m$b;-><init>(Lcom/helpscout/beacon/a/c/e/h/m;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/h/m;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/h/m;

    :try_start_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    check-cast p2, Lcom/helpscout/beacon/a/c/e/h/m;

    :try_start_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->f:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    check-cast p3, Lcom/helpscout/beacon/a/c/e/h/m;

    :try_start_4
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v9, p3

    move-object p3, p2

    move-object p2, v9

    goto :goto_1

    :cond_6
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_5
    iget-object p4, p0, Lcom/helpscout/beacon/a/c/e/h/m;->b:Lcom/helpscout/beacon/a/c/e/h/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->f:Ljava/lang/Object;

    iput v7, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    invoke-virtual {p4, p3, v0}, Lcom/helpscout/beacon/a/c/e/h/c;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_7

    return-object v1

    :cond_7
    move-object p3, p2

    move-object p2, p0

    :goto_1
    check-cast p4, Ljava/util/List;

    iget-object v2, p2, Lcom/helpscout/beacon/a/c/e/h/m;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->f:Ljava/lang/Object;

    iput v6, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    invoke-interface {v2, p1, p3, p4, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    return-object v1

    :cond_8
    :goto_2
    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/c/e/h/m;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    return-object v1

    :cond_9
    :goto_3
    iget-object p3, p2, Lcom/helpscout/beacon/a/c/e/h/m;->f:Lcom/helpscout/beacon/a/c/e/c;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    invoke-virtual {p3, v0}, Lcom/helpscout/beacon/a/c/e/c;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    check-cast p4, Lcom/helpscout/beacon/a/c/e/c$a;

    sget-object p3, Lcom/helpscout/beacon/a/c/e/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/c$a$a;

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p2, p2, Lcom/helpscout/beacon/a/c/e/h/m;->e:Lcom/helpscout/beacon/a/d/d/f;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->d:Ljava/lang/Object;

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/h/m$b;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/a/d/d/f;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    :goto_5
    sget-object p1, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$d;->a:Lcom/helpscout/beacon/internal/presentation/ui/reply/b$d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :goto_6
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$b;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/reply/b$b;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_7
    return-object p1
.end method

.method final synthetic a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/h/m$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/m$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/m$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/h/m$a;-><init>(Lcom/helpscout/beacon/a/c/e/h/m;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/m;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/m;->d:Lcom/helpscout/beacon/internal/presentation/common/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/h/m$a;->b:I

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/h/m;->a(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
