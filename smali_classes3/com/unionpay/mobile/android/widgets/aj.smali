.class public final Lcom/unionpay/mobile/android/widgets/aj;
.super Lcom/unionpay/mobile/android/widgets/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/aj$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Lcom/unionpay/mobile/android/widgets/aj$a;

.field private final a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;

.field private o:Lorg/json/JSONArray;

.field private p:Landroid/widget/PopupWindow;

.field private q:Lcom/unionpay/mobile/android/upwidget/j;

.field private r:I

.field private s:I

.field private t:Lorg/json/JSONArray;

.field private u:Lorg/json/JSONArray;

.field private v:Landroid/widget/TextView;

.field private w:Lcom/unionpay/mobile/android/upwidget/q;

.field private x:Landroid/widget/TextView;

.field private y:Ljava/lang/String;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/aj$a;)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ak;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/ak;-><init>(Lcom/unionpay/mobile/android/widgets/aj;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/al;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/al;-><init>(Lcom/unionpay/mobile/android/widgets/aj;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/am;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/am;-><init>(Lcom/unionpay/mobile/android/widgets/aj;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->c:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->t:Lorg/json/JSONArray;

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->u:Lorg/json/JSONArray;

    const-string v2, ""

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->A:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->B:Z

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->D:Lcom/unionpay/mobile/android/widgets/aj$a;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->D:Lcom/unionpay/mobile/android/widgets/aj$a;

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->r:I

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->n:Lorg/json/JSONObject;

    const-string v1, "items"

    invoke-static {p4, v1}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->o:Lorg/json/JSONArray;

    const-string p4, "label"

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->y:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/unionpay/mobile/android/widgets/aj;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p4, p4, Lcom/unionpay/mobile/android/languages/c;->bg:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->y:Ljava/lang/String;

    :cond_0
    const-string p4, "default_item_idx"

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    :cond_1
    new-instance p2, Lcom/unionpay/mobile/android/upwidget/j;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->o:Lorg/json/JSONArray;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    invoke-direct {p2, p1, p4, v1, p3}, Lcom/unionpay/mobile/android/upwidget/j;-><init>(Landroid/content/Context;Lorg/json/JSONArray;ILjava/lang/String;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/j;->d(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->m:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p2

    const/16 p3, 0x7de

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4, p4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {p3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const v1, -0x342f27

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/aj;->n:Lorg/json/JSONObject;

    const-string v5, "type"

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/an;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/widgets/an;-><init>(Lcom/unionpay/mobile/android/widgets/aj;)V

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p2, p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {p2, v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getId()I

    move-result p3

    const/4 v4, 0x3

    invoke-virtual {p2, v4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setId(I)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p3

    const/16 v5, 0x3ea

    invoke-virtual {p3, v5, p4, p4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-static {p3, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xb

    invoke-virtual {v5, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p3, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {p3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    sget v5, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    const v5, -0x99999a

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {p3, p4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x9

    invoke-virtual {p3, v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-static {p2, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    invoke-virtual {p2, v2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, p4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget p4, Lcom/unionpay/mobile/android/global/a;->f:I

    iput p4, p3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/aj;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {p4}, Landroid/widget/RelativeLayout;->getId()I

    move-result p4

    invoke-virtual {p3, v4, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upwidget/q;->b()Z

    move-result v3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/widgets/aj;->a(Z)V

    iget p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aj;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private a(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->o:Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coupon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->t:Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v1, "point"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->u:Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v0, "options"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aj;IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aj;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/aj;->o:Lorg/json/JSONArray;

    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "label"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "checked"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ckb_style"

    const-string p1, "small"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "required"

    const-string p1, "0"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private a(II)V
    .locals 8

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "label"

    invoke-direct {p0, p1, p2, v1}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "rel_label"

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rel_value"

    invoke-direct {p0, p1, p2, v1}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rel_value_style"

    invoke-direct {p0, p1, p2, v2}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->C:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->B:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->D:Lcom/unionpay/mobile/android/widgets/aj$a;

    invoke-interface {v3}, Lcom/unionpay/mobile/android/widgets/aj$a;->g()V

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->B:Z

    const-string v4, "value"

    invoke-direct {p0, p1, p2, v4}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/aj;->a(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/widgets/aj;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_2
    invoke-static {v2}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x10

    invoke-static {p1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "#ff"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    add-int/2addr v5, v4

    new-instance v6, Landroid/text/SpannableStringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const v1, -0xcccccd

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p1, 0x21

    invoke-virtual {v6, v0, v3, v4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/16 p1, 0x12

    invoke-virtual {v6, v1, v4, v5, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upwidget/q;->b()Z

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v3, 0x8

    :goto_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aj;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/widgets/aj;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/aj;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/aj;->p:Landroid/widget/PopupWindow;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->r:I

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/q;->b()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aj;->n()Ljava/lang/String;

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

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/j;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->b(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upwidget/q$a;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Lcom/unionpay/mobile/android/upwidget/q$a;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->t:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->u:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->r:I

    const-string v2, "value"

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Z)V

    :cond_1
    const/16 v0, 0x8

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected final a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/widgets/aj;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sget v4, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->n:Lorg/json/JSONObject;

    const-string v3, "type"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->n:Lorg/json/JSONObject;

    const-string v4, "checked"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/unionpay/mobile/android/widgets/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/unionpay/mobile/android/upwidget/q;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/aj;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_agree_reduce_activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v3, p1, v4}, Lcom/unionpay/mobile/android/upwidget/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/upwidget/q;->a()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    sget p2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/q;->a(F)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x10

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p2, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/aj;->w:Lcom/unionpay/mobile/android/upwidget/q;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->e(Landroid/view/View$OnClickListener;)V

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

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->d:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/widgets/aj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->x:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->q:Lcom/unionpay/mobile/android/upwidget/j;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->c(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_select_reduce_activity"

    return-object v0
.end method

.method public final f()Z
    .locals 3

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->s:I

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/aj;->r:I

    const-string v2, "available"

    invoke-direct {p0, v0, v1, v2}, Lcom/unionpay/mobile/android/widgets/aj;->a(IILjava/lang/String;)Ljava/lang/String;

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

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/aj;->A:Ljava/lang/String;

    return-object v0
.end method
