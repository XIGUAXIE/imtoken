.class public final Lcom/unionpay/mobile/android/views/order/m;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/m;->a:Landroid/content/Context;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/unionpay/mobile/android/views/order/m;->setPadding(IIII)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/views/order/m;->setBackgroundColor(I)V

    new-instance v2, Lcom/unionpay/mobile/android/views/order/n;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/views/order/n;-><init>(Lcom/unionpay/mobile/android/views/order/m;)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/views/order/m;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/views/order/m;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/m;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Lcom/unionpay/mobile/android/views/order/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/views/order/m;->c:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xf

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/views/order/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/m;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->f:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/m;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/m;->e:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/unionpay/mobile/android/views/order/m;->f:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(ZLorg/json/JSONArray;Lorg/json/JSONObject;)V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/m;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v1, 0x2

    if-le p1, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    move v1, p1

    :cond_4
    :goto_2
    if-eqz p2, :cond_7

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/m;->a:Landroid/content/Context;

    invoke-static {p1, p2, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/views/order/m;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/m;->a:Landroid/content/Context;

    invoke-static {v0, p2, v1, p1}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_6

    new-instance p1, Lcom/unionpay/mobile/android/widgets/ad;

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/m;->a:Landroid/content/Context;

    const-string v0, ""

    invoke-direct {p1, p2, p3, v0}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/ad;->g()V

    sget p2, Lcom/unionpay/mobile/android/global/b;->m:F

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/ad;->a(F)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/views/order/m;->a:Landroid/content/Context;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p3, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/m;->c:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/views/order/m;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_7
    :goto_3
    const-string p1, "uppay"

    const-string p2, "init order detail = null!!!"

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
