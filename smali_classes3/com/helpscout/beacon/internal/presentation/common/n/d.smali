.class public abstract Lcom/helpscout/beacon/internal/presentation/common/n/d;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/n/d$e;,
        Lcom/helpscout/beacon/internal/presentation/common/n/d$c;,
        Lcom/helpscout/beacon/internal/presentation/common/n/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ListAdapter<",
        "TT;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/helpscout/beacon/a/d/a/a;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Z

.field private c:Z

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/n/d$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lcom/helpscout/beacon/internal/presentation/common/n/d$b;->a:Lcom/helpscout/beacon/internal/presentation/common/n/d$b;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/d;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic a(Lcom/helpscout/beacon/internal/presentation/common/n/d;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hideLoadingMore"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method private final d()I
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/common/n/d$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/helpscout/beacon/internal/presentation/common/n/d$c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public a(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/d$d;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/n/d$d;

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(getFooterLayout(), parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d$d;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c:Z

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "moreResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c:Z

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c:Z

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemRemoved(I)V

    :goto_0
    return-void
.end method

.method public b(I)I
    .locals 0

    const/16 p1, -0xc8

    return p1
.end method

.method public c()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "currentList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    sget v0, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_list_loading_more:I

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 3

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    add-int/2addr v2, v1

    return v2
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->f()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c()I

    move-result v0

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/a/d/a/a$a;->a(Lcom/helpscout/beacon/a/d/a/a;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/d$d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d$d;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/d$e;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d$e;->a()V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/d$c;

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/d;->d:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/d$c;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->c()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/d$d;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->f()I

    move-result v1

    if-ne p2, v1, :cond_1

    new-instance v1, Lcom/helpscout/beacon/internal/presentation/common/n/d$e;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(viewType, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->b()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/d$e;-><init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    move-object p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/d;->a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/common/n/d$c;

    move-result-object p1

    :goto_0
    return-object p1
.end method
