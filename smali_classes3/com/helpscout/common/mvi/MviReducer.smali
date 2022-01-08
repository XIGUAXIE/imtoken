.class public abstract Lcom/helpscout/common/mvi/MviReducer;
.super Ljava/lang/Object;
.source "MviReducer.kt"

# interfaces
.implements Lcom/helpscout/common/mvi/ViewStateReducer;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/mvi/MviReducer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/helpscout/common/mvi/ViewStateReducer<",
        "TA;TS;TE;>;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMviReducer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MviReducer.kt\ncom/helpscout/common/mvi/MviReducer\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,147:1\n87#2:148\n1#3:149\n49#4,4:150\n*E\n*S KotlinDebug\n*F\n+ 1 MviReducer.kt\ncom/helpscout/common/mvi/MviReducer\n*L\n45#1:148\n31#1,4:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 N*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u000c\u0008\u0001\u0010\u0004*\u00060\u0002j\u0002`\u0005*\u000c\u0008\u0002\u0010\u0006*\u00060\u0002j\u0002`\u00072\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00060\u00082\u00020\t:\u0001NB#\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0008\u0002\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\u0015\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u00100J\u0015\u00101\u001a\u00020.2\u0006\u0010/\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u00100J\u001d\u00102\u001a\u00020.2\u0006\u00103\u001a\u00028\u00012\u0006\u00104\u001a\u000205H\u0016\u00a2\u0006\u0002\u00106J\u001d\u00107\u001a\u00020.2\u0006\u00103\u001a\u00028\u00012\u0006\u00104\u001a\u000205H\u0016\u00a2\u0006\u0002\u00106J\u000e\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020:J2\u0010;\u001a\u00020.\"\u0004\u0008\u0003\u0010<2\u001c\u0010=\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H<0?\u0012\u0006\u0012\u0004\u0018\u00010\u00020>\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010@J`\u0010;\u001a\u00020.\"\u0004\u0008\u0003\u0010<\"\u0004\u0008\u0004\u0010A2\u001c\u0010=\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H<0?\u0012\u0006\u0012\u0004\u0018\u00010\u00020>2\u0012\u0010B\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u0002HA0>2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u0002HA\u0012\u0004\u0012\u00020.0>\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010DJF\u0010;\u001a\u00020.\"\u0004\u0008\u0003\u0010<2\u001c\u0010=\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H<0?\u0012\u0006\u0012\u0004\u0018\u00010\u00020>2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u0002H<\u0012\u0004\u0012\u00020.0>\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010EJ\u000e\u0010F\u001a\u00020.2\u0006\u00109\u001a\u00020:J\u0015\u0010+\u001a\u00020.2\u0006\u0010G\u001a\u00020\'H\u0000\u00a2\u0006\u0002\u0008HJ\u0014\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020K0JH\u0016J\"\u0010L\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028\u0001 M*\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010%0%0JH\u0016R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00028\u00018VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R!\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00010\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001b\u0010\u001cR\u0012\u0010\u001f\u001a\u00020 X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010(\u001a\u00020\'2\u0006\u0010&\u001a\u00020\'@FX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006O"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/MviReducer;",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "Lcom/helpscout/common/mvi/ViewStateReducer;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "coroutineConfig",
        "Lcom/helpscout/common/mvi/MviCoroutineConfig;",
        "viewStateStore",
        "Lcom/helpscout/common/mvi/MviViewStateStore;",
        "(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;)V",
        "coroutineExceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "dispatcherProvider",
        "Lcom/helpscout/common/coroutines/DispatcherProvider;",
        "getDispatcherProvider",
        "()Lcom/helpscout/common/coroutines/DispatcherProvider;",
        "eventStream",
        "Lcom/helpscout/common/lifecycle/SingleLiveEvent;",
        "lastViewState",
        "getLastViewState",
        "()Ljava/lang/Object;",
        "mviViewStateStore",
        "getMviViewStateStore",
        "()Lcom/helpscout/common/mvi/MviViewStateStore;",
        "mviViewStateStore$delegate",
        "Lkotlin/Lazy;",
        "reducerName",
        "",
        "getReducerName",
        "()Ljava/lang/String;",
        "stateStream",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/helpscout/common/mvi/MviViewState;",
        "<set-?>",
        "Lkotlinx/coroutines/CoroutineScope;",
        "uiScope",
        "getUiScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "setUiScope",
        "(Lkotlinx/coroutines/CoroutineScope;)V",
        "pushEvent",
        "",
        "viewEvent",
        "(Ljava/lang/Object;)V",
        "pushEventImmediate",
        "pushState",
        "viewState",
        "updateUi",
        "",
        "(Ljava/lang/Object;Z)V",
        "pushStateImmediate",
        "restoreViewState",
        "bundle",
        "Landroid/os/Bundle;",
        "runAsync",
        "T",
        "action",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "R",
        "map",
        "onResult",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "saveViewState",
        "scope",
        "setUiScope$android_common_release",
        "subscribeToEvents",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/helpscout/common/lifecycle/Event;",
        "subscribeToViewStates",
        "kotlin.jvm.PlatformType",
        "Companion",
        "android-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final Companion:Lcom/helpscout/common/mvi/MviReducer$Companion;

.field private static final DISPATCHER_PROVIDER_ERROR:Ljava/lang/String; = "No DispatcherProvider set. Please, use the appropriate constructor to provide it."


# instance fields
.field private final coroutineExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private final dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

.field private final eventStream:Lcom/helpscout/common/lifecycle/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/common/lifecycle/SingleLiveEvent<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mviViewStateStore$delegate:Lkotlin/Lazy;

