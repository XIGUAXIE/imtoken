.class public Lcom/unionpay/mobile/android/views/order/CViewMethods;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/CViewMethods$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Integer;

.field private static final b:Ljava/lang/Integer;

.field private static final c:I


# instance fields
.field private d:Landroid/content/Context;

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/unionpay/mobile/android/views/order/CViewMethods$a;

.field private k:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a:Ljava/lang/Integer;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->b:Ljava/lang/Integer;

    sget v0, Lcom/unionpay/mobile/android/global/b;->a:I

    sput v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    sget-object p1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->setOrientation(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/CViewMethods;)Lcom/unionpay/mobile/android/views/order/CViewMethods$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->j:Lcom/unionpay/mobile/android/views/order/CViewMethods$a;

    return-object p0
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 7

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v2, Lcom/unionpay/mobile/android/views/order/h;

    invoke-direct {v2, p0, p2}, Lcom/unionpay/mobile/android/views/order/h;-><init>(Lcom/unionpay/mobile/android/views/order/CViewMethods;I)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v3, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget v4, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setId(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->h:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v5, Lcom/unionpay/mobile/android/views/order/CViewMethods;->c:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v1, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0xcccccd

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    sget-object v0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/CViewMethods;->b:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    invoke-virtual {p2, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {p2, v5, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget p1, Lcom/unionpay/mobile/android/views/order/CViewMethods;->c:I

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    :cond_0
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/CViewMethods$a;)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->j:Lcom/unionpay/mobile/android/views/order/CViewMethods$a;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/unionpay/mobile/android/views/order/CViewMethods;"
        }
    .end annotation

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->g:Ljava/util/HashMap;

    return-object p0
.end method

.method public final a()V
    .locals 8

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->removeAllViews()V

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    sget-object v1, Lcom/unionpay/mobile/android/views/order/l;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->setVisibility(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->f:Landroid/widget/TextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->f:Landroid/widget/TextView;

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->f:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget-object v2, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lcom/unionpay/mobile/android/views/order/CViewMethods;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget v1, Lcom/unionpay/mobile/android/views/order/CViewMethods;->c:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, -0x342f27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v6, Lcom/unionpay/mobile/android/views/order/CViewMethods;->c:I

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    and-int/2addr v6, v7

    if-ne v0, v6, :cond_2

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/widget/LinearLayout;I)V

    :cond_2
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    and-int/2addr v6, v7

    if-ne v0, v6, :cond_3

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/widget/LinearLayout;I)V

    :cond_3
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    and-int/2addr v6, v7

    if-ne v0, v6, :cond_4

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/widget/LinearLayout;I)V

    :cond_4
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    and-int/2addr v6, v7

    if-ne v0, v6, :cond_5

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/widget/LinearLayout;I)V

    :cond_5
    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v6, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->e:I

    and-int/2addr v6, v7

    if-ne v0, v6, :cond_6

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/unionpay/mobile/android/views/order/l;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->a(Landroid/widget/LinearLayout;I)V

    :cond_6
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/views/order/CViewMethods;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/util/HashMap;)Lcom/unionpay/mobile/android/views/order/CViewMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/unionpay/mobile/android/views/order/CViewMethods;"
        }
    .end annotation

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/CViewMethods;->h:Ljava/util/HashMap;

    return-object p0
.end method
