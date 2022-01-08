.class public final Lcom/helpscout/beacon/a/c/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/a/c/c/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/c/a;)V
    .locals 1

    const-string v0, "beaconRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/a;->a:Lcom/helpscout/beacon/a/c/c/a;

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/a/c/e/a;Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lcom/helpscout/beacon/a/c/c/b;->DEFAULT:Lcom/helpscout/beacon/a/c/c/b;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/a/c/e/a;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/a/c/c/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/a/c/e/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/a/c/e/a$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/a$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/a/c/e/a$b;-><init>(Lcom/helpscout/beacon/a/c/e/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/a/c/e/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/a$b;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/a$b;->e:Ljava/lang/Object;

    check-cast p1, Lcom/helpscout/beacon/a/c/c/b;

    iget-object v2, v0, Lcom/helpscout/beacon/a/c/e/a$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/a/c/e/a;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lcom/helpscout/beacon/a/c/e/a;->a:Lcom/helpscout/beacon/a/c/c/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/a$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/a/c/e/a$b;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/a/c/e/a$b;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance p1, Lcom/helpscout/beacon/a/c/e/a$a$b;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/a$a$b;-><init>(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    return-object p1

    :cond_5
    sget-object p2, Lcom/helpscout/beacon/a/c/c/b;->CACHE:Lcom/helpscout/beacon/a/c/c/b;

    if-ne p1, p2, :cond_7

    iget-object p1, v2, Lcom/helpscout/beacon/a/c/e/a;->a:Lcom/helpscout/beacon/a/c/c/a;

    sget-object p2, Lcom/helpscout/beacon/a/c/c/b;->REMOTE_ONLY:Lcom/helpscout/beacon/a/c/c/b;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/a$b;->d:Ljava/lang/Object;

    iput-object v2, v0, Lcom/helpscout/beacon/a/c/e/a$b;->e:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/a$b;->b:I

    invoke-interface {p1, p2, v0}, Lcom/helpscout/beacon/a/c/c/a;->a(Lcom/helpscout/beacon/a/c/c/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;

    new-instance p1, Lcom/helpscout/beacon/a/c/e/a$a$b;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/c/e/a$a$b;-><init>(Lcom/helpscout/beacon/internal/core/model/BeaconConfigApi;)V

    return-object p1

    :cond_7
    new-instance p1, Lcom/helpscout/beacon/a/c/e/d;

    invoke-direct {p1}, Lcom/helpscout/beacon/a/c/e/d;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/helpscout/beacon/a/c/e/a$a$a;

    invoke-direct {p2, p1}, Lcom/helpscout/beacon/a/c/e/a$a$a;-><init>(Ljava/lang/Exception;)V

    return-object p2
.end method
