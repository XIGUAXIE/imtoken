.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008 \u0010!J%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\u000bR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\n \u0010*\u0004\u0018\u00010\u00050\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R.\u0010\u0016\u001a\u001a\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u00030\u0003 \u0010*\u0006\u0012\u0002\u0008\u00030\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R%\u0010\u001c\u001a\n \u0010*\u0004\u0018\u00010\u00050\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;",
        "",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "adapter",
        "Landroid/view/animation/LayoutAnimationController;",
        "layoutAnimation",
        "",
        "apply",
        "(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/animation/LayoutAnimationController;)V",
        "show",
        "()V",
        "hide",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;",
        "skeletonAdapter",
        "Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;",
        "kotlin.jvm.PlatformType",
        "originalLayoutAnimationController",
        "Landroid/view/animation/LayoutAnimationController;",
        "",
        "firstRun",
        "Z",
        "originalAdapter",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "skeletonLayoutAnimation$delegate",
        "Lkotlin/Lazy;",
        "getSkeletonLayoutAnimation",
        "()Landroid/view/animation/LayoutAnimationController;",
        "skeletonLayoutAnimation",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
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
.field private firstRun:Z

.field private final originalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final originalLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final skeletonAdapter:Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;

.field private final skeletonLayoutAnimation$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;

    invoke-direct {v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->skeletonAdapter:Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->originalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->originalLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper$skeletonLayoutAnimation$2;

    invoke-direct {p1, p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper$skeletonLayoutAnimation$2;-><init>(Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->skeletonLayoutAnimation$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->firstRun:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "recyclerView.adapter cannot be null when using the SkeletonLoadingHelper"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$getRecyclerView$p(Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private final apply(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/animation/LayoutAnimationController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;",
            "Landroid/view/animation/LayoutAnimationController;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->scheduleLayoutAnimation()V

    return-void
.end method

.method private final getSkeletonLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->skeletonLayoutAnimation$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method


# virtual methods
.method public final hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->firstRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->firstRun:Z

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->originalLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->getSkeletonLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->originalAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v2, "layoutAnimation"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->apply(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method

.method public final show()V
    .locals 3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->skeletonAdapter:Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonAdapter;

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->getSkeletonLayoutAnimation()Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    const-string v2, "skeletonLayoutAnimation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/SkeletonLoadingHelper;->apply(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/animation/LayoutAnimationController;)V

    return-void
.end method
