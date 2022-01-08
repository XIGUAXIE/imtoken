.class public final Lcom/helpscout/beacon/a/c/e/h/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/c/a;

.field private final b:Lcom/helpscout/beacon/a/b/c/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/c/a;Lcom/helpscout/beacon/a/b/c/a;)V
    .locals 1

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftsProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/i;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/i;->b:Lcom/helpscout/beacon/a/b/c/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/h/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/h/i$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/i$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/i$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/h/i$a;-><init>(Lcom/helpscout/beacon/a/c/e/h/i;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/i;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_1
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/i;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/h/i$a;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/domain/model/ConversationApi;

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/h/i;->b:Lcom/helpscout/beacon/a/b/c/a;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/b/c/a;->b(Ljava/lang/String;)Z

    move-result p1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/f$b;

    invoke-direct {v0, p2, p1}, Lcom/helpscout/beacon/a/c/e/h/f$b;-><init>(Lcom/helpscout/beacon/internal/domain/model/ConversationApi;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/f$a;

    invoke-direct {v0, p1}, Lcom/helpscout/beacon/a/c/e/h/f$a;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method
