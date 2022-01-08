.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008.\u0010\u001dJ\'\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\n\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJC\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u000bJ9\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u001dJ\u000f\u0010\"\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008%\u0010\u000bJ%\u0010%\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00022\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0016\u00a2\u0006\u0004\u0008%\u0010)R\u0016\u0010+\u001a\u00020*8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010\"\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010-\u00a8\u0006/"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;",
        "Landroidx/recyclerview/widget/SimpleItemAnimator;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "holder",
        "Lkotlin/Function0;",
        "",
        "dispatchFinishEvent",
        "",
        "slideIn",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/jvm/functions/Function0;)Z",
        "animateAdd",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z",
        "oldHolder",
        "newHolder",
        "",
        "fromLeft",
        "fromTop",
        "toLeft",
        "toTop",
        "animateChange",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z",
        "animateRemove",
        "fromX",
        "fromY",
        "toX",
        "toY",
        "animateMove",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z",
        "runPendingAnimations",
        "()V",
        "item",
        "endAnimation",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V",
        "endAnimations",
        "isRunning",
        "()Z",
        "viewHolder",
        "canReuseUpdatedViewHolder",
        "",
        "",
        "payloads",
        "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z",
        "Landroid/view/animation/TranslateAnimation;",
        "slideInAnimation",
        "Landroid/view/animation/TranslateAnimation;",
        "Z",
        "<init>",
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
.field private isRunning:Z

.field private final slideInAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iput-object v9, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->slideInAnimation:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method public static final synthetic access$isRunning$p(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->isRunning:Z

    return p0
.end method

.method public static final synthetic access$setRunning$p(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->isRunning:Z

    return-void
.end method

.method private final slideIn(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/jvm/functions/Function0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackViewAnimatorHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackViewAnimatorHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackViewAnimatorHelper;->shouldAnimate()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->slideInAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;

    invoke-direct {v2, p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$slideIn$$inlined$apply$lambda$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateAdd$1;

    invoke-direct {v0, p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateAdd$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->slideIn(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    return p1
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    new-instance p3, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator$animateChange$1;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->slideIn(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lkotlin/jvm/functions/Function0;)Z

    move-result p1

    return p1
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public endAnimations()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackItemAnimator;->isRunning:Z

    return v0
.end method

.method public runPendingAnimations()V
    .locals 0

    return-void
.end method
