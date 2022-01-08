.class public final Lcom/helpscout/beacon/a/d/d/h/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final d:Lkotlinx/coroutines/CoroutineScope;

.field private final e:Lkotlin/coroutines/CoroutineContext;

.field private final f:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/helpscout/beacon/a/d/d/h/e/a;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->e:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->f:Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/a/d/d/h/e/a$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/a/d/d/h/e/a$b;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->a:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/a/d/d/h/e/a$c;

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/a/d/d/h/e/a$c;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/helpscout/beacon/a/d/d/h/e/a$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/a$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/a;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/a/d/d/j/a;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/d/d/j/a;

    return-object v0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/d/d/h/e/a;)Lcom/helpscout/beacon/a/d/d/j/a;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/h/e/a;->a()Lcom/helpscout/beacon/a/d/d/j/a;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android.intent.extra.NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "com.helpscout.beacon.ui.NOTIFICATION_KEY_REPLY"

    invoke-static {p1, v1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/h;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/helpscout/beacon/a/d/d/h/e/a$d;

    const/4 v3, 0x0

    invoke-direct {v4, p0, p1, v0, v3}, Lcom/helpscout/beacon/a/d/d/h/e/a$d;-><init>(Lcom/helpscout/beacon/a/d/d/h/e/a;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.helpscout.beacon.ui.ACTION_CHAT_REPLY"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b()Lcom/helpscout/beacon/a/c/e/g/q;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/c/e/g/q;

    return-object v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/a/d/d/h/e/a;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/a/d/d/h/e/a;->f:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/a/d/d/h/e/a;)Lcom/helpscout/beacon/a/c/e/g/q;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/h/e/a;->b()Lcom/helpscout/beacon/a/c/e/g/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/helpscout/beacon/a/d/a/c;->a:Lcom/helpscout/beacon/a/d/a/c$a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/helpscout/beacon/a/d/a/c$a;->a(Lcom/helpscout/beacon/a/d/a/c$a;Landroid/content/Context;Ljava/util/List;ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/h/e/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/h/e/a;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/h/e/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
