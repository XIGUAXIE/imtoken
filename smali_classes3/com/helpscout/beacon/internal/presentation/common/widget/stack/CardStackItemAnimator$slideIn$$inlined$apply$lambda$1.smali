.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->slideIn(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/jvm/functions/Function0;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "com/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$1$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "Landroid/view/animation/Animation;",
        "animation",
        "",
        "onAnimationRepeat",
        "(Landroid/view/animation/Animation;)V",
        "onAnimationEnd",
        "onAnimationStart",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $dispatchFinishEvent$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;->$dispatchFinishEvent$inlined:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->access$setRunning$p(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Z)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;->$dispatchFinishEvent$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;->this$0:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->access$setRunning$p(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Z)V

    return-void
.end method
