.class public final Lcom/unionpay/mobile/android/views/order/b;
.super Lcom/unionpay/mobile/android/views/order/AbstractMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/b$a;,
        Lcom/unionpay/mobile/android/views/order/b$b;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Z

.field private C:I

.field private g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONArray;

.field private i:Z

.field private j:Lcom/unionpay/mobile/android/upviews/a;

.field private k:Ljava/util/List;
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

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/widget/PopupWindow;

.field private n:Lcom/unionpay/mobile/android/upwidget/g;

.field private o:Lcom/unionpay/mobile/android/upwidget/c;

.field private p:Ljava/lang/String;

.field private final q:Landroid/view/View$OnClickListener;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Landroid/widget/AdapterView$OnItemClickListener;

.field private t:Lcom/unionpay/mobile/android/views/order/b$a;

.field private u:I

.field private v:I

.field private w:Lcom/unionpay/mobile/android/views/order/b$b;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 8
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

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/unionpay/mobile/android/views/order/c;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/views/order/c;-><init>(Lcom/unionpay/mobile/android/views/order/b;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->q:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/views/order/d;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/views/order/d;-><init>(Lcom/unionpay/mobile/android/views/order/b;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->r:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/views/order/e;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/views/order/e;-><init>(Lcom/unionpay/mobile/android/views/order/b;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->s:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/views/order/b;->B:Z

    sget-object p1, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/b;->C:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/b;->u:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    iput-object p3, p0, Lcom/unionpay/mobile/android/views/order/b;->p:Ljava/lang/String;

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, p2, Lcom/unionpay/mobile/android/languages/c;->bh:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/views/order/b;->p:Ljava/lang/String;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, p2, Lcom/unionpay/mobile/android/languages/c;->bi:Ljava/lang/String;

    iget v6, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/c;->a(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    iget-object p3, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {p1, p2, p3}, Lcom/unionpay/mobile/android/upwidget/g;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->n:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->s:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->n:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/views/order/b;->i()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/views/order/b;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/views/order/b;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->n:Lcom/unionpay/mobile/android/upwidget/g;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/views/order/b;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/views/order/b;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/views/order/b;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method private final c(I)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    const-string v2, "direct"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v3}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v3

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_2

    const-string p1, " new "

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->w:Lcom/unionpay/mobile/android/views/order/b$b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/unionpay/mobile/android/views/order/b$b;->a()I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->m:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/upwidget/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " delete "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/views/order/b;->i()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->w:Lcom/unionpay/mobile/android/views/order/b$b;

    if-eqz p1, :cond_1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/b;->u:I

    invoke-interface {p1, v0}, Lcom/unionpay/mobile/android/views/order/b$b;->a(I)I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/upwidget/c;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " pay with "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->t:Lcom/unionpay/mobile/android/views/order/b$a;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/unionpay/mobile/android/views/order/b$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    iget v2, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/upwidget/c;->b(I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->w:Lcom/unionpay/mobile/android/views/order/b$b;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/unionpay/mobile/android/views/order/b$b;->b(I)I

    goto :goto_0
.end method

.method private h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/views/order/b;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->a()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bj:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->bh:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bk:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bi:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/upwidget/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->x:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/unionpay/mobile/android/views/order/b;->y:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/unionpay/mobile/android/views/order/b;->z:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/b$b;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->w:Lcom/unionpay/mobile/android/views/order/b$b;

    return-object p0
.end method

.method public final a(Lorg/json/JSONArray;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->h:Lorg/json/JSONArray;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "label"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    iget v1, p0, Lcom/unionpay/mobile/android/views/order/b;->u:I

    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/views/order/b;->u:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->notifyDataSetChanged()V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/views/order/b;->c(I)V

    return-void
.end method

.method public final a(Landroid/widget/RelativeLayout;)V
    .locals 7

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, -0x1

    const/16 v4, 0x9

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/unionpay/mobile/android/views/order/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->g:Lorg/json/JSONObject;

    const-string v1, "label"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/views/order/b;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->A:Landroid/widget/TextView;

    new-instance v5, Lcom/unionpay/mobile/android/views/order/f;

    invoke-direct {v5, p0}, Lcom/unionpay/mobile/android/views/order/f;-><init>(Lcom/unionpay/mobile/android/views/order/b;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->A:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->A:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/views/order/b;->a(Landroid/widget/TextView;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->A:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/b;->C:I

    return v0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final b(Z)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/views/order/b;->B:Z

    return-object p0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/views/order/b;->C:I

    return-void
.end method

.method public final b(Landroid/widget/RelativeLayout;)V
    .locals 11

    invoke-direct {p0}, Lcom/unionpay/mobile/android/views/order/b;->h()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/views/order/b;->B:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const v2, -0x342f27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/unionpay/mobile/android/views/order/g;

    invoke-direct {v5, p0}, Lcom/unionpay/mobile/android/views/order/g;-><init>(Lcom/unionpay/mobile/android/views/order/b;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    sget v6, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v5, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setId(I)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v5

    const/16 v7, 0x3ea

    invoke-virtual {v5, v7, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v5, v7}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v5

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    invoke-virtual {v7, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v5, 0xf

    invoke-virtual {v7, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v8, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v8, v9}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    iget v10, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    invoke-virtual {v8, v10}, Lcom/unionpay/mobile/android/upwidget/c;->b(I)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v8, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const v8, -0x99999a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v8, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v8, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/unionpay/mobile/android/views/order/b$a;

    invoke-direct {p1, p0, v5}, Lcom/unionpay/mobile/android/views/order/b$a;-><init>(Lcom/unionpay/mobile/android/views/order/b;B)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->t:Lcom/unionpay/mobile/android/views/order/b$a;

    iput-object v3, p1, Lcom/unionpay/mobile/android/views/order/b$a;->a:Landroid/view/View;

    iget-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->t:Lcom/unionpay/mobile/android/views/order/b$a;

    iput-object v7, p1, Lcom/unionpay/mobile/android/views/order/b$a;->b:Landroid/widget/TextView;

    return-void

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/views/order/b;->B:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/b;->g()V

    :cond_2
    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/b;->h:Lorg/json/JSONArray;

    const-string v4, "bankpay"

    invoke-direct {v0, v2, v3, p0, v4}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->j:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->j:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->t:Lcom/unionpay/mobile/android/views/order/b$a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/unionpay/mobile/android/views/order/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c()Lcom/unionpay/mobile/android/upviews/a$a;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->j:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->b()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Landroid/widget/RelativeLayout;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/views/order/b;->v:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/unionpay/mobile/android/views/order/b;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->o:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/upwidget/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/b;->j:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final r()V
    .locals 0

    return-void
.end method
