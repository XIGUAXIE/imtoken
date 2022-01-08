.class public Lexternal/com/github/chrisbanes/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field private a:Lexternal/com/github/chrisbanes/photoview/k;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lexternal/com/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lexternal/com/github/chrisbanes/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    new-instance v0, Lexternal/com/github/chrisbanes/photoview/k;

    invoke-direct {v0, p0}, Lexternal/com/github/chrisbanes/photoview/k;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lexternal/com/github/chrisbanes/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttacher()Lexternal/com/github/chrisbanes/photoview/k;
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->f()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->h()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->i()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->j()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->k()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->l()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0}, Lexternal/com/github/chrisbanes/photoview/k;->m()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {p2}, Lexternal/com/github/chrisbanes/photoview/k;->o()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexternal/com/github/chrisbanes/photoview/k;->o()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexternal/com/github/chrisbanes/photoview/k;->o()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lexternal/com/github/chrisbanes/photoview/k;->o()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->b(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->c(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lexternal/com/github/chrisbanes/photoview/d;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/d;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lexternal/com/github/chrisbanes/photoview/e;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/e;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lexternal/com/github/chrisbanes/photoview/f;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/f;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lexternal/com/github/chrisbanes/photoview/g;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/g;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lexternal/com/github/chrisbanes/photoview/h;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/h;)V

    return-void
.end method

.method public setOnViewDragListener(Lexternal/com/github/chrisbanes/photoview/i;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/i;)V

    return-void
.end method

.method public setOnViewTapListener(Lexternal/com/github/chrisbanes/photoview/j;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Lexternal/com/github/chrisbanes/photoview/j;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->d(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->e(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->f(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    if-nez v0, :cond_0

    iput-object p1, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->a(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lexternal/com/github/chrisbanes/photoview/PhotoView;->a:Lexternal/com/github/chrisbanes/photoview/k;

    invoke-virtual {v0, p1}, Lexternal/com/github/chrisbanes/photoview/k;->b(Z)V

    return-void
.end method
