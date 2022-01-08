.class public final Lcn/jiguang/analytics/android/view/f;
.super Landroid/widget/FrameLayout;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field private static final f:I


# instance fields
.field d:I

.field e:Lcn/jiguang/analytics/android/view/h;

.field private g:Landroid/view/WindowManager;

.field private h:Lcn/jiguang/analytics/android/view/j;

.field private i:Lcn/jiguang/analytics/android/view/k;

.field private j:I

.field private k:Lcn/jiguang/analytics/android/view/i;

.field private l:Lcn/jiguang/analytics/android/view/m;

.field private m:F

.field private n:F

.field private o:Z

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:Landroid/graphics/Point;

.field private u:[Landroid/view/View;

.field private v:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Landroid/view/View;

.field private x:Lcn/jiguang/analytics/android/view/g;

.field private y:Lcn/jiguang/analytics/android/view/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ECA4A3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/jiguang/analytics/android/view/f;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x7d5

    iput v0, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/analytics/android/view/f;->d:I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->a()V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v1

    sput v1, Lcn/jiguang/analytics/android/view/f;->c:I

    rem-int/lit8 v2, v1, 0x2

    sub-int/2addr v1, v2

    sput v1, Lcn/jiguang/analytics/android/view/f;->c:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x7d2

    const/16 v3, 0x13

    if-ge v1, v3, :cond_0

    :goto_0
    iput v2, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    goto :goto_1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v1, v3, :cond_1

    const/16 v1, 0x7f6

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    goto :goto_1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v1, v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "windowType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CircleView"

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_2
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v3, Lcn/jiguang/analytics/android/view/f;->a:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcn/jiguang/analytics/android/view/f;->b:I

    invoke-direct {p0}, Lcn/jiguang/analytics/android/view/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/jiguang/analytics/android/view/f;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/jiguang/analytics/android/view/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v1, v3}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v5, 0x8

    new-array v5, v5, [F

    aput v1, v5, v0

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v6, 0x2

    aput v1, v5, v6

    const/4 v6, 0x3

    aput v1, v5, v6

    const/4 v6, 0x4

    aput v1, v5, v6

    const/4 v6, 0x5

    aput v1, v5, v6

    const/4 v6, 0x6

    aput v1, v5, v6

    const/4 v6, 0x7

    aput v1, v5, v6

    const/4 v1, 0x0

    invoke-direct {v4, v5, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget v4, Lcn/jiguang/analytics/android/view/f;->f:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/16 v4, 0x7f

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v0, v3}, Lcn/jiguang/analytics/android/view/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v0, v3}, Lcn/jiguang/analytics/android/view/j;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    sget v8, Lcn/jiguang/analytics/android/view/n;->a:I

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MaskWindow:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcn/jiguang/analytics/android/view/k;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jiguang/analytics/android/view/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    iget v1, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/view/k;->a(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    sget v1, Lcn/jiguang/analytics/android/view/f;->a:I

    sget v3, Lcn/jiguang/analytics/android/view/f;->b:I

    invoke-virtual {v0, v1, v3}, Lcn/jiguang/analytics/android/view/k;->a(II)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/k;->a()V

    new-instance v0, Lcn/jiguang/analytics/android/view/i;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jiguang/analytics/android/view/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/view/f;->k:Lcn/jiguang/analytics/android/view/i;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleView context="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcn/jiguang/analytics/android/view/f;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcn/jiguang/analytics/android/view/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p3, v1, p2

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager$LayoutParams;

    if-nez p3, :cond_1

    new-instance p3, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    sget v5, Lcn/jiguang/analytics/android/view/n;->a:I

    const/4 v6, -0x3

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v0, p1, p3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->x:Lcn/jiguang/analytics/android/view/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcn/jiguang/analytics/android/view/g;

    invoke-direct {v0, p0}, Lcn/jiguang/analytics/android/view/g;-><init>(Lcn/jiguang/analytics/android/view/f;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/view/f;->x:Lcn/jiguang/analytics/android/view/g;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/m;->removeAllViews()V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    :cond_0
    return-void
.end method

.method private e()Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [I

    new-instance v4, Ljava/util/LinkedList;

    iget-object v5, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iget-object v5, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_0
    if-ltz v7, :cond_1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    const/4 v10, 0x0

    aget v11, v3, v10

    aget v12, v3, v8

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    iget-object v11, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget v12, p0, Lcn/jiguang/analytics/android/view/f;->d:I

    if-le v11, v12, :cond_3

    instance-of v1, v9, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "getElemetByPoint"

    invoke-static {v9, v1, v0}, Lcn/jiguang/analytics/android/e/g/d;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/c;->b(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x33

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/view/m;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcn/jiguang/analytics/android/view/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    iget v7, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    sget v8, Lcn/jiguang/analytics/android/view/n;->b:I

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CircleTipWindow:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    invoke-virtual {v3, v0}, Lcn/jiguang/analytics/android/view/m;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/view/m;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->bringToFront()V

    :cond_1
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/f/c;->a(Landroid/content/Context;Z)V

    :cond_2
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    sget v5, Lcn/jiguang/analytics/android/view/f;->c:I

    iget v6, p0, Lcn/jiguang/analytics/android/view/f;->j:I

    sget v7, Lcn/jiguang/analytics/android/view/n;->b:I

    const/4 v8, -0x3

    move-object v3, v0

    move v4, v5

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v1, Lcn/jiguang/analytics/android/view/f;->a:I

    sget v2, Lcn/jiguang/analytics/android/view/f;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v1, Lcn/jiguang/analytics/android/view/f;->b:I

    sget v2, Lcn/jiguang/analytics/android/view/f;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AnchorWindow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->k:Lcn/jiguang/analytics/android/view/i;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/i;->a()V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcn/jiguang/analytics/android/view/f;->setVisibility(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    invoke-virtual {v0, v2}, Lcn/jiguang/analytics/android/view/k;->setVisibility(I)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->bringToFront()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/m;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->k:Lcn/jiguang/analytics/android/view/i;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/view/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->k:Lcn/jiguang/analytics/android/view/i;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const-string v0, "CircleView"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    const/16 v4, 0x8

    if-eq v1, v2, :cond_10

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_10

    goto/16 :goto_9

    :cond_0
    iget-boolean v1, p0, Lcn/jiguang/analytics/android/view/f;->o:Z

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->q:F

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->l:Lcn/jiguang/analytics/android/view/m;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcn/jiguang/analytics/android/view/f;->d()V

    :cond_1
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Lcn/jiguang/analytics/android/view/f;->p:F

    iget v6, p0, Lcn/jiguang/analytics/android/view/f;->m:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcn/jiguang/analytics/android/view/f;->q:F

    iget v7, p0, Lcn/jiguang/analytics/android/view/f;->n:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    if-gez v5, :cond_2

    const/4 v5, 0x0

    :cond_2
    if-gez v6, :cond_3

    const/4 v6, 0x0

    :cond_3
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    sget v7, Lcn/jiguang/analytics/android/view/f;->a:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sget v8, Lcn/jiguang/analytics/android/view/f;->b:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/f;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eqz v2, :cond_5

    move v9, v7

    goto :goto_1

    :cond_5
    move v9, v8

    :goto_1
    if-le v5, v9, :cond_6

    move v5, v9

    :cond_6
    if-eqz v2, :cond_7

    move v7, v8

    :cond_7
    if-le v6, v7, :cond_8

    move v6, v7

    :cond_8
    if-gez v6, :cond_9

    const/4 v6, 0x0

    :cond_9
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcn/jiguang/analytics/android/view/f;->g:Landroid/view/WindowManager;

    invoke-interface {v2, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1}, Lcn/jiguang/analytics/android/view/f;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v2, p0, Lcn/jiguang/analytics/android/view/f;->r:F

    float-to-int v2, v2

    iget v5, p0, Lcn/jiguang/analytics/android/view/f;->s:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcn/jiguang/analytics/android/view/f;->p:F

    float-to-int v2, v2

    iget v5, p0, Lcn/jiguang/analytics/android/view/f;->q:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->t:Landroid/graphics/Point;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/view/f;->e()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    instance-of v5, v2, Landroid/webkit/WebView;

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iput-object v2, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v3, v2, v1}, Lcn/jiguang/analytics/android/view/f;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_9

    :cond_c
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/view/j;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_19

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v1, v3}, Lcn/jiguang/analytics/android/view/j;->setVisibility(I)V

    goto/16 :goto_9

    :cond_d
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v1, v4}, Lcn/jiguang/analytics/android/view/j;->setVisibility(I)V

    goto/16 :goto_9

    :cond_e
    :goto_3
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v1, v4}, Lcn/jiguang/analytics/android/view/j;->setVisibility(I)V

    iput-object v2, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    goto/16 :goto_9

    :cond_f
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->k:Lcn/jiguang/analytics/android/view/i;

    invoke-virtual {v1, v4}, Lcn/jiguang/analytics/android/view/i;->setVisibility(I)V

    goto/16 :goto_9

    :cond_10
    invoke-direct {p0}, Lcn/jiguang/analytics/android/view/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/jiguang/analytics/android/view/f;->a(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v3, p0, Lcn/jiguang/analytics/android/view/f;->o:Z

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->h:Lcn/jiguang/analytics/android/view/j;

    invoke-virtual {v1, v4}, Lcn/jiguang/analytics/android/view/j;->setVisibility(I)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    instance-of v1, v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    const-string v4, "cancleHoverNode"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcn/jiguang/analytics/android/e/g/d;->a(Landroid/view/View;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_11
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->w:Landroid/view/View;

    invoke-static {v1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Landroid/view/View;)V

    :goto_4
    return v2

    :cond_12
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->e:Lcn/jiguang/analytics/android/view/h;

    if-eqz v1, :cond_19

    iget v1, p0, Lcn/jiguang/analytics/android/view/f;->p:F

    iget v3, p0, Lcn/jiguang/analytics/android/view/f;->r:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_19

    iget v1, p0, Lcn/jiguang/analytics/android/view/f;->q:F

    iget v4, p0, Lcn/jiguang/analytics/android/view/f;->s:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_19

    invoke-direct {p0}, Lcn/jiguang/analytics/android/view/f;->d()V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->e:Lcn/jiguang/analytics/android/view/h;

    invoke-interface {v1}, Lcn/jiguang/analytics/android/view/h;->a()V

    return v2

    :cond_13
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->y:Lcn/jiguang/analytics/android/view/g;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->y:Lcn/jiguang/analytics/android/view/g;

    goto :goto_5

    :cond_14
    new-instance v1, Lcn/jiguang/analytics/android/view/g;

    const v4, 0x3f2aaaab

    invoke-direct {v1, p0, v4}, Lcn/jiguang/analytics/android/view/g;-><init>(Lcn/jiguang/analytics/android/view/f;F)V

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->y:Lcn/jiguang/analytics/android/view/g;

    :goto_5
    invoke-direct {p0, v1}, Lcn/jiguang/analytics/android/view/f;->a(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcn/jiguang/analytics/android/view/f;->o:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->r:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->s:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->q:F

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->i:Lcn/jiguang/analytics/android/view/k;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/view/k;->removeAllViews()V

    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->d()[Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/jiguang/analytics/android/view/f;->u:[Landroid/view/View;

    if-eqz v1, :cond_16

    array-length v1, v1

    if-nez v1, :cond_15

    goto :goto_7

    :cond_15
    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/f;->u:[Landroid/view/View;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_16

    aget-object v6, v1, v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v6, v3}, Lcn/jiguang/analytics/android/e/g;->a(Ljava/util/List;Landroid/view/View;Z)V

    iget-object v8, p0, Lcn/jiguang/analytics/android/view/f;->v:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_16
    :goto_7
    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v5, 0x400

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_17

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "activity FLAG_FULLSCREEN:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "activity top:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcn/jiguang/analytics/android/view/f;->d:I

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "status bar height:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jiguang/analytics/android/view/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onTouchEvent e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
