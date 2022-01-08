.class public final Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;

.field private final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "viewHolderFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFailToDeliverCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOpenAttachment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentUploadFailsListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onImageTap"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g;->a()Lcom/helpscout/beacon/internal/presentation/ui/chat/l/g$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;

    iput-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    new-instance p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;

    invoke-direct {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;-><init>()V

    :cond_0
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V
    .locals 1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/o;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/o;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/o;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/r;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/r;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/r;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported View Holder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V
    .locals 1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/b;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/k;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/m;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    :goto_0
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported View Holder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V
    .locals 1

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/e;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;

    invoke-virtual {p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/q;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;)I

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/c;

    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/b;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/d;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;

    invoke-direct {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/helpscout/beacon/internal/presentation/ui/chat/m/f;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->a:Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;

    iget-object v4, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->b:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->c:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->d:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/f;->e:Lkotlin/jvm/functions/Function2;

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/i;->a(Landroid/view/ViewGroup;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    instance-of v0, p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/chat/l/d;->b()V

    :cond_0
    return-void
.end method
