.class public final Lcom/helpscout/beacon/a/c/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/a/c/e/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/BeaconDatastore;

.field private final b:Lcom/helpscout/beacon/internal/data/remote/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/BeaconDatastore;Lcom/helpscout/beacon/internal/data/remote/a;)V
    .locals 1

    const-string v0, "datastore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/c/e/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    iput-object p2, p0, Lcom/helpscout/beacon/a/c/e/c;->b:Lcom/helpscout/beacon/internal/data/remote/a;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/helpscout/beacon/a/c/e/c$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/a/c/e/c$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/a/c/e/c$b;

    iget v1, v0, Lcom/helpscout/beacon/a/c/e/c$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/a/c/e/c$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/a/c/e/c$b;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/a/c/e/c$b;-><init>(Lcom/helpscout/beacon/a/c/e/c;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/a/c/e/c$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/a/c/e/c$b;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/c$b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/a/c/e/c;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/helpscout/beacon/a/c/e/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/c$a$b;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getShouldIdentifyCustomer()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/helpscout/beacon/a/c/e/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/c$a$a;

    :goto_1
    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/helpscout/beacon/a/c/e/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getBeaconUser()Lcom/helpscout/beacon/model/BeaconUser;

    move-result-object p1

    :try_start_1
    iget-object v2, p0, Lcom/helpscout/beacon/a/c/e/c;->b:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/a/c/e/c$b;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/a/c/e/c$b;->b:I

    invoke-interface {v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->a(Lcom/helpscout/beacon/model/BeaconUser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    :goto_2
    check-cast p1, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/domain/model/CustomerStatus;->customerExists()Z

    move-result p1

    iget-object v0, v0, Lcom/helpscout/beacon/a/c/e/c;->a:Lcom/helpscout/beacon/BeaconDatastore;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/helpscout/beacon/BeaconDatastore;->setShouldIdentifyCustomer(Z)V

    if-eqz p1, :cond_6

    sget-object p1, Lcom/helpscout/beacon/a/c/e/c$a$a;->a:Lcom/helpscout/beacon/a/c/e/c$a$a;

    goto :goto_3

    :cond_6
    sget-object p1, Lcom/helpscout/beacon/a/c/e/c$a$b;->a:Lcom/helpscout/beacon/a/c/e/c$a$b;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return-object p1

    :goto_4
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Error updating Identify Customer"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/helpscout/beacon/a/c/e/c$a$c;->a:Lcom/helpscout/beacon/a/c/e/c$a$c;

    return-object p1
.end method
