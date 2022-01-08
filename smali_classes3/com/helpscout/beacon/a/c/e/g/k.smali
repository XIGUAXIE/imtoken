.class public final Lcom/helpscout/beacon/a/c/e/g/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/g/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/e/g/i;

.field private final b:Lcom/helpscout/beacon/a/c/e/g/j;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/g/i;Lcom/helpscout/beacon/a/c/e/g/j;)V
    .locals 1

    const-string v0, "initChatFromCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initChatFromRemote"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/k;->a:Lcom/helpscout/beacon/a/c/e/g/i;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/k;->b:Lcom/helpscout/beacon/a/c/e/g/j;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/g/k$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/g/k$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/k$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/k$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/g/k$b;-><init>(Lcom/helpscout/beacon/a/c/e/g/k;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/k;->a:Lcom/helpscout/beacon/a/c/e/g/i;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/i;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_4
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/k;->b:Lcom/helpscout/beacon/a/c/e/g/j;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/k$b;->b:I

    invoke-virtual {p1, v0}, Lcom/helpscout/beacon/a/c/e/g/j;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Lcom/helpscout/beacon/a/c/e/g/k$a;

    return-object p2
.end method