.field private final stateStream:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field public uiScope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/common/mvi/MviReducer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/common/mvi/MviReducer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/common/mvi/MviReducer;->Companion:Lcom/helpscout/common/mvi/MviReducer$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/mvi/MviCoroutineConfig;",
            "Lcom/helpscout/common/mvi/MviViewStateStore<",
            "TS;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviCoroutineConfig;->getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/helpscout/common/mvi/MviReducer;->dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviCoroutineConfig;->getCoroutineExceptionHandler()Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 150
    new-instance v0, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;

    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {v0, v1, p1, p0}, Lcom/helpscout/common/mvi/MviReducer$$special$$inlined$let$lambda$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lcom/helpscout/common/mvi/MviCoroutineExceptionHandler;Lcom/helpscout/common/mvi/MviReducer;)V

    check-cast v0, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 30
    :cond_1
    iput-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->coroutineExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 40
    new-instance p1, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;

    invoke-direct {p1, p0, p2}, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;-><init>(Lcom/helpscout/common/mvi/MviReducer;Lcom/helpscout/common/mvi/MviViewStateStore;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer;->mviViewStateStore$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer;->stateStream:Landroidx/lifecycle/MediatorLiveData;

    .line 47
    new-instance p1, Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-direct {p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer;->eventStream:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 19
    move-object p1, v0

    check-cast p1, Lcom/helpscout/common/mvi/MviCoroutineConfig;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 20
    move-object p2, v0

    check-cast p2, Lcom/helpscout/common/mvi/MviViewStateStore;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;)V

    return-void
.end method

.method private final getMviViewStateStore()Lcom/helpscout/common/mvi/MviViewStateStore;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/common/mvi/MviViewStateStore<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->mviViewStateStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/common/mvi/MviViewStateStore;

    return-object v0
.end method


# virtual methods
.method public final getDispatcherProvider()Lcom/helpscout/common/coroutines/DispatcherProvider;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

    return-object v0
.end method

.method public getLastViewState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->stateStream:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/common/mvi/MviViewState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviViewState;->getViewState()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->getInitialState()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract getReducerName()Ljava/lang/String;
.end method

.method public final getUiScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_0

    const-string v1, "uiScope"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onRestoreViewState(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->onRestoreViewState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onSaveViewState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 18
    invoke-static {p0}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->onSaveViewState(Lcom/helpscout/common/mvi/ViewStateReducer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postEvent(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-string v0, "$this$postEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postEvent(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;)V

    return-void
.end method

.method public postState(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    invoke-static {p0, p1, p2, p3, p4}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public postState(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    const-string v0, "$this$postState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1, p2}, Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;->postState(Lcom/helpscout/common/mvi/ViewStateReducer;Ljava/lang/Object;Z)V

    return-void
.end method

.method public pushEvent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-string v0, "viewEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->eventStream:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-virtual {v0, p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public pushEventImmediate(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const-string v0, "viewEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->eventStream:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-virtual {v0, p1}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public pushState(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->stateStream:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/helpscout/common/mvi/MviViewState;

    invoke-direct {v1, p1, p2}, Lcom/helpscout/common/mvi/MviViewState;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public pushStateImmediate(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    const-string v0, "viewState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->stateStream:Landroidx/lifecycle/MediatorLiveData;

    new-instance v1, Lcom/helpscout/common/mvi/MviViewState;

    invoke-direct {v1, p1, p2}, Lcom/helpscout/common/mvi/MviViewState;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final restoreViewState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/helpscout/common/mvi/MviReducer;->getMviViewStateStore()Lcom/helpscout/common/mvi/MviViewStateStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/helpscout/common/mvi/MviViewStateStore;->restore(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    move-object v0, p0

    check-cast v0, Lcom/helpscout/common/mvi/MviReducer;

    .line 88
    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviReducer;->onRestoreViewState(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final runAsync(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v1, :cond_0

    const-string v0, "uiScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/helpscout/common/mvi/MviReducer$runAsync$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/helpscout/common/mvi/MviReducer$runAsync$2;-><init>(Lcom/helpscout/common/mvi/MviReducer;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No DispatcherProvider set. Please, use the appropriate constructor to provide it."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final runAsync(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

    if-eqz v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v1, :cond_0

    const-string v0, "uiScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/helpscout/common/mvi/MviReducer$runAsync$4;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, p2, v4}, Lcom/helpscout/common/mvi/MviReducer$runAsync$4;-><init>(Lcom/helpscout/common/mvi/MviReducer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 116
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No DispatcherProvider set. Please, use the appropriate constructor to provide it."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final runAsync(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TR;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->dispatcherProvider:Lcom/helpscout/common/coroutines/DispatcherProvider;

    if-eqz v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v1, :cond_0

    const-string v0, "uiScope"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/helpscout/common/mvi/MviReducer$runAsync$6;-><init>(Lcom/helpscout/common/mvi/MviReducer;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No DispatcherProvider set. Please, use the appropriate constructor to provide it."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final saveViewState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/helpscout/common/mvi/MviReducer;->getMviViewStateStore()Lcom/helpscout/common/mvi/MviViewStateStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer;->onSaveViewState()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/helpscout/common/mvi/MviViewStateStore;->save(Landroid/os/Bundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final setUiScope(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public final setUiScope$android_common_release(Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->coroutineExceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer;->uiScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public subscribeToEvents()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "TE;>;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->eventStream:Lcom/helpscout/common/lifecycle/SingleLiveEvent;

    invoke-virtual {v0}, Lcom/helpscout/common/lifecycle/SingleLiveEvent;->getEvent()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public subscribeToViewStates()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer;->stateStream:Landroidx/lifecycle/MediatorLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 148
    invoke-static {v0}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.distinctUntilChanged(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
