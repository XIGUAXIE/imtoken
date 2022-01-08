.class public interface abstract Lcom/helpscout/common/mvi/MviView;
.super Ljava/lang/Object;
.source "MviView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/common/mvi/MviView$DefaultImpls;
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
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u0000*\u000c\u0008\u0000\u0010\u0001*\u00060\u0002j\u0002`\u0003*\u000c\u0008\u0001\u0010\u0004*\u00060\u0002j\u0002`\u0005*\u000c\u0008\u0002\u0010\u0006*\u00060\u0002j\u0002`\u00072\u00020\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00028\u0002H&\u00a2\u0006\u0002\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u0012R$\u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/helpscout/common/mvi/MviView;",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "viewModel",
        "Lcom/helpscout/common/mvi/MviViewModel;",
        "getViewModel",
        "()Lcom/helpscout/common/mvi/MviViewModel;",
        "bindLifecycleOwner",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "reactTo",
        "event",
        "(Ljava/lang/Object;)V",
        "render",
        "state",
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

.method public abstract getViewModel()Lcom/helpscout/common/mvi/MviViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/common/mvi/MviViewModel<",
            "TA;TS;TE;>;"
        }
    .end annotation
.end method

.method public abstract reactTo(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract render(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
