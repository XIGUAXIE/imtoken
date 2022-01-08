.class public final Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/helpscout/beacon/internal/presentation/common/widget/stack/CardStackViewAnimatorHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/helpscout/beacon/internal/presentation/ui/article/b;

.field private b:Z

.field private final c:Lcom/helpscout/beacon/internal/presentation/ui/article/a;


# direct methods
.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/a;)V
    .locals 1

    const-string v0, "articleDetailItemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->c()V

    return-void
.end method

.method public final a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;ZLcom/helpscout/beacon/internal/presentation/ui/article/a$b;)V
    .locals 2

    const-string v0, "article"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "articleDetailItemClicks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/b;IZLcom/helpscout/beacon/internal/presentation/ui/article/a$b;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->c:Lcom/helpscout/beacon/internal/presentation/ui/article/a;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/a;->e()V

    return-void
.end method

.method public shouldAnimate()Z
    .locals 2

    iget-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/b;

    instance-of v0, v0, Lcom/helpscout/beacon/internal/presentation/ui/article/b$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/c$a;->b:Z

    :cond_1
    return v0
.end method
