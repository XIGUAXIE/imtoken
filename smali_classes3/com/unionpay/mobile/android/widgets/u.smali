.class public final Lcom/unionpay/mobile/android/widgets/u;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/u$b;,
        Lcom/unionpay/mobile/android/widgets/u$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Lcom/unionpay/mobile/android/widgets/u$b;

.field private f:Lcom/unionpay/mobile/android/widgets/u$a;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/text/TextWatcher;

.field private m:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/u;->d:Z

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->e:Lcom/unionpay/mobile/android/widgets/u$b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->f:Lcom/unionpay/mobile/android/widgets/u$a;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/v;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/widgets/v;-><init>(Lcom/unionpay/mobile/android/widgets/u;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->k:Landroid/view/View$OnClickListener;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/w;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/widgets/w;-><init>(Lcom/unionpay/mobile/android/widgets/u;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->l:Landroid/text/TextWatcher;

    new-instance v2, Lcom/unionpay/mobile/android/widgets/x;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/widgets/x;-><init>(Lcom/unionpay/mobile/android/widgets/u;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->m:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/u;->setOrientation(I)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->n:I

    iput v2, p0, Lcom/unionpay/mobile/android/widgets/u;->g:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/widgets/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/widgets/u;->setFocusable(Z)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEms(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x13

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v4}, Lcom/unionpay/mobile/android/widgets/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    sget v8, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const v8, -0xcccccd

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x15

    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v2, v10}, Lcom/unionpay/mobile/android/widgets/u;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xb

    invoke-virtual {v7, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v10, 0xf

    invoke-virtual {v7, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v11, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-static {v11, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v11

    iput v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->j:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v11, 0x10

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x9

    invoke-virtual {v12, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v12, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {v12, p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v7, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/u;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    const v2, -0x666667

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v11}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, p1, p1, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->l:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/u;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->m:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v10, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v13, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v7, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/u;)Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/widgets/u;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/u;->e:Lcom/unionpay/mobile/android/widgets/u$b;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/u;->f:Lcom/unionpay/mobile/android/widgets/u$a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->i:Landroid/widget/TextView;

    return-object p1
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/widgets/u;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/u;->d:Z

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/InputFilter;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_1
    array-length v3, p1

    add-int/2addr v3, v0

    new-array v3, v3, [Landroid/text/InputFilter;

    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    invoke-static {v1, v2, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->j:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/u;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/u$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->f:Lcom/unionpay/mobile/android/widgets/u$a;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/u$b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->e:Lcom/unionpay/mobile/android/widgets/u$b;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->e:Lcom/unionpay/mobile/android/widgets/u$b;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/unionpay/mobile/android/widgets/u$b;->e()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const-string v0, "setShowSoftInputOnFocus"

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    const-string v0, "setSoftInputShownOnFocus"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    return-void

    :cond_2
    const-class v2, Landroid/widget/EditText;

    const/4 v3, 0x1

    :try_start_0
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_3
    move-exception v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->e:Lcom/unionpay/mobile/android/widgets/u$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/widgets/u$b;->a_()V

    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/u;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method
