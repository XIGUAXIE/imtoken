.class Lexternal/com/github/chrisbanes/photoview/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lexternal/com/github/chrisbanes/photoview/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/com/github/chrisbanes/photoview/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexternal/com/github/chrisbanes/photoview/k;


# direct methods
.method constructor <init>(Lexternal/com/github/chrisbanes/photoview/k;)V
    .locals 0

    iput-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 5

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/b;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->b(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->b(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lexternal/com/github/chrisbanes/photoview/i;->a(FF)V

    :cond_1
    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->i(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->o(Lexternal/com/github/chrisbanes/photoview/k;)V

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->p(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->q(Lexternal/com/github/chrisbanes/photoview/k;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/b;

    move-result-object v1

    invoke-virtual {v1}, Lexternal/com/github/chrisbanes/photoview/b;->b()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->r(Lexternal/com/github/chrisbanes/photoview/k;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->s(Lexternal/com/github/chrisbanes/photoview/k;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->s(Lexternal/com/github/chrisbanes/photoview/k;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->s(Lexternal/com/github/chrisbanes/photoview/k;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->t(Lexternal/com/github/chrisbanes/photoview/k;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->t(Lexternal/com/github/chrisbanes/photoview/k;)I

    move-result p1

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public a(FFF)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lexternal/com/github/chrisbanes/photoview/k$a;->a(FFFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 2

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    new-instance p2, Lexternal/com/github/chrisbanes/photoview/k$f;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->p(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lexternal/com/github/chrisbanes/photoview/k$f;-><init>(Lexternal/com/github/chrisbanes/photoview/k;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/k;Lexternal/com/github/chrisbanes/photoview/k$f;)Lexternal/com/github/chrisbanes/photoview/k$f;

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->u(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/k$f;

    move-result-object p1

    iget-object p2, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p2}, Lexternal/com/github/chrisbanes/photoview/k;->p(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/k;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->p(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lexternal/com/github/chrisbanes/photoview/k;->b(Lexternal/com/github/chrisbanes/photoview/k;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {p1, p2, v0, p3, p4}, Lexternal/com/github/chrisbanes/photoview/k$f;->a(IIII)V

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->p(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p2}, Lexternal/com/github/chrisbanes/photoview/k;->u(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/k$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(FFFFF)V
    .locals 2

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->l()F

    move-result v0

    iget-object v1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v1}, Lexternal/com/github/chrisbanes/photoview/k;->c(Lexternal/com/github/chrisbanes/photoview/k;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->d(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->d(Lexternal/com/github/chrisbanes/photoview/k;)Lexternal/com/github/chrisbanes/photoview/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lexternal/com/github/chrisbanes/photoview/g;->a(FFF)V

    :cond_1
    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {v0}, Lexternal/com/github/chrisbanes/photoview/k;->i(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->i(Lexternal/com/github/chrisbanes/photoview/k;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/k$a;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-static {p1}, Lexternal/com/github/chrisbanes/photoview/k;->o(Lexternal/com/github/chrisbanes/photoview/k;)V

    :cond_2
    return-void
.end method
