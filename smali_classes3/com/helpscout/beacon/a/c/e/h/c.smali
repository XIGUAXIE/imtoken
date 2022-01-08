.class public final Lcom/helpscout/beacon/a/c/e/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/c;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpscout/beacon/a/d/e/a/d;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpscout/beacon/a/c/e/h/a;
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/h/c$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/c$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/c$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/h/c$a;-><init>(Lcom/helpscout/beacon/a/c/e/h/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->g:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/d;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v5, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->d:Ljava/lang/Object;

    check-cast v5, Lcom/helpscout/beacon/a/c/e/h/c;

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
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p0

    move-object v2, p1

    move-object v4, p2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/a/d/e/a/d;

    :try_start_1
    iget-object p2, v5, Lcom/helpscout/beacon/a/c/e/h/c;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->d:Ljava/lang/Object;

    iput-object v4, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->f:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->g:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/h/c$a;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Lcom/helpscout/beacon/a/d/e/a/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p2, Ljava/lang/String;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance p2, Lcom/helpscout/beacon/a/c/e/h/a;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/h/a;-><init>(Lcom/helpscout/beacon/a/d/e/a/d;)V

    throw p2

    :cond_4
    return-object v4
.end method
