.class final Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;


# direct methods
.method constructor <init>(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;)V
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->h()F

    move-result v0

    const/16 v1, 0x64

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a()Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$b;

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;Z)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->g()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a()Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$b;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->e()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a()Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$b;

    invoke-static {}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->b()Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/ranges/ClosedFloatingPointRange;->getStart()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p1, v0, p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->m()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-static {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->a(Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;Z)V

    iget-object p1, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {p1}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->f()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h$a;->a:Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/presentation/ui/article/rating/ArticleRatingView$h;->d()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method
