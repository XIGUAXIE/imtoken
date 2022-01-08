.class public Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u00088\u00109J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\rJ\'\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J/\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\"\u0010!\u001a\u00020 8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R*\u0010(\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u00108\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u0010.\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010)\u001a\u0004\u0008/\u0010+\"\u0004\u00080\u0010-R\u0016\u00101\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\"\u00103\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00083\u0010)\u001a\u0004\u00084\u0010+\"\u0004\u00085\u0010-\u00a8\u0006;"
    }
    d2 = {
        "Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "parent",
        "",
        "drawVertical",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V",
        "Landroid/view/View;",
        "view",
        "",
        "shouldHideDivider",
        "(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutManager",
        "",
        "position",
        "shouldHideDividerForNextItem",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Z",
        "isLastItem",
        "c",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "state",
        "onDraw",
        "(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "Landroid/graphics/Rect;",
        "outRect",
        "getItemOffsets",
        "(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V",
        "shouldHideDividersForItemAt",
        "(I)Z",
        "Landroid/graphics/drawable/Drawable;",
        "divider",
        "Landroid/graphics/drawable/Drawable;",
        "getDivider",
        "()Landroid/graphics/drawable/Drawable;",
        "setDivider",
        "(Landroid/graphics/drawable/Drawable;)V",
        "value",
        "horizontalSpacing",
        "I",
        "getHorizontalSpacing",
        "()I",
        "setHorizontalSpacing",
        "(I)V",
        "startSpacing",
        "getStartSpacing",
        "setStartSpacing",
        "mBounds",
        "Landroid/graphics/Rect;",
        "endSpacing",
        "getEndSpacing",
        "setEndSpacing",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field private static final ATTRS:[I

.field public static final Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration$Companion;


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private endSpacing:I

.field private horizontalSpacing:I

.field private final mBounds:Landroid/graphics/Rect;

.field private startSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->Companion:Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration$Companion;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->mBounds:Landroid/graphics/Rect;

    sget-object v0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string v0, "context.obtainStyledAttributes(ATTRS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    iget v2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->startSpacing:I

    add-int/2addr v0, v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->endSpacing:I

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->startSpacing:I

    add-int/2addr v0, v1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->endSpacing:I

    sub-int/2addr v2, v3

    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    :cond_1
    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "child"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->shouldHideDivider(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v4

    add-int/2addr v5, v4

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v4, v5, v4

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private final isLastItem(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    instance-of v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p2

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private final shouldHideDivider(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "parent.layoutManager ?: return false"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->shouldHideDividersForItemAt(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->isLastItem(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->shouldHideDividerForNextItem(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final shouldHideDividerForNextItem(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Z
    .locals 4

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr p2, v2

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->shouldHideDividersForItemAt(I)Z

    move-result v1

    goto :goto_2

    :cond_2
    if-ge v3, p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->shouldHideDividersForItemAt(I)Z

    move-result v1

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public final getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getEndSpacing()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->endSpacing:I

    return v0
.end method

.method public final getHorizontalSpacing()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->horizontalSpacing:I

    return v0
.end method

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

    invoke-direct {p0, p2, p3}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->isLastItem(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public final getStartSpacing()I
    .locals 1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->startSpacing:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->divider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setEndSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->endSpacing:I

    return-void
.end method

.method public final setHorizontalSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->horizontalSpacing:I

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->startSpacing:I

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->endSpacing:I

    return-void
.end method

.method public final setStartSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/widget/recyclerview/HideLastDividerVerticalItemDecoration;->startSpacing:I

    return-void
.end method

.method public shouldHideDividersForItemAt(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
