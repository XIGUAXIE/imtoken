.class public final Lcom/unionpay/mobile/android/widgets/p;
.super Lcom/unionpay/mobile/android/widgets/z;


# instance fields
.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Lorg/json/JSONArray;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:Landroid/app/AlertDialog;

.field private q:Landroid/widget/PopupWindow;

.field private r:Lcom/unionpay/mobile/android/upwidget/e;

.field private s:I

.field private t:Landroid/widget/TextView;

.field private u:Lcom/unionpay/mobile/android/upwidget/q;

.field private v:Landroid/widget/TextView;

.field private w:Ljava/lang/String;

.field private x:Landroid/widget/RelativeLayout;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance p1, Lcom/unionpay/mobile/android/widgets/q;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/widgets/q;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->a:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/widgets/r;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/widgets/r;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->b:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/p;->y:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/p;->z:Z

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONObject;

    const-string p3, "new_instalments"

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Lorg/json/JSONArray;

    const-string p1, "label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->bg:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/e;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    const-string v0, ""

    invoke-direct {p1, p2, p3, v0}, Lcom/unionpay/mobile/android/upwidget/e;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/p;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/p;->q:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "label"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "checked"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "ckb_style"

    const-string p3, "small"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "required"

    const-string p3, "0"

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "instalment"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONObject;

    const-string p2, "url"

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "href_label"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "href_url"

    const-string p3, "href"

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method private a(I)V
    .locals 2

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/e;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "label"

    invoke-direct {p0, p1, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;)V
    .locals 11

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x7de

    invoke-virtual {v0, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    const v3, -0x342f27

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONObject;

    const-string v7, "type"

    invoke-static {v6, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "instalment"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_0
    invoke-virtual {p1, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/unionpay/mobile/android/widgets/s;

    invoke-direct {v4, p0}, Lcom/unionpay/mobile/android/widgets/s;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v10, 0x3ea

    invoke-virtual {v2, v10, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    const/high16 v10, 0x41700000    # 15.0f

    invoke-static {v2, v10}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    invoke-virtual {v10, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v10, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    sget v10, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    const v10, -0x99999a

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v2, v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/p;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/p;->g()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->b(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/p;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/p;)Landroid/app/Dialog;
    .locals 10

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/p;->z:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/p;->z:Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/app/AlertDialog;

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/unionpay/mobile/android/global/b;->g:I

    invoke-virtual {v6, v7, v7, v7, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v8, -0x342f27

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/p;->w:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v7, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    const v7, -0xcccccd

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xd

    invoke-virtual {v7, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xf0f0c

    invoke-virtual {v6, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v5, Lcom/unionpay/mobile/android/widgets/t;

    invoke-direct {v5, p0}, Lcom/unionpay/mobile/android/widgets/t;-><init>(Lcom/unionpay/mobile/android/widgets/p;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "label"

    invoke-direct {p0, v2, v4}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "rel_value_style"

    invoke-direct {p0, v2, v4}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "rel_value"

    invoke-direct {p0, v2, v4}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v4

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v4, v8

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v1

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    const-string v4, "keys"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "values"

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/p;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/p;->p:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "value"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/q;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/p;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uppay"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final a(Lcom/unionpay/mobile/android/upwidget/q$a;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Lcom/unionpay/mobile/android/upwidget/q$a;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/p;->z:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->c:Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/e;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->o:Ljava/util/List;

    const-string v2, ""

    invoke-direct {p1, v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/e;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/p;->a(Landroid/widget/RelativeLayout;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/p;->y:Z

    return-void
.end method

.method protected final a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "instalment"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    if-eqz v3, :cond_1

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setId(I)V

    const v5, -0x342f27

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->n:Lorg/json/JSONObject;

    const-string v5, "checked"

    invoke-static {v3, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/unionpay/mobile/android/widgets/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/unionpay/mobile/android/upwidget/q;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/p;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_agree_installment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p2, v3, p1, v5}, Lcom/unionpay/mobile/android/upwidget/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/upwidget/q;->a()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    sget p2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/q;->a(F)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-static {p2, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Z)V

    if-nez p1, :cond_0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/p;->y:Z

    :cond_0
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/p;->y:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final b_()Z
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->d:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->v:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_select_installment"

    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/p;->s:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/p;->r:Lcom/unionpay/mobile/android/upwidget/e;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "available"

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/p;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/p;->u:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/q;->b()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
