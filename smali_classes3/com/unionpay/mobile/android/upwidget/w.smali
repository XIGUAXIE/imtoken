.class public final Lcom/unionpay/mobile/android/upwidget/w;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/unionpay/mobile/android/upwidget/x;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/w;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/w;->b:Lcom/unionpay/mobile/android/upwidget/x;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/upwidget/w;->setOrientation(I)V

    iput-object p3, p0, Lcom/unionpay/mobile/android/upwidget/w;->a:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/upwidget/x;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/upwidget/x;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/w;->b:Lcom/unionpay/mobile/android/upwidget/x;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v0

    const-string p2, "<u>%s</u>"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/x;->a(Ljava/lang/CharSequence;)V

    const p1, -0xcf8b55

    const p2, -0xf2c28f

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/h;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/w;->b:Lcom/unionpay/mobile/android/upwidget/x;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/upwidget/x;->a(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/w;->b:Lcom/unionpay/mobile/android/upwidget/x;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/w;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lorg/json/JSONObject;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/upwidget/w;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "href"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/w;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/unionpay/mobile/android/upwidget/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/w;->b:Lcom/unionpay/mobile/android/upwidget/x;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/x;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
