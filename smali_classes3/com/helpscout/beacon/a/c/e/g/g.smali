.class public final Lcom/helpscout/beacon/a/c/e/g/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "beaconApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beaconDatastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/g;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/g/g;->b:Lcom/helpscout/beacon/BeaconDatastore;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/g/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/g$a;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/g/g$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/g/g$a;-><init>(Lcom/helpscout/beacon/a/c/e/g/g;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/g;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/g;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iget-object v2, p0, Lcom/helpscout/beacon/a/c/e/g/g;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v2}, Lcom/helpscout/beacon/BeaconDatastore;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    iput v4, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->b:I

    invoke-interface {p1, v2, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_5
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/g/g;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/g/g$a;->b:I

    invoke-interface {p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
