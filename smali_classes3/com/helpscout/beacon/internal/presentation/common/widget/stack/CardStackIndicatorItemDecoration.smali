.class public final Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u001b\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\u0008\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\n*\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u0004\u0018\u00010\t*\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\'\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J/\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "",
        "drawStackIndicator",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroidx/cardview/widget/CardView;",
        "",
        "getCompatHorizontalOffset",
        "(Landroidx/cardview/widget/CardView;)D",
        "Landroid/view/View;",
        "getCardView",
        "(Landroid/view/View;)Landroidx/cardview/widget/CardView;",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onDraw",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "view",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/drawable/Drawable;",
        "divider",
        "Landroid/graphics/drawable/Drawable;",
        "",
        "cardViewId",
        "Ljava/lang/Integer;",
        "<init>",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V",
        "Companion",
        "beacon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final COS_45:D

.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration$Companion;

.field private static final SHADOW_MULTIPLIER:F = 1.15f

.field private static final STACK_ITEM_THRESHOLD:I = 0x2


# instance fields
.field private final cardViewId:Ljava/lang/Integer;

.field private final divider:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration$Companion;

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "divider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->cardViewId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;)V

    return-void
.end method

.method private final drawStackIndicator(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 12

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v0, :cond_5

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "child"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->getCardView(Landroid/view/View;)Landroidx/cardview/widget/CardView;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eq v3, v2, :cond_3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/cardview/widget/CardView;->setElevation(F)V

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :cond_3
    :goto_2
    invoke-direct {p0, v5}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->getCompatHorizontalOffset(Landroidx/cardview/widget/CardView;)D

    move-result-wide v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_4

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    add-double/2addr v8, v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v10

    iget v11, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    sub-double/2addr v10, v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    double-to-int v7, v8

    double-to-int v8, v10

    invoke-virtual {v6, v7, v5, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method

.method private final getCardView(Landroid/view/View;)Landroidx/cardview/widget/CardView;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->cardViewId:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroidx/cardview/widget/CardView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Landroidx/cardview/widget/CardView;

    :cond_1
    return-object v1
.end method

.method private final getCompatHorizontalOffset(Landroidx/cardview/widget/CardView;)D
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getMaxCardElevation()F

    move-result v0

    const v1, 0x3f933333    # 1.15f

    mul-float v0, v0, v1

    float-to-double v0, v0

    const/4 v2, 0x1

    int-to-double v2, v2

    sget-wide v4, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->COS_45:D

    sub-double/2addr v2, v4

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result p1

    float-to-double v4, p1

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackIndicatorItemDecoration;->drawStackIndicator(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
