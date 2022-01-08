.class public final Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;
.super Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0016\u00a2\u0006\u0004\u0008 \u0010!J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u0018\u00a8\u0006\""
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;",
        "Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;",
        "screenSelector",
        "",
        "signature",
        "",
        "a",
        "(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;)V",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;",
        "action",
        "Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;",
        "previousState",
        "(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V",
        "Lcom/helpscout/beacon/a/c/e/j/a;",
        "e",
        "Lcom/helpscout/beacon/a/c/e/j/a;",
        "customNavigateUseCase",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "c",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "exceptionHandler",
        "Lkotlin/coroutines/CoroutineContext;",
        "g",
        "Lkotlin/coroutines/CoroutineContext;",
        "ioContext",
        "Lkotlinx/coroutines/CoroutineScope;",
        "d",
        "Lkotlinx/coroutines/CoroutineScope;",
        "reducerScope",
        "f",
        "uiContext",
        "<init>",
        "(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final c:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final d:Lkotlinx/coroutines/CoroutineScope;

.field private final e:Lcom/helpscout/beacon/a/c/e/j/a;

.field private final f:Lkotlin/coroutines/CoroutineContext;

.field private final g:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "customNavigateUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/mvi/legacy/BaseBeaconViewStateReducer;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->e:Lcom/helpscout/beacon/a/c/e/j/a;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->f:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->g:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$a;

    sget-object p2, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    invoke-direct {p1, p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$a;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->c:Lkotlinx/coroutines/CoroutineExceptionHandler;

    sget-object p2, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    invoke-static {p2, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;-><init>(Lcom/helpscout/beacon/a/c/e/j/a;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;)Lcom/helpscout/beacon/a/c/e/j/a;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->e:Lcom/helpscout/beacon/a/c/e/j/a;

    return-object p0
.end method

.method private final a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->d:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->f:Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer$b;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->g:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/helpscout/beacon/internal/presentation/mvi/legacy/a;Lcom/helpscout/beacon/internal/presentation/mvi/legacy/f;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/helpscout/beacon/a/d/c/i$a;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/helpscout/beacon/a/d/c/i$a;

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/i$a;->a()Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    move-result-object p2

    invoke-virtual {p1}, Lcom/helpscout/beacon/a/d/c/i$a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateReducer;->a(Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
