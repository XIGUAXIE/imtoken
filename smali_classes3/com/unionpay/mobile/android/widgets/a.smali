.class public final Lcom/unionpay/mobile/android/widgets/a;
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
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1, p2, p4}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/a;->a:Landroid/widget/Spinner;

    const/4 p1, 0x1

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/a;->b:I

    new-instance p2, Lcom/unionpay/mobile/android/widgets/b;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/widgets/b;-><init>(Lcom/unionpay/mobile/android/widgets/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/a;->w:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/widgets/c;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/widgets/c;-><init>(Lcom/unionpay/mobile/android/widgets/a;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/a;->x:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object p3, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    sput-object p3, Lcom/unionpay/mobile/android/widgets/a;->v:Ljava/util/List;

    const/4 p3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_1

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->v:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1, p4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/a;->m:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p3

    const/16 v0, 0x7de

    const/4 v1, -0x1

    invoke-virtual {p3, v0, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/unionpay/mobile/android/widgets/d;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/widgets/d;-><init>(Lcom/unionpay/mobile/android/widgets/a;)V

    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {p3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setId(I)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-static {p3}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p3

    const/16 v2, 0x3ea

    invoke-virtual {p3, v2, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {p3, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p3, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0xb

    invoke-virtual {v2, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {p3, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-direct {p3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setId(I)V

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const v2, -0xcccccd

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEms(I)V

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->bd:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0x9

    invoke-virtual {v2, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    const v3, -0x99999a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getId()I

    move-result p3

    invoke-virtual {v2, p1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v2, p4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    invoke-virtual {p1, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/a;->i:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/a;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/unionpay/mobile/android/widgets/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/a;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void

    :cond_2
    sget-object p1, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    sget-object p2, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/a;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/a;I)V
    .locals 2

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/a;->b:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->o:Lcom/unionpay/mobile/android/upwidget/c;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/a;->b:I

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/a;->p:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/a;Landroid/view/View;)V
    .locals 10

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->be:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "text1"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "text2"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v5, "editable"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->t:Ljava/util/List;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/a;->t:Ljava/util/List;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/a;->c:Ljava/lang/String;

    iget v8, p0, Lcom/unionpay/mobile/android/widgets/a;->b:I

    const/4 v9, 0x0

    const-string v6, ""

    const-string v7, ""

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->o:Lcom/unionpay/mobile/android/upwidget/c;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/g;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/a;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {v0, v2, v3}, Lcom/unionpay/mobile/android/upwidget/g;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->s:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->x:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->s:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->s:Lcom/unionpay/mobile/android/upwidget/g;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v2, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x50000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_1
    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/a;->r:Landroid/widget/PopupWindow;

    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/unionpay/mobile/android/widgets/a;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/unionpay/mobile/android/widgets/a;->v:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

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

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/a;->o:Lcom/unionpay/mobile/android/upwidget/c;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/unionpay/mobile/android/widgets/a;->b:I

    sub-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/a;->i:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-ltz v1, :cond_2

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_2

    sget-object v0, Lcom/unionpay/mobile/android/widgets/a;->v:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
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

    const-string v0, "_select_areacode"

    return-object v0
.end method
