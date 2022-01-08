.class public final Lcom/helpscout/common/mvi/MviView$DefaultImpls;
.super Ljava/lang/Object;
.source "MviView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/common/mvi/MviView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static bindLifecycleOwner(Lcom/helpscout/common/mvi/MviView;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/helpscout/common/mvi/MviView<",
            "TA;TS;TE;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lcom/helpscout/common/mvi/MviView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/helpscout/common/mvi/MviViewModel;->bindLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 19
    invoke-interface {p0}, Lcom/helpscout/common/mvi/MviView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewStates()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;

    invoke-direct {v1, p0}, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;-><init>(Lcom/helpscout/common/mvi/MviView;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    invoke-interface {p0}, Lcom/helpscout/common/mvi/MviView;->getViewModel()Lcom/helpscout/common/mvi/MviViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewEvents()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    new-instance v1, Lcom/helpscout/common/lifecycle/EventObserver;

    new-instance v2, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$2;

    invoke-direct {v2, p0}, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$2;-><init>(Lcom/helpscout/common/mvi/MviView;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v1, v2}, Lcom/helpscout/common/lifecycle/EventObserver;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
