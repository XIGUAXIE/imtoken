.class public final Lcom/unionpay/mobile/android/widgets/o;
.super Landroid/view/View;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, -0x777778

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/unionpay/mobile/android/widgets/o;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput p3, p0, Lcom/unionpay/mobile/android/widgets/o;->b:I

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/o;->b:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getHeight()I

    move-result v0

    shr-int/2addr v0, v1

    int-to-float v5, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getWidth()I

    move-result v0

    shr-int/2addr v0, v1

    int-to-float v4, v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/o;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/o;->a:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, v4

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
