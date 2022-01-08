.class final Lcn/jiguang/analytics/android/view/g;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/f;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Lcn/jiguang/analytics/android/view/f;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/g;->a:Lcn/jiguang/analytics/android/view/f;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/android/view/g;->a(F)V

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/analytics/android/view/f;F)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/g;->a:Lcn/jiguang/analytics/android/view/f;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    const p1, 0x3f2aaaab

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/android/view/g;->a(F)V

    return-void
.end method

.method private a(F)V
    .locals 3

    sget v0, Lcn/jiguang/analytics/android/view/f;->c:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x64

    rem-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->c:I

    sget v0, Lcn/jiguang/analytics/android/view/f;->c:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcn/jiguang/analytics/android/view/g;->c:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->d:F

    sget v0, Lcn/jiguang/analytics/android/view/f;->c:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->e:F

    const-string v0, "#FF1B1B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->f:I

    const/high16 v0, 0x43190000    # 153.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->g:I

    const-string v0, "#E65959"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->h:I

    const/high16 v0, 0x43650000    # 229.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->i:I

    const-string v0, "#B65757"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/jiguang/analytics/android/view/g;->j:I

    const/high16 v0, 0x42fe0000    # 127.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/g;->k:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcn/jiguang/analytics/android/view/g;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcn/jiguang/analytics/android/view/g;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcn/jiguang/analytics/android/view/g;->e:F

    iget-object v2, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcn/jiguang/analytics/android/view/g;->h:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcn/jiguang/analytics/android/view/g;->i:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcn/jiguang/analytics/android/view/g;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcn/jiguang/analytics/android/view/g;->e:F

    iget v1, p0, Lcn/jiguang/analytics/android/view/g;->d:F

    iget v2, p0, Lcn/jiguang/analytics/android/view/g;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcn/jiguang/analytics/android/view/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
