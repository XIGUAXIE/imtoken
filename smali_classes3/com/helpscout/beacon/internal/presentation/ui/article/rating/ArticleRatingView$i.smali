.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:F

.field private f:F

.field private final g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    return-object p0
.end method

.method private final a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->c:Z

    invoke-direct {p0, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a(Z)V

    iget-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->d:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->d:Z

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->n()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->d:Z

    return-void
.end method

.method private final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->b:Z

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {v0, p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->b:Z

    return p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->e:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->f:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/16 v0, 0x64

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_1

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a(Z)V

    iget-boolean p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->c:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->g:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p2}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->c()V

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->e:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->f:F

    invoke-direct {p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a(Z)V

    iput-boolean v1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->c:Z

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;->a:Landroid/os/Handler;

    new-instance p2, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;

    invoke-direct {p2, p0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i$a;-><init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$i;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return v1
.end method
