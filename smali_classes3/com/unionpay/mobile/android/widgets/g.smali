.class public final Lcom/unionpay/mobile/android/widgets/g;
.super Lcom/unionpay/mobile/android/widgets/z;


# static fields
.field private static u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/widget/Spinner;

.field private b:I

.field private c:Ljava/lang/String;

.field private o:Lcom/unionpay/mobile/android/upwidget/c;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/RelativeLayout;

.field private r:Landroid/widget/PopupWindow;

.field private s:Lcom/unionpay/mobile/android/upwidget/g;

.field private t:Ljava/util/List;
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

.field private final w:Landroid/view/View$OnClickListener;

.field private final x:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->M:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->N:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->O:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->P:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->Q:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->R:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->S:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->T:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "07"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "99"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-object v0, Lcom/unionpay/mobile/android/widgets/g;->v:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->a:Landroid/widget/Spinner;

    const/4 p3, 0x1

    iput p3, p0, Lcom/unionpay/mobile/android/widgets/g;->b:I

    new-instance v0, Lcom/unionpay/mobile/android/widgets/h;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/h;-><init>(Lcom/unionpay/mobile/android/widgets/g;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->w:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/i;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/i;-><init>(Lcom/unionpay/mobile/android/widgets/g;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->x:Landroid/widget/AdapterView$OnItemClickListener;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bf:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->c:Ljava/lang/String;

    sget-object v0, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    sget-object v0, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "text1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "text2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "editable"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->t:Ljava/util/List;

    new-instance p2, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/g;->t:Ljava/util/List;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/g;->c:Ljava/lang/String;

    iget v8, p0, Lcom/unionpay/mobile/android/widgets/g;->b:I

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->o:Lcom/unionpay/mobile/android/upwidget/c;

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {p1, p2, v0}, Lcom/unionpay/mobile/android/upwidget/g;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/g;->s:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->x:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/g;->s:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/g;->m:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p2

    const/16 v0, 0x7de

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/j;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/j;-><init>(Lcom/unionpay/mobile/android/widgets/g;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-static {p2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p2

    const/16 v3, 0x3ea

    invoke-virtual {p2, v3, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {p2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xb

    invoke-virtual {v3, p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p2, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setId(I)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setEms(I)V

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->bc:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, -0x1000000

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v6, 0x9

    invoke-virtual {v3, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/g;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    sget v4, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    const v4, -0x99999a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result p2

    invoke-virtual {v3, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p2

    invoke-virtual {v3, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p2, p0, Lcom/unionpay/mobile/android/widgets/g;->i:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/g;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/unionpay/mobile/android/widgets/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/g;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_1
    invoke-direct {p0, p3}, Lcom/unionpay/mobile/android/widgets/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/g;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private a(I)V
    .locals 2

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/g;->b:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->o:Lcom/unionpay/mobile/android/upwidget/c;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/g;->b:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/widgets/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/g;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/g;->s:Lcom/unionpay/mobile/android/upwidget/g;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/g;->r:Landroid/widget/PopupWindow;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/unionpay/mobile/android/widgets/g;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/unionpay/mobile/android/widgets/g;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/widgets/g;->b:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/g;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/widgets/g;->i:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/g;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/unionpay/mobile/android/widgets/g;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    sget-object v1, Lcom/unionpay/mobile/android/widgets/g;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

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

    const-string v0, "_select_certtype"

    return-object v0
.end method
