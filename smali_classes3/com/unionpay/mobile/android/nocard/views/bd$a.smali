.class public final Lcom/unionpay/mobile/android/nocard/views/bd$a;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/nocard/views/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/bd;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/nocard/views/bd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->setOrientation(I)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 14

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v4, v4, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v3, v0}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v5, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "label"

    invoke-static {v6, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "url"

    invoke-static {v6, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v9, v9, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v9, -0x342f27

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x41400000    # 12.0f

    if-eqz v5, :cond_1

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v12, v12, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v12, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v12

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_1
    invoke-virtual {v3, v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->b:Landroid/content/Context;

    new-instance v10, Landroid/widget/RelativeLayout;

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->b:Landroid/content/Context;

    invoke-direct {v10, v12}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v12, v12, Lcom/unionpay/mobile/android/nocard/views/bd;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v13, 0x7de

    invoke-virtual {v12, v13, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Lcom/unionpay/mobile/android/nocard/views/bg;

    invoke-direct {v12, p0, v5, v7, v6}, Lcom/unionpay/mobile/android/nocard/views/bg;-><init>(Lcom/unionpay/mobile/android/nocard/views/bd$a;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v7, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, -0xcccccd

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xf

    invoke-virtual {v7, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v13, 0x9

    invoke-virtual {v7, v13, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v13

    iput v13, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v10, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v8, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v7, v7, Lcom/unionpay/mobile/android/nocard/views/bd;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v13, 0x3ea

    invoke-virtual {v7, v13, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-instance v13, Landroid/widget/ImageView;

    invoke-direct {v13, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0xb

    invoke-virtual {v7, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-static {v8, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v10, v13, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v5, v6, :cond_2

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v7, v7, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->removeAllViews()V

    const-string v0, "label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/bd;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a:Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object v2, v2, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd$a;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, -0x61b1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a(Lorg/json/JSONArray;)V

    return-void
.end method
