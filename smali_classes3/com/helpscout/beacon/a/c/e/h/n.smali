.class public final Lcom/helpscout/beacon/a/c/e/h/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/a/c/e/i/d;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/a/c/e/i/d;)V
    .locals 1

    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showPreviousMessagesUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/n;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/h/n;->b:Lcom/helpscout/beacon/a/c/e/i/d;

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
            "Lcom/helpscout/beacon/a/d/c/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/h/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/n$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/h/n$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/h/n$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/h/n$a;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/h/n$a;-><init>(Lcom/helpscout/beacon/a/c/e/h/n;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/h/n$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/h/n$a;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Lcom/helpscout/beacon/a/d/c/h$e;->a:Lcom/helpscout/beacon/a/d/c/h$e;

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/helpscout/beacon/a/a/d/c;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/h/n$a;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/helpscout/beacon/a/c/e/h/n;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object p1, p2

    check-cast p1, Lcom/helpscout/beacon/a/d/c/h;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/helpscout/beacon/a/d/c/h$d;->a:Lcom/helpscout/beacon/a/d/c/h$d;

    :goto_2
    return-object p1
.end method

.method final synthetic b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/d/c/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/a/c/e/h/n;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0, p1}, Lcom/helpscout/beacon/BeaconDatastore;->setEmail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/h/n;->b:Lcom/helpscout/beacon/a/c/e/i/d;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, p2, v1, v2}, Lcom/helpscout/beacon/a/c/e/i/d;->a(Lcom/helpscout/beacon/a/c/e/i/d;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
