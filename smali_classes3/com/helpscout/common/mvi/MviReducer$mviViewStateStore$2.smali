.class final Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MviReducer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/common/mvi/MviReducer;-><init>(Lcom/helpscout/common/mvi/MviCoroutineConfig;Lcom/helpscout/common/mvi/MviViewStateStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/helpscout/common/mvi/MviViewStateStore<",
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
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000c\u0008\u0000\u0010\u0003*\u00060\u0004j\u0002`\u0005\"\u000c\u0008\u0001\u0010\u0002*\u00060\u0004j\u0002`\u0006\"\u000c\u0008\u0002\u0010\u0007*\u00060\u0004j\u0002`\u0008H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "Lcom/helpscout/common/mvi/MviViewStateStore;",
        "S",
        "A",
        "",
        "Lcom/helpscout/common/mvi/ViewAction;",
        "Lcom/helpscout/common/mvi/ViewState;",
        "E",
        "Lcom/helpscout/common/mvi/ViewEvent;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $viewStateStore:Lcom/helpscout/common/mvi/MviViewStateStore;

.field final synthetic this$0:Lcom/helpscout/common/mvi/MviReducer;


# direct methods
.method constructor <init>(Lcom/helpscout/common/mvi/MviReducer;Lcom/helpscout/common/mvi/MviViewStateStore;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    iput-object p2, p0, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;->$viewStateStore:Lcom/helpscout/common/mvi/MviViewStateStore;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/helpscout/common/mvi/MviViewStateStore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/helpscout/common/mvi/MviViewStateStore<",
            "TS;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;->$viewStateStore:Lcom/helpscout/common/mvi/MviViewStateStore;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/common/mvi/DefaultMviViewStateStore;

    iget-object v1, p0, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;->this$0:Lcom/helpscout/common/mvi/MviReducer;

    invoke-virtual {v1}, Lcom/helpscout/common/mvi/MviReducer;->getReducerName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/helpscout/common/mvi/DefaultMviViewStateStore;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/helpscout/common/mvi/MviViewStateStore;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/helpscout/common/mvi/MviReducer$mviViewStateStore$2;->invoke()Lcom/helpscout/common/mvi/MviViewStateStore;

    move-result-object v0

    return-object v0
.end method
