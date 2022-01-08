.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;Z)V

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;

    invoke-static {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->l()V

    :cond_0
    return-void
.end method
