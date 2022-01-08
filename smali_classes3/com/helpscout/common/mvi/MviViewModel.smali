.class public final Lcom/helpscout/common/mvi/MviViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MviViewModel.kt"

# interfaces
.implements Lcom/helpscout/common/mvi/ViewModelContract;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/helpscout/common/mvi/ViewModelContract<",
        "TA;TS;TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u000c\u0008\u0001\u0010\u0004*\u00060\u0002j\u0002`\u0005*\u000c\u0008\u0002\u0010\u0006*\u00060\u0002j\u0002`\u00072\u00020\u00082\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00060\tB\u001f\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0015\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u000f0\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u00130\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Lcom/helpscout/common/mvi/MviViewModel;",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/helpscout/common/mvi/ViewModelContract;",
        "reducer",
        "Lcom/helpscout/common/mvi/MviReducer;",
        "(Lcom/helpscout/common/mvi/MviReducer;)V",
        "viewEvents",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Lcom/helpscout/common/lifecycle/Event;",
        "getViewEvents",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "viewStates",
        "Lcom/helpscout/common/mvi/MviViewState;",
        "getViewStates",
        "bindLifecycleOwner",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "interpret",
        "action",
        "(Ljava/lang/Object;)V",
        "restoreViewState",
        "bundle",
        "Landroid/os/Bundle;",
        "saveViewState",
        "android-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final reducer:Lcom/helpscout/common/mvi/MviReducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpscout/common/mvi/MviReducer<",
            "TA;TS;TE;>;"
        }
    .end annotation
.end field

.field private final viewEvents:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final viewStates:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpscout/common/mvi/MviReducer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/mvi/MviReducer<",
            "TA;TS;TE;>;)V"
        }
    .end annotation

    const-string v0, "reducer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    .line 19
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviViewModel;->viewStates:Landroidx/lifecycle/MediatorLiveData;

    .line 20
    new-instance p1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviViewModel;->viewEvents:Landroidx/lifecycle/MediatorLiveData;

    .line 23
    iget-object p1, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helpscout/common/mvi/MviReducer;->setUiScope$android_common_release(Lkotlinx/coroutines/CoroutineScope;)V

    .line 25
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewStates()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    new-instance v0, Lcom/helpscout/common/mvi/MviViewState;

    iget-object v1, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getInitialState()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/helpscout/common/mvi/MviViewState;-><init>(Ljava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewStates()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->subscribeToViewStates()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/mvi/MviViewModel$1;

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewStates()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpscout/common/mvi/MviViewModel$1;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/helpscout/common/mvi/MviViewModel$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/helpscout/common/mvi/MviViewModel$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v2, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 27
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewEvents()Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviReducer;->subscribeToEvents()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/mvi/MviViewModel$2;

    invoke-direct {v1, p0}, Lcom/helpscout/common/mvi/MviViewModel$2;-><init>(Lcom/helpscout/common/mvi/MviViewModel;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public getViewEvents()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "TE;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->viewEvents:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public getViewStates()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->viewStates:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public interpret(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewStates()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpscout/common/mvi/MviViewState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviViewState;->getViewState()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/helpscout/common/mvi/MviReducer;->reduce(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public restoreViewState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviReducer;->restoreViewState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveViewState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel;->reducer:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviReducer;->saveViewState(Landroid/os/Bundle;)V

    return-void
.end method
