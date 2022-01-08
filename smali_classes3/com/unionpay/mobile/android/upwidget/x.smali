.class public final Lcom/unionpay/mobile/android/upwidget/x;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/x;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/x;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/x;->setOrientation(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/x;->a:Landroid/content/Context;

    const/16 v0, 0x10

    if-eqz p2, :cond_0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v2, Lcom/unionpay/mobile/android/global/b;->o:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1, v3}, Lcom/unionpay/mobile/android/upwidget/x;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz p2, :cond_1

    sget p2, Lcom/unionpay/mobile/android/global/a;->d:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_1
    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Lcom/unionpay/mobile/android/upwidget/x;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/upwidget/x;
    .locals 1

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/x;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mobile/android/upwidget/x;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    const p0, -0xffb677    # -1.70523E38f

    const/high16 p1, -0x10000

    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/utils/h;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/upwidget/x;->a(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/x;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
