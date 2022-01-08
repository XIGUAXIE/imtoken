.class public final Lcom/helpscout/beacon/internal/presentation/push/fcm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/f;


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/data/remote/a;

.field private final b:Lcom/helpscout/beacon/BeaconDatastore;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/data/remote/a;Lcom/helpscout/beacon/BeaconDatastore;)V
    .locals 1

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datastore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPushTokenRegistered()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;

    invoke-direct {v0, p0, p2}, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;-><init>(Lcom/helpscout/beacon/internal/presentation/push/fcm/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

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
    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->d:Ljava/lang/Object;

    check-cast v2, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object p0, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->d:Ljava/lang/Object;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->e:Ljava/lang/Object;

    iput v5, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->b:I

    invoke-virtual {p0, v0}, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-direct {v2, p1}, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, v2, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->e:Ljava/lang/Object;

    iput v4, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$b;->b:I

    invoke-interface {p2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p2, :cond_6

    const-string p2, "Warning, could not be subscribed for push notifications"

    :try_start_3
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error subscribing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". There will be no push notifications for this convo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;

    iget v1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;-><init>(Lcom/helpscout/beacon/internal/presentation/push/fcm/a;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->d:Ljava/lang/Object;

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1}, Lcom/helpscout/beacon/BeaconDatastore;->getPushToken()Ljava/lang/String;

    move-result-object p1

    :try_start_1
    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->a:Lcom/helpscout/beacon/internal/data/remote/a;

    iput-object p0, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a$a;->b:I

    invoke-interface {v2, p1, v0}, Lcom/helpscout/beacon/internal/data/remote/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_4

    const-string p1, "Push Token registration failed. Is your App ID registered with Help Scout?"

    :try_start_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {p1, v3}, Lcom/helpscout/beacon/BeaconDatastore;->setPushTokenRegistered(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x191

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_5

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Push Token registration failed with Missing Error. Has a convo been created for this user? if not the user\'s record may not be saved."

    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Http Error when registering the Push Token"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Push Token registration failed with Auth Error. Is the user Logged in to the Beacon"

    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Error when registering the Push Token"

    invoke-static {p1, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    throw p1
.end method

.method public a()Z
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/push/fcm/a;->b:Lcom/helpscout/beacon/BeaconDatastore;

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->userHasEmail()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/helpscout/beacon/BeaconDatastore;->getPushTokenRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
