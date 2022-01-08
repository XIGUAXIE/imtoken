.class final synthetic Lcom/helpscout/common/mvi/MviViewModel$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MviViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviViewModel;-><init>(Lcom/helpscout/common/mvi/MviReducer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/helpscout/common/mvi/MviViewState<",
        "TS;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u000c\u0008\u0000\u0010\u0002*\u00060\u0003j\u0002`\u0004\"\u000c\u0008\u0001\u0010\u0005*\u00060\u0003j\u0002`\u0006\"\u000c\u0008\u0002\u0010\u0007*\u00060\u0003j\u0002`\u00082\u001a\u0010\t\u001a\u0016\u0012\u0004\u0012\u0002H\u0005 \u000b*\n\u0012\u0004\u0012\u0002H\u0005\u0018\u00010\n0\n\u00a2\u0006\u0002\u0008\u000c"
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
        "p1",
        "Lcom/helpscout/common/mvi/MviViewState;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .locals 7

    const-class v3, Landroidx/lifecycle/MediatorLiveData;

    const/4 v1, 0x1

    const-string v4, "setValue"

    const-string v5, "setValue(Ljava/lang/Object;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/helpscout/common/mvi/MviViewState;

    invoke-virtual {p0, p1}, Lcom/helpscout/common/mvi/MviViewModel$1;->invoke(Lcom/helpscout/common/mvi/MviViewState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/helpscout/common/mvi/MviViewState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/common/mvi/MviViewState<",
            "TS;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/common/mvi/MviViewModel$1;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/MediatorLiveData;

    .line 26
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
