.class public interface abstract Lcom/helpscout/common/mvi/ViewStateReducer;
.super Ljava/lang/Object;
.source "ViewStateReducer.kt"

# interfaces
.implements Lcom/helpscout/common/mvi/ViewEventReducer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/mvi/ViewStateReducer$DefaultImpls;
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
        "Lcom/helpscout/common/mvi/ViewEventReducer<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u000c\u0008\u0001\u0010\u0004*\u00060\u0002j\u0002`\u0005*\u000c\u0008\u0002\u0010\u0006*\u00060\u0002j\u0002`\u00072\u0008\u0012\u0004\u0012\u0002H\u00060\u0008J\u0015\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0011J\r\u0010\u0012\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bJ\u001f\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u00012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H&\u00a2\u0006\u0002\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00028\u00012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\'\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u001e0\u001dH&J\u001b\u0010\u001f\u001a\u00020\u000f*\u00028\u00012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0017\u00a2\u0006\u0002\u0010\u0016J\'\u0010\u001f\u001a\u00020\u000f*\u00028\u00012\u0006\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\"R\u0012\u0010\t\u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00028\u0001X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/ViewStateReducer;",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "Lcom/helpscout/common/mvi/ViewEventReducer;",
        "initialState",
        "getInitialState",
        "()Ljava/lang/Object;",
        "lastViewState",
        "getLastViewState",
        "onRestoreViewState",
        "",
        "viewState",
        "(Ljava/lang/Object;)V",
        "onSaveViewState",
        "pushState",
        "updateUi",
        "",
        "(Ljava/lang/Object;Z)V",
        "pushStateImmediate",
        "reduce",
        "action",
        "previousState",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "subscribeToViewStates",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/helpscout/common/mvi/MviViewState;",
        "postState",
        "uiContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract getInitialState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract getLastViewState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract onRestoreViewState(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract onSaveViewState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method public abstract postState(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract postState(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract pushState(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract pushStateImmediate(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TS;)V"
        }
    .end annotation
.end method

.method public abstract subscribeToViewStates()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;>;"
        }
    .end annotation
.end method
