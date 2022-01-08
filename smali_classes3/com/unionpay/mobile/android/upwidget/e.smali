.class public final Lcom/unionpay/mobile/android/upwidget/e;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/List;
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

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->g:Ljava/util/ArrayList;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/f;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/f;-><init>(Lcom/unionpay/mobile/android/upwidget/e;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->h:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    iput-object p3, p0, Lcom/unionpay/mobile/android/upwidget/e;->c:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcom/unionpay/mobile/android/upwidget/e;->e:I

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p1

    const/4 p2, -0x1

    const/16 p3, 0x3f7

    invoke-virtual {p1, p3, p2, p2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/e;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/e;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/e;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "available"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    check-cast p1, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_2

    const/4 v1, 0x0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/e;->e:I

    return-void
.end method

.method public final getCount()I
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/e;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lcom/unionpay/mobile/android/upwidget/e;->getItem(I)Ljava/lang/Object;

    iget-object v2, v0, Lcom/unionpay/mobile/android/upwidget/e;->f:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/unionpay/mobile/android/upwidget/e;->a()I

    move-result v3

    sub-int v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "style"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "keys"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "values"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/unionpay/mobile/android/global/b;->g:I

    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v10, -0x342f27

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v12, Landroid/widget/ImageView;

    iget-object v13, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setId(I)V

    new-instance v13, Landroid/widget/TextView;

    iget-object v14, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, -0x99999a

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v3, v14}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iget v15, v0, Lcom/unionpay/mobile/android/upwidget/e;->e:I

    if-ne v15, v1, :cond_0

    const/16 v15, 0x3f0

    goto :goto_0

    :cond_0
    const/16 v15, 0x3ef

    :goto_0
    iget-object v6, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-static {v6, v14}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v14, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-static {v14}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v14

    invoke-virtual {v14, v15, v3, v3}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lcom/unionpay/mobile/android/upwidget/e;->b(I)Z

    move-result v1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v12, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0x9

    invoke-virtual {v1, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v12, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->g:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v7, v13, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v13, Landroid/widget/LinearLayout;

    iget-object v15, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v13, v15}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v13, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v15, v14, :cond_2

    new-instance v14, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v14, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v11, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const v11, -0x666667

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v14, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    invoke-direct {v14, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v13, v14, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x5

    const/4 v11, -0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    const/4 v4, -0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v13, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/unionpay/mobile/android/upwidget/e;->b:Landroid/content/Context;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v7, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v5, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5
.end method

.method public final isEnabled(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upwidget/e;->b(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result p1

    return p1
.end method
