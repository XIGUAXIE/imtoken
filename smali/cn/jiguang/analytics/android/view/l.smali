.class public final Lcn/jiguang/analytics/android/view/l;
.super Landroid/widget/ImageView;


# instance fields
.field a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/l;->a:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/l;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f19999a    # 0.6f

    mul-float v1, v1, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v4

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float v4, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/l;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/l;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
