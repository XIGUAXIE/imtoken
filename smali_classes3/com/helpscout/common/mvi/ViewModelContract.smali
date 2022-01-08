.class public interface abstract Lcom/helpscout/common/mvi/ViewModelContract;
.super Ljava/lang/Object;
.source "ViewModelContract.kt"


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
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u000c\u0008\u0001\u0010\u0004*\u00060\u0002j\u0002`\u0005*\u000c\u0008\u0002\u0010\u0006*\u00060\u0002j\u0002`\u00072\u00020\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&J\u0015\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0019H&R\u001e\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\n0\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u000e0\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/ViewModelContract;",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
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


# virtual methods
.method public abstract bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
.end method

.method public abstract getViewEvents()Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract getViewStates()Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation
.end method

.method public abstract interpret(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation
.end method

.method public abstract restoreViewState(Landroid/os/Bundle;)V
.end method

.method public abstract saveViewState(Landroid/os/Bundle;)V
.end method
