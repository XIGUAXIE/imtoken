.class public final Lcom/helpscout/beacon/internal/presentation/common/n/b;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->b:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/b;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p4}, Landroidx/core/widget/NestedScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->b:Landroid/view/View;

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    iget v0, p4, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->a:Landroid/view/View;

    if-eqz p1, :cond_3

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-static {p1, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    :cond_3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_3

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->a:Landroid/view/View;

    if-eqz p3, :cond_1

    invoke-static {p3, p2}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/b;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-static {p2, p1}, Lcom/helpscout/beacon/internal/presentation/extensions/a/l;->a(Landroid/view/View;Z)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
