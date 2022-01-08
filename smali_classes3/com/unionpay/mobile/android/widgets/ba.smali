.class abstract Lcom/unionpay/mobile/android/widgets/ba;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/ba$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field protected d:Landroid/content/Context;

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Z

.field protected j:Ljava/lang/String;

.field protected k:Landroid/widget/LinearLayout;

.field protected l:Landroid/widget/TextView;

.field protected m:Landroid/widget/RelativeLayout;

.field protected n:Lorg/json/JSONObject;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/ImageView;

.field private r:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 v1, -0x1000000

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->e:I

    const v1, -0x777778

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->f:I

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->o:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->i:Z

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->k:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->m:Landroid/widget/RelativeLayout;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->r:Z

    const-string v0, "uppay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->s:Ljava/lang/String;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/ba;->n:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const-string p1, "label"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    const-string p1, "placeholder"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->o:Ljava/lang/String;

    const-string p1, "tip"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->c:Ljava/lang/String;

    const-string p1, "name"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->a:Ljava/lang/String;

    const-string p1, "value"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->g:Ljava/lang/String;

    const-string p1, "type"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->b:Ljava/lang/String;

    const-string p1, "regexp"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->j:Ljava/lang/String;

    const-string p1, "readonly"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->i:Z

    :cond_0
    const-string p1, "margin"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->r:Z

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/ba;->s:Ljava/lang/String;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/ba;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/widgets/ba;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ba;->setOrientation(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/unionpay/mobile/android/widgets/ba;->setPadding(IIII)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->b:Ljava/lang/String;

    const-string v0, "string"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    invoke-virtual {p0, p0, p1}, Lcom/unionpay/mobile/android/widgets/ba;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_4

    new-instance p1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->e:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    invoke-virtual {p0, v2, p1}, Lcom/unionpay/mobile/android/widgets/ba;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/ba;->g()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ba;->b_()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->k:Landroid/widget/LinearLayout;

    const v2, -0x41448

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, p1}, Lcom/unionpay/mobile/android/widgets/ba;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->f:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ba;->k:Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->c:Ljava/lang/String;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ba;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/ba;->g()V

    return-void
.end method

.method private g()V
    .locals 5

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/widgets/ba;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->m:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v4, 0x40e

    invoke-virtual {v2, v4, v3, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->d:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_0
    return-void
.end method

.method protected a(Landroid/widget/LinearLayout;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_method"

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final t()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final u()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final v()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ba;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    return-void
.end method
