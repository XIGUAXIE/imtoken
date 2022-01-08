.class public abstract Lcom/helpscout/beacon/internal/presentation/common/n/c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/a/d/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/common/n/c$c;,
        Lcom/helpscout/beacon/internal/presentation/common/n/c$e;,
        Lcom/helpscout/beacon/internal/presentation/common/n/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/helpscout/beacon/a/d/a/a;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private final e:Lkotlin/jvm/functions/Function1;
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
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, "itemClick"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/n/c$a;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/c$a;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->a:Lkotlin/Lazy;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/helpscout/beacon/internal/presentation/common/n/c$b;->a:Lcom/helpscout/beacon/internal/presentation/common/n/c$b;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/c;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method private final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c:Z

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$d;
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "moreResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    add-int/2addr v0, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c:Z

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    :goto_0
    return-void
.end method

.method public final b()Lcom/helpscout/beacon/internal/presentation/common/b;
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/internal/presentation/common/b;

    return-object v0
.end method

.method public abstract b(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/helpscout/beacon/internal/presentation/common/n/c$c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    add-int/lit8 v1, v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget p1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_list_loading_more:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c()I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d()I

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

.method public final h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c:Z

    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/c$c;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/common/n/c;->e:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/c$c;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c()I

    move-result p2

    if-ne v0, p2, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/c$d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/n/c$d;->a()V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;->a()V

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

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->d()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->c()I

    move-result v1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->a(Landroid/view/ViewGroup;)Lcom/helpscout/beacon/internal/presentation/common/n/c$d;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;

    sget v1, Lcom/helpscout/beacon/ui/R$layout;->hs_beacon_item_list_loading_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflater.inflate(\n      \u2026  false\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/helpscout/beacon/internal/presentation/common/n/c;->b()Lcom/helpscout/beacon/internal/presentation/common/b;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/helpscout/beacon/internal/presentation/common/n/c$e;-><init>(Landroid/view/View;Lcom/helpscout/beacon/internal/presentation/common/b;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
