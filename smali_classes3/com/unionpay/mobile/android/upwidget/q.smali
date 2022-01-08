.class public final Lcom/unionpay/mobile/android/upwidget/q;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upwidget/q$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/Button;

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:F

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Ljava/lang/String;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/String;

.field private u:Lcom/unionpay/mobile/android/upwidget/q$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mobile/android/upwidget/q;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p4, ""

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->i:Ljava/lang/String;

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->j:Ljava/lang/String;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/4 p4, 0x0

    iput p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->o:F

    new-instance p4, Lcom/unionpay/mobile/android/upwidget/r;

    invoke-direct {p4, p0}, Lcom/unionpay/mobile/android/upwidget/r;-><init>(Lcom/unionpay/mobile/android/upwidget/q;)V

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->p:Landroid/view/View$OnClickListener;

    new-instance p4, Lcom/unionpay/mobile/android/upwidget/s;

    invoke-direct {p4, p0}, Lcom/unionpay/mobile/android/upwidget/s;-><init>(Lcom/unionpay/mobile/android/upwidget/q;)V

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->q:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 p1, 0x41800000    # 16.0f

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->o:F

    iput-object p3, p0, Lcom/unionpay/mobile/android/upwidget/q;->t:Ljava/lang/String;

    const-string p1, "name"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->a:Ljava/lang/String;

    const-string p1, "type"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->b:Ljava/lang/String;

    const-string p1, "value"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->c:Ljava/lang/String;

    const-string p1, "label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->d:Ljava/lang/String;

    const-string p1, "href_label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->e:Ljava/lang/String;

    const-string p1, "href_url"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->f:Ljava/lang/String;

    const-string p1, "href_title"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->g:Ljava/lang/String;

    const-string p1, "checked"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->h:Ljava/lang/String;

    const-string p1, "required"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->i:Ljava/lang/String;

    const-string p1, "error_info"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->j:Ljava/lang/String;

    const-string p1, "ckb_style"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->r:Ljava/lang/String;

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->k:Landroid/widget/RelativeLayout;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/a;->n:I

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/q;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p2, p1}, Lcom/unionpay/mobile/android/upwidget/q;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Ljava/lang/String;)Z

    move-result p1

    const/16 p2, 0xf

    const/4 p4, -0x2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->o:F

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {p1, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setId(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->h:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/q;->c()V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 v3, 0x42080000    # 34.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    invoke-virtual {p1, v0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    invoke-virtual {v0, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->u:Lcom/unionpay/mobile/android/upwidget/q$a;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    invoke-interface {p1, v0, v2}, Lcom/unionpay/mobile/android/upwidget/q$a;->a(Ljava/lang/String;Z)V

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/q;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, -0xa35c26

    const v2, -0x666667

    const v3, -0x593503

    invoke-static {v0, v3, v3, v2}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p4, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getId()I

    move-result p4

    invoke-virtual {v0, v1, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/q;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/q;)V
    .locals 3

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->u:Lcom/unionpay/mobile/android/upwidget/q$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    invoke-interface {v0, v1, v2}, Lcom/unionpay/mobile/android/upwidget/q$a;->a(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/q;->c()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/q;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->u:Lcom/unionpay/mobile/android/upwidget/q$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/q;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/unionpay/mobile/android/upwidget/q$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3f2

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f1

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    invoke-static {v1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/q;->n:Landroid/content/Context;

    const/high16 v4, 0x42080000    # 34.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/q;->l:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upwidget/q$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->u:Lcom/unionpay/mobile/android/upwidget/q$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/q;->c()V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/q;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->i:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/q;->m:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
