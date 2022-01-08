.class final Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;
.super Ljava/lang/Object;
.source "MviView.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviView$DefaultImpls;->bindLifecycleOwner(Lcom/helpscout/common/mvi/MviView;Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/helpscout/common/mvi/MviViewState<",
        "TS;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u000c\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u0004\"\u000c\u0008\u0001\u0010\u0005*\u00060\u0003j\u0002`\u0006\"\u000c\u0008\u0002\u0010\u0007*\u00060\u0003j\u0002`\u00082\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u0002H\u0005 \u000b*\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000c"
    }
    d2 = {
        "<anonymous>",
        "",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "S",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "it",
        "Lcom/helpscout/common/mvi/MviViewState;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpscout/common/mvi/MviView;


# direct methods
.method constructor <init>(Lcom/helpscout/common/mvi/MviView;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;->this$0:Lcom/helpscout/common/mvi/MviView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/helpscout/common/mvi/MviViewState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;)V"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviViewState;->getUpdateUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;->this$0:Lcom/helpscout/common/mvi/MviView;

    invoke-virtual {p1}, Lcom/helpscout/common/mvi/MviViewState;->getViewState()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpscout/common/mvi/MviView;->render(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/helpscout/common/mvi/MviViewState;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviView$bindLifecycleOwner$1;->onChanged(Lcom/helpscout/common/mvi/MviViewState;)V

    return-void
.end method
