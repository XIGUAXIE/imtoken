.class public Lcom/unionpay/mobile/android/upwidget/UPRadiationView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->d:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->d:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b:I

    div-int/lit8 p2, p2, 0x2

    sget p1, Lcom/unionpay/mobile/android/global/b;->n:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->c:I

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/t;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/upwidget/t;-><init>(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->e:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "size illegal"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(IF)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V
    .locals 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;

    invoke-direct {v0, p0, v2}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;-><init>(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;B)V

    iput v2, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    iput v1, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    iget v1, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    iget v1, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    iget v2, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a(IF)Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, v0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;

    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    goto :goto_1

    :cond_1
    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    add-int/lit8 v4, v4, 0xa

    iput v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    if-gez v4, :cond_2

    iput v2, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    :cond_2
    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iput v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    iget-object v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    iget v5, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    iget v5, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->d:Landroid/content/Context;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    if-ne v3, v4, :cond_3

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;

    invoke-direct {v3, p0, v2}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;-><init>(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;B)V

    iput v2, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    iput v1, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iput v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    iget v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->d:I

    iget v5, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->c:F

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a(IF)Landroid/graphics/Paint;

    move-result-object v4

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->c:I

    int-to-float v3, v3

    iget v4, v1, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->b:I

    int-to-float v4, v4

    iget-object v1, v1, Lcom/unionpay/mobile/android/upwidget/UPRadiationView$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
