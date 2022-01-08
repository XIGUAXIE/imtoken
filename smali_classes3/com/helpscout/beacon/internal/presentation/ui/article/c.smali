.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/c;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/b;",
        "Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;)V
    .locals 1

    const-string v0, "articleDetailItemClicks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/article/d;->a()Lcom/helpscout/beacon/internal/presentation/ui/article/d$a;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

    return-void
.end method

.method private final a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;)V
    .locals 1

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;->a()Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->b()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/b$d$a;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_0
    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->a()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;
    .locals 7

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;

    new-instance v6, Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "parent.context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v6}, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V

    return-object p2
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    const-string v0, "article"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a:Z

    iget-object v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->b:Lcom/helpscout/beacon/internal/presentation/ui/article/a$b;

    invoke-virtual {p1, p2, v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZLcom/helpscout/beacon/internal/presentation/ui/article/a$b;)V

    return-void
.end method

.method public a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;I)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    instance-of v0, p3, Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;

    if-eqz v0, :cond_1

    check-cast p3, Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;

    invoke-direct {p0, p1, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;Lcom/helpscout/beacon/internal/presentation/ui/article/h$a;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a:Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/c;->a(Landroid/view/ViewGroup;I)Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;

    move-result-object p1

    return-object p1
.end method
