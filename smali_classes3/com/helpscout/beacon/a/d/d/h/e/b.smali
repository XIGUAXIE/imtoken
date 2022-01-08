.class public final Lcom/helpscout/beacon/a/d/d/h/e/b;
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

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/helpscout/beacon/a/d/d/h/e/b;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->e:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->f:Lkotlin/coroutines/CoroutineContext;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/a/d/d/h/e/b$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/a/d/d/h/e/b$b;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->a:Lkotlin/Lazy;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/a/d/d/h/e/b$c;

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/a/d/d/h/e/b$c;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->b:Lkotlin/Lazy;

    new-instance p1, Lcom/helpscout/beacon/a/d/d/h/e/b$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/b$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->d:Lkotlinx/coroutines/CoroutineScope;

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
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/a/d/d/h/e/b;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method private final a()Lcom/helpscout/beacon/a/d/d/j/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/d/d/j/b;

    return-object v0
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/a/d/d/h/e/b;)Lcom/helpscout/beacon/a/d/d/j/b;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/h/e/b;->a()Lcom/helpscout/beacon/a/d/d/j/b;

    move-result-object p0

    return-object p0
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "android.intent.extra.NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "com.helpscout.beacon.ui.EXTRA_CONVERSATION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v0, "intent.getStringExtra(Co\u2026ONVERSATION_ID) ?: return"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.helpscout.beacon.ui.NOTIFICATION_KEY_REPLY"

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/h;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->e:Lkotlin/coroutines/CoroutineContext;

    new-instance v10, Lcom/helpscout/beacon/a/d/d/h/e/b$d;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/helpscout/beacon/a/d/d/h/e/b$d;-><init>(Lcom/helpscout/beacon/a/d/d/h/e/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method private final a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.helpscout.beacon.ui.ACTION_REPLY"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b()Lcom/helpscout/beacon/a/c/e/h/m;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/a/c/e/h/m;

    return-object v0
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/a/d/d/h/e/b;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/a/d/d/h/e/b;->f:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic c(Lcom/helpscout/beacon/a/d/d/h/e/b;)Lcom/helpscout/beacon/a/c/e/h/m;
    .locals 0

    invoke-direct {p0}, Lcom/helpscout/beacon/a/d/d/h/e/b;->b()Lcom/helpscout/beacon/a/c/e/h/m;

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

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/h/e/b;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/a/d/d/h/e/b;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/helpscout/beacon/a/d/d/h/e/b;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
