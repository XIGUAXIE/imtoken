.class public final Lcom/unionpay/mobile/android/widgets/ay;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/ay$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/unionpay/mobile/android/widgets/ay$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ay$a;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->h:I

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    iput-object p5, p0, Lcom/unionpay/mobile/android/widgets/ay;->k:Lcom/unionpay/mobile/android/widgets/ay$a;

    const/high16 p5, 0x41200000    # 10.0f

    invoke-static {p1, p5}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/ay;->e:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->h:I

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/widgets/ay;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->e:Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    iput p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->h:I

    iput p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    iput p4, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/ay;->k:Lcom/unionpay/mobile/android/widgets/ay$a;

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p1, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    invoke-direct {p0, p2}, Lcom/unionpay/mobile/android/widgets/ay;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ay;)Lcom/unionpay/mobile/android/widgets/ay$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/ay;->k:Lcom/unionpay/mobile/android/widgets/ay$a;

    return-object p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    sget v0, Lcom/unionpay/mobile/android/global/a;->k:I

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ay;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->M:I

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/ay;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/unionpay/mobile/android/widgets/az;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/widgets/az;-><init>(Lcom/unionpay/mobile/android/widgets/ay;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x9

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xf

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v1}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v1, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    const/high16 v8, 0x41300000    # 11.0f

    invoke-static {v7, v8}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v7

    iget v8, p0, Lcom/unionpay/mobile/android/widgets/ay;->h:I

    if-eqz v8, :cond_0

    move v7, v8

    :cond_0
    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/ay;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v9, 0x405

    invoke-virtual {v0, v9, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_0
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v7, Lcom/unionpay/mobile/android/global/a;->l:I

    iget v8, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xd

    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v7, 0xb

    if-nez v1, :cond_2

    sget v1, Lcom/unionpay/mobile/android/global/a;->e:I

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, p0, Lcom/unionpay/mobile/android/widgets/ay;->i:I

    invoke-direct {v8, v4, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v8, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v4, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v8}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget p1, Lcom/unionpay/mobile/android/global/a;->m:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->H:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ay;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v4, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance p1, Lcom/unionpay/mobile/android/widgets/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    sget v3, Lcom/unionpay/mobile/android/global/a;->N:I

    invoke-direct {p1, v1, v3, v6}, Lcom/unionpay/mobile/android/widgets/o;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, p1, v4}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/unionpay/mobile/android/global/a;->E:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->D:I

    invoke-direct {p1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x407

    invoke-virtual {v0, v1, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/a;->D:I

    sget v1, Lcom/unionpay/mobile/android/global/a;->D:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->j:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/ay;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/widgets/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ay;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
