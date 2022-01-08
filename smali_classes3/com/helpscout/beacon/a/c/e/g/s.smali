.class public final Lcom/helpscout/beacon/a/c/e/g/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/b/a;

.field private final b:Lcom/helpscout/beacon/a/b/c/b/f;

.field private final c:Lcom/helpscout/beacon/internal/presentation/common/d;

.field private final d:Lcom/helpscout/beacon/a/c/e/g/o;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/b/a;Lcom/helpscout/beacon/a/b/c/b/f;Lcom/helpscout/beacon/internal/presentation/common/d;Lcom/helpscout/beacon/a/c/e/g/o;)V
    .locals 1

    const-string v0, "chatState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringResolver"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "saveLineItemUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/s;->a:Lcom/helpscout/beacon/a/c/b/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/s;->b:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/s;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    iput-object p4, p0, Lcom/helpscout/beacon/a/c/e/g/s;->d:Lcom/helpscout/beacon/a/c/e/g/o;

    return-void
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/s$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/s$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/s$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/s$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/s;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/s;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/s;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/s;->b:Lcom/helpscout/beacon/a/b/c/b/f;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/helpscout/beacon/a/b/c/b/f;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p2, v2, Lcom/helpscout/beacon/a/c/e/g/s;->d:Lcom/helpscout/beacon/a/c/e/g/o;

    iget-object v4, v2, Lcom/helpscout/beacon/a/c/e/g/s;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    iget-object v5, v2, Lcom/helpscout/beacon/a/c/e/g/s;->c:Lcom/helpscout/beacon/internal/presentation/common/d;

    invoke-virtual {v5}, Lcom/helpscout/beacon/internal/presentation/common/d;->l()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Lcom/helpscout/beacon/internal/presentation/common/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/s$a;->b:I

    invoke-virtual {p2, v4, v0}, Lcom/helpscout/beacon/a/c/e/g/o;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    :goto_3
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/s;->a:Lcom/helpscout/beacon/a/c/b/a;

    invoke-virtual {p2, p1}, Lcom/helpscout/beacon/a/c/b/a;->a(Lcom/helpscout/beacon/internal/data/remote/chat/UserApi;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
