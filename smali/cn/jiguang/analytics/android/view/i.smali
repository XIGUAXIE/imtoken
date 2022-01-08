.class public final Lcn/jiguang/analytics/android/view/i;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:Landroid/view/WindowManager;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x7d5

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->a:I

    const p1, 0x3f95c28f    # 1.17f

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->h:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x7d2

    const/16 v1, 0x13

    if-ge p1, v1, :cond_0

    :goto_0
    iput v0, p0, Lcn/jiguang/analytics/android/view/i;->a:I

    goto :goto_1

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le p1, v1, :cond_1

    const/16 p1, 0x7f6

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->a:I

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/i;->b:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->g:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {p1, v1}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->c:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->d:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->f:I

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcn/jiguang/analytics/android/view/i;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcn/jiguang/analytics/android/view/i;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x138

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x33

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CircleMagnifierWindow:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcn/jiguang/analytics/android/view/i;->setVisibility(I)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/i;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
