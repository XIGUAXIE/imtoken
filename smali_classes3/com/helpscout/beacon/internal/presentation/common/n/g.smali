.class public abstract Lcom/helpscout/beacon/internal/presentation/common/n/g;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/common/n/f;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract b(I)Z
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p2

    iget-object p3, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-gt p1, p2, :cond_2

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ge p1, p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/g;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/g;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/g;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/f;->a(ILjava/lang/String;)V

    :cond_1
    if-eq p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
