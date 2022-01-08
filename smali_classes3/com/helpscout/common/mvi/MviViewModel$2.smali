.class final Lcom/helpscout/common/mvi/MviViewModel$2;
.super Ljava/lang/Object;
.source "MviViewModel.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviViewModel;-><init>(Lcom/helpscout/common/mvi/MviReducer;)V
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
        "Lcom/helpscout/common/lifecycle/Event<",
        "+TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u000c\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u0004\"\u000c\u0008\u0001\u0010\u0005*\u00060\u0003j\u0002`\u0006\"\u000c\u0008\u0002\u0010\u0007*\u00060\u0003j\u0002`\u00082\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u0002H\u0007 \u000b*\n\u0012\u0004\u0012\u0002H\u0007\u0018\u00010\n0\nH\n\u00a2\u0006\u0002\u0008\u000c"
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
        "viewEvent",
        "Lcom/helpscout/common/lifecycle/Event;",
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
.field final synthetic this$0:Lcom/helpscout/common/mvi/MviViewModel;


# direct methods
.method constructor <init>(Lcom/helpscout/common/mvi/MviViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviViewModel$2;->this$0:Lcom/helpscout/common/mvi/MviViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/helpscout/common/lifecycle/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/lifecycle/Event<",
            "+TE;>;)V"
        }
    .end annotation

    .line 28
    instance-of v0, p1, Lcom/helpscout/common/mvi/MviError;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/helpscout/common/mvi/MviError;

    invoke-interface {v0}, Lcom/helpscout/common/mvi/MviError;->shouldRethrow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0}, Lcom/helpscout/common/mvi/MviError;->getException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel$2;->this$0:Lcom/helpscout/common/mvi/MviViewModel;

    invoke-virtual {v0}, Lcom/helpscout/common/mvi/MviViewModel;->getViewEvents()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/helpscout/common/lifecycle/Event;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviViewModel$2;->onChanged(Lcom/helpscout/common/lifecycle/Event;)V

    return-void
.end method
