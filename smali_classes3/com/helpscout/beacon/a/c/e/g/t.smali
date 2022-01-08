.class public final Lcom/helpscout/beacon/a/c/e/g/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/c;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/g;

.field private final c:Lcom/helpscout/beacon/a/b/c/b/h;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/c;Lcom/helpscout/beacon/a/b/c/b/g;Lcom/helpscout/beacon/a/b/c/b/h;)V
    .locals 1

    const-string v0, "chatEventRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatUserRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/t;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/t;->b:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/t;->c:Lcom/helpscout/beacon/a/b/c/b/h;

    return-void
.end method


# virtual methods
.method public final a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/helpscout/beacon/a/c/e/g/t$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/t$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/t$a;

    invoke-direct {v0, p0, p3}, Lcom/helpscout/beacon/a/c/e/g/t$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/t;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->b:I

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
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->d:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/e/g/t;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/t;->b:Lcom/helpscout/beacon/a/b/c/b/g;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->b:I

    invoke-virtual {p3, p1, p2, v0}, Lcom/helpscout/beacon/a/b/c/b/g;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p3, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    const/4 p2, 0x0

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/t$a;->b:I

    invoke-virtual {p1, p3, v0}, Lcom/helpscout/beacon/a/c/e/g/t;->a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method final synthetic a(Lcom/helpscout/beacon/internal/data/local/db/UserDB;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/local/db/UserDB;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/t$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/t$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/t$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/t$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/t;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/Iterator;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    check-cast v5, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    check-cast v6, Lcom/helpscout/beacon/a/c/e/g/t;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->g:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    check-cast v6, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v7, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    check-cast v7, Lcom/helpscout/beacon/a/c/e/g/t;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/local/db/UserDB;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/t;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v2

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/t;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    invoke-virtual {p2, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, p0

    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v5, p1

    move-object p1, p2

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;

    iget-object v7, v6, Lcom/helpscout/beacon/a/c/e/g/t;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/helpscout/beacon/internal/data/local/db/UserDB;->getId()J

    move-result-wide v9

    iput-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->f:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->h:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->a(Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6

    return-object v1

    :cond_6
    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    move-object v2, p1

    move-object p1, p2

    :goto_3
    new-instance p2, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;

    invoke-direct {p2, p1, v6}, Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;-><init>(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDB;Lcom/helpscout/beacon/internal/data/local/db/UserDB;)V

    iget-object p1, v7, Lcom/helpscout/beacon/a/c/e/g/t;->c:Lcom/helpscout/beacon/a/b/c/b/h;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/a/b/c/b/h;->a(Lcom/helpscout/beacon/internal/data/local/db/ChatEventDao$EventFull;)Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;

    move-result-object p1

    iget-object p2, v7, Lcom/helpscout/beacon/a/c/e/g/t;->a:Lcom/helpscout/beacon/a/b/c/b/c;

    iput-object v7, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->d:Ljava/lang/Object;

    iput-object v6, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->e:Ljava/lang/Object;

    iput-object v5, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->f:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->g:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->h:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/t$b;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/c;->c(Lcom/helpscout/beacon/internal/data/remote/chat/ChatEventApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object p1, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Uploaded "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " events now that chat has been created"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
