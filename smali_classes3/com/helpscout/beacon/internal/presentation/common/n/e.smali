.class public abstract Lcom/helpscout/beacon/internal/presentation/common/n/e;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private final f:I

.field private final g:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b:I

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->e:Z

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->f:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->d:Z

    return-void
.end method

.method public abstract a(IILandroidx/recyclerview/widget/RecyclerView;)V
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->e:Z

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->d:Z

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->f:I

    iput v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->e:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->d:Z

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->e:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->d:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p3

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->b:I

    add-int/2addr v0, v1

    if-le v0, p3, :cond_1

    if-le p2, v1, :cond_1

    iget p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->c:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->c:I

    invoke-virtual {p0, p2, p3, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/e;->a(IILandroidx/recyclerview/widget/RecyclerView;)V

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/e;->d:Z

    :cond_1
    :goto_0
    return-void
.end method
