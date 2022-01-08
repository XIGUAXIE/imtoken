.class public final Lcom/unionpay/mobile/android/upwidget/a;
.super Landroid/widget/LinearLayout;


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

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:Landroid/content/Context;

.field private m:F

.field private n:Landroid/view/View$OnClickListener;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/TextView;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;B)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p5, ""

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->i:Ljava/lang/String;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    const/4 p5, 0x0

    iput p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->m:F

    new-instance p5, Lcom/unionpay/mobile/android/upwidget/b;

    invoke-direct {p5, p0}, Lcom/unionpay/mobile/android/upwidget/b;-><init>(Lcom/unionpay/mobile/android/upwidget/a;)V

    iput-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->n:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    const/high16 p1, 0x41800000    # 16.0f

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->m:F

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->q:Ljava/lang/String;

    const-string p1, "name"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->a:Ljava/lang/String;

    const-string p1, "value"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->b:Ljava/lang/String;

    const-string p1, "label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->c:Ljava/lang/String;

    const-string p1, "href_label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->d:Ljava/lang/String;

    const-string p1, "href_url"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->e:Ljava/lang/String;

    const-string p1, "href_title"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->f:Ljava/lang/String;

    const-string p1, "checked"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->g:Ljava/lang/String;

    const-string p1, "required"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->h:Ljava/lang/String;

    const-string p1, "error_info"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->i:Ljava/lang/String;

    const-string p1, "ckb_style"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->o:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    new-instance p2, Landroid/widget/Button;

    invoke-direct {p2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/a;->a(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->g:Ljava/lang/String;

    const-string p4, "0"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/a;->g()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/a;->f()Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    const/high16 p4, 0x41a00000    # 20.0f

    invoke-static {p1, p4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x10

    iput p1, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p5, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    invoke-virtual {p0, p5, p4}, Lcom/unionpay/mobile/android/upwidget/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/unionpay/mobile/android/upwidget/a;->a(Ljava/lang/String;)Z

    move-result p4

    const/4 p5, -0x2

    if-eqz p4, :cond_1

    new-instance p4, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    invoke-direct {p4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->c:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->m:F

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->p:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p5, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p1, p4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v1, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v1, p4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v1, p4}, Lcom/unionpay/mobile/android/upwidget/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->d:Ljava/lang/String;

    invoke-static {p4}, Lcom/unionpay/mobile/android/upwidget/a;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/a;->e:Ljava/lang/String;

    invoke-static {p4}, Lcom/unionpay/mobile/android/upwidget/a;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    new-instance p4, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    invoke-direct {p4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, -0xa35c26

    const v2, -0x666667

    const v3, -0x593503

    invoke-static {v1, v3, v3, v2}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->d:Ljava/lang/String;

    aput-object v1, p2, v0

    const-string v0, "<u>%s</u>"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget p2, p0, Lcom/unionpay/mobile/android/upwidget/a;->m:F

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, p5, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p4, p2}, Lcom/unionpay/mobile/android/upwidget/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/a;)V
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->g:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/a;->g()V

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

.method private f()Z
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->o:Ljava/lang/String;

    const-string v1, "small"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3f0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3ef

    :goto_0
    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/a;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1

    :cond_2
    sget v1, Lcom/unionpay/mobile/android/global/a;->w:I

    :goto_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/a;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/a;->j:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/a;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "\"%s\":\"%s\""

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->h:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/a;->k:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
