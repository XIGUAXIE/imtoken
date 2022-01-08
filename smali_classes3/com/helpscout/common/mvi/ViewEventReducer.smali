.class public interface abstract Lcom/helpscout/common/mvi/ViewEventReducer;
.super Ljava/lang/Object;
.source "ViewEventReducer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/mvi/ViewEventReducer$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
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
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u00032\u00020\u0002J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\'\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000b0\nH&J\u0011\u0010\u000c\u001a\u00020\u0005*\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0007J\u001d\u0010\u000c\u001a\u00020\u0005*\u00028\u00002\u0006\u0010\r\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000f\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/ViewEventReducer;",
        "E",
        "",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "pushEvent",
        "",
        "viewEvent",
        "(Ljava/lang/Object;)V",
        "pushEventImmediate",
        "subscribeToEvents",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/helpscout/common/lifecycle/Event;",
        "postEvent",
        "uiContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract postEvent(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract postEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract pushEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract pushEventImmediate(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract subscribeToEvents()Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/helpscout/common/lifecycle/Event<",
            "TE;>;>;"
        }
    .end annotation
.end method
