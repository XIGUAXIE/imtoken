.class public final Lcn/jiguang/analytics/android/view/k;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/jiguang/analytics/android/view/k;->setVisibility(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcn/jiguang/analytics/android/view/k;->b:I

    iget v3, p0, Lcn/jiguang/analytics/android/view/k;->c:I

    iget v4, p0, Lcn/jiguang/analytics/android/view/k;->a:I

    sget v5, Lcn/jiguang/analytics/android/view/n;->a:I

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TagsWindow:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcn/jiguang/analytics/android/view/k;->a:I

    return-void
.end method

.method public final a(II)V
    .locals 0

    iput p1, p0, Lcn/jiguang/analytics/android/view/k;->b:I

    iput p2, p0, Lcn/jiguang/analytics/android/view/k;->c:I

    return-void
.end method
