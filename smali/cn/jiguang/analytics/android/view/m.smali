.class public final Lcn/jiguang/analytics/android/view/m;
.super Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x41000000    # -0.5f

    invoke-virtual {p0, p1}, Lcn/jiguang/analytics/android/view/m;->setBackgroundColor(I)V

    new-instance p1, Lcn/jiguang/analytics/android/view/l;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/jiguang/analytics/android/view/l;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42280000    # 42.0f

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/m;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget v3, Lcn/jiguang/analytics/android/view/f;->b:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    sget v5, Lcn/jiguang/analytics/android/view/f;->c:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1, v2}, Lcn/jiguang/analytics/android/view/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0xb0b0c

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v2, Lcn/jiguang/analytics/android/view/f;->c:I

    div-int/2addr v2, v4

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/m;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/m;->a(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p1, v3}, Lcn/jiguang/analytics/android/view/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
