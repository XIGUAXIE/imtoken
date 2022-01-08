.class final Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
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
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic $oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->$oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->$oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;->$newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
