.class public final Lcom/unionpay/mobile/android/views/order/i;
.super Lcom/unionpay/mobile/android/views/order/AbstractMethod;


# instance fields
.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONObject;

.field private i:Lcom/unionpay/mobile/android/upviews/a;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/i;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/views/order/i;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 10

    const-string v0, "password"

    const-string v1, "placeholder"

    const-string v2, "type"

    const-string v3, "user_name"

    const-string v4, "name"

    const-string v5, "label"

    const-string v6, ""

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/unionpay/mobile/android/views/order/i;->a(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "value"

    invoke-virtual {v8, v9, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p0, "regexp"

    const-string v9, "[.@_A-Za-z0-9]{1,64}"

    invoke-virtual {v8, p0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "tip"

    invoke-virtual {v8, p0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p0, p0, Lcom/unionpay/mobile/android/languages/c;->bw:Ljava/lang/String;

    invoke-virtual {v8, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bx:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v7
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;
    .locals 1

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, -0x1

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()I
    .locals 1

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/i;
    .locals 1

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public final b(Landroid/widget/RelativeLayout;)V
    .locals 4

    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/views/order/i;->e(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()Lcom/unionpay/mobile/android/upviews/a$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Landroid/widget/RelativeLayout;)V
    .locals 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->g:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/unionpay/mobile/android/views/order/i;->a(Landroid/widget/TextView;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/unionpay/mobile/android/views/order/j;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/views/order/j;-><init>(Lcom/unionpay/mobile/android/views/order/i;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v6, v7}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/i;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->h:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/views/order/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/unionpay/mobile/android/views/order/i;->a(Landroid/widget/TextView;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    new-instance v6, Lcom/unionpay/mobile/android/views/order/k;

    invoke-direct {v6, p0}, Lcom/unionpay/mobile/android/views/order/k;-><init>(Lcom/unionpay/mobile/android/views/order/i;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->b:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/i;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->l:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/i;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/i;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/i;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/i;->i:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
