.class public final Lcom/helpscout/beacon/a/d/d/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/d/h/d;


# instance fields
.field private final a:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final b:Lkotlinx/coroutines/CoroutineScope;

.field private final c:Lcom/helpscout/beacon/a/d/d/c;

.field private final d:Lcom/helpscout/beacon/a/c/e/g/v/a;

.field private final e:Lcom/helpscout/beacon/a/c/e/g/v/c;

.field private final f:Lcom/helpscout/beacon/a/c/e/g/v/b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/d/d/c;Lcom/helpscout/beacon/a/c/e/g/v/a;Lcom/helpscout/beacon/a/c/e/g/v/c;Lcom/helpscout/beacon/a/c/e/g/v/b;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "notificationFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatAgentReplyPushUseCase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inactivityPushUseCase"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatEndedPushUseCase"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/a;->c:Lcom/helpscout/beacon/a/d/d/c;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/h/a;->d:Lcom/helpscout/beacon/a/c/e/g/v/a;

    iput-object p3, p0, Lcom/helpscout/beacon/a/d/d/h/a;->e:Lcom/helpscout/beacon/a/c/e/g/v/c;

    iput-object p4, p0, Lcom/helpscout/beacon/a/d/d/h/a;->f:Lcom/helpscout/beacon/a/c/e/g/v/b;

    new-instance p1, Lcom/helpscout/beacon/a/d/d/h/a$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/d/d/h/a$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/a;->a:Lkotlinx/coroutines/CoroutineExceptionHandler;

    invoke-interface {p5, p6}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/a;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/d/d/c;Lcom/helpscout/beacon/a/c/e/g/v/a;Lcom/helpscout/beacon/a/c/e/g/v/c;Lcom/helpscout/beacon/a/c/e/g/v/b;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p5

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p7, 0x20

    if-eqz p5, :cond_1

    const/4 p5, 0x1

    const/4 p6, 0x0

    invoke-static {p6, p5, p6}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p6

    :cond_1
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/helpscout/beacon/a/d/d/h/a;-><init>(Lcom/helpscout/beacon/a/d/d/c;Lcom/helpscout/beacon/a/c/e/g/v/a;Lcom/helpscout/beacon/a/c/e/g/v/c;Lcom/helpscout/beacon/a/c/e/g/v/b;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/Job;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/d/d/h/a;)Lcom/helpscout/beacon/a/c/e/g/v/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/a/d/d/h/a;->d:Lcom/helpscout/beacon/a/c/e/g/v/a;

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/a/d/d/b$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/a;->f:Lcom/helpscout/beacon/a/c/e/g/v/b;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/c/e/g/v/b;->a(Lcom/helpscout/beacon/a/d/d/b$a;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final a(Lcom/helpscout/beacon/a/d/d/b$b;)Z
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/a;->e:Lcom/helpscout/beacon/a/c/e/g/v/c;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/a/c/e/g/v/c;->a(Lcom/helpscout/beacon/a/d/d/b$b;)V

    const/4 p1, 0x1

    return p1
.end method

.method private final a(Lcom/helpscout/beacon/a/d/d/b$c;)Z
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/a;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/helpscout/beacon/a/d/d/h/a$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, v1}, Lcom/helpscout/beacon/a/d/d/h/a$b;-><init>(Lcom/helpscout/beacon/a/d/d/h/a;Lcom/helpscout/beacon/a/d/d/b$c;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1
.end method

.method private final b(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot process push payload as it is unsupported at this time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/h/a;->c:Lcom/helpscout/beacon/a/d/d/c;

    invoke-virtual {v1, p1}, Lcom/helpscout/beacon/a/d/d/c;->a(Ljava/util/Map;)Lcom/helpscout/beacon/a/d/d/b;

    move-result-object v1

    instance-of v2, v1, Lcom/helpscout/beacon/a/d/d/b$c;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/helpscout/beacon/a/d/d/b$c;

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/a/d/d/h/a;->a(Lcom/helpscout/beacon/a/d/d/b$c;)Z

    move-result p1

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/helpscout/beacon/a/d/d/b$b;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/helpscout/beacon/a/d/d/b$b;

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/a/d/d/h/a;->a(Lcom/helpscout/beacon/a/d/d/b$b;)Z

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/helpscout/beacon/a/d/d/b$a;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/helpscout/beacon/a/d/d/b$a;

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/a/d/d/h/a;->a(Lcom/helpscout/beacon/a/d/d/b$a;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v1, v1, Lcom/helpscout/beacon/a/d/d/b$d;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/h/a;->b(Ljava/util/Map;)Z

    move-result p1

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process push payload. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v0
.end method

.method public c(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification;->Companion:Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/domain/model/BeaconNotification$Companion;->isChat(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
