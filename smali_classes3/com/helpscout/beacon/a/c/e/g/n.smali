.class public final Lcom/helpscout/beacon/a/c/e/g/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/a/b/c/b/a;

.field private final b:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

.field private final c:Lcom/helpscout/beacon/internal/presentation/common/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/b/c/b/a;Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;Lcom/helpscout/beacon/internal/presentation/common/a;)V
    .locals 1

    const-string v0, "chatDatastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/n;->a:Lcom/helpscout/beacon/a/b/c/b/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/n;->b:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    iput-object p3, p0, Lcom/helpscout/beacon/a/c/e/g/n;->c:Lcom/helpscout/beacon/internal/presentation/common/a;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/n$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/n$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/n$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/n$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/n;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/g/n;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/n;->b:Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->d:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/data/local/db/ChatDatabase;->reset(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/n;->a:Lcom/helpscout/beacon/a/b/c/b/a;

    invoke-interface {p1}, Lcom/helpscout/beacon/a/b/c/b/a;->clear()V

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/g/n;->c:Lcom/helpscout/beacon/internal/presentation/common/a;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/n$a;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
