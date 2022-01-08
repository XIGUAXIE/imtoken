.class final Lcom/unionpay/mobile/android/nocard/views/o$b;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/nocard/views/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/nocard/views/o;

.field private b:Landroid/widget/PopupWindow;

.field private c:Lcom/unionpay/mobile/android/upwidget/c;

.field private d:Lcom/unionpay/mobile/android/upwidget/g;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private final h:Landroid/view/View$OnClickListener;

.field private final i:Landroid/widget/AdapterView$OnItemClickListener;

.field private j:Ljava/util/List;
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

.field private k:Lcom/unionpay/mobile/android/nocard/views/o$a;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/nocard/views/o;Landroid/content/Context;Lcom/unionpay/mobile/android/nocard/views/o$a;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unionpay/mobile/android/nocard/views/o$a;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->g:I

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/ac;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/ac;-><init>(Lcom/unionpay/mobile/android/nocard/views/o$b;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/ad;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/ad;-><init>(Lcom/unionpay/mobile/android/nocard/views/o$b;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/o$b;->setOrientation(I)V

    iput-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->k:Lcom/unionpay/mobile/android/nocard/views/o$a;

    iput-object p4, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->j:Ljava/util/List;

    iput-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->l:Ljava/lang/String;

    new-instance p3, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v2, p1, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->l:Ljava/lang/String;

    iget v7, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->g:I

    const-string v6, ""

    const/4 v8, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v8}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->c:Lcom/unionpay/mobile/android/upwidget/c;

    new-instance p3, Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->c:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {p3, p1, p5}, Lcom/unionpay/mobile/android/upwidget/g;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V

    iput-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->d:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p3, p1}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->d:Lcom/unionpay/mobile/android/upwidget/g;

    iget-object p3, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/view/View$OnClickListener;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p1, p1, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p1

    const/16 p3, 0x7de

    const/4 p4, -0x1

    invoke-virtual {p1, p3, p4, p4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance p3, Landroid/widget/RelativeLayout;

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p5, p5, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-direct {p3, p5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/ae;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/ae;-><init>(Lcom/unionpay/mobile/android/nocard/views/o$b;)V

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget p5, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p1, p4, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Lcom/unionpay/mobile/android/nocard/views/o$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/ImageView;

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p5, p5, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-direct {p1, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p5

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setId(I)V

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p5, p5, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-static {p5}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p5

    const/16 p6, 0x3ea

    invoke-virtual {p5, p6, p4, p4}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p5, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p5, p5, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    const/high16 p6, 0x41700000    # 15.0f

    invoke-static {p5, p6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p5

    new-instance p6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p6, p5, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p5, 0xb

    invoke-virtual {p6, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p5, 0xf

    invoke-virtual {p6, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p3, p1, p6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p6, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v0, v0, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-direct {p6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p6, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    const v0, -0x99999a

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p6, p4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->a:Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p2, p2, Lcom/unionpay/mobile/android/nocard/views/o;->d:Landroid/content/Context;

    invoke-static {p2, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget p2, p6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p2, p6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p6, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0x9

    invoke-virtual {p6, p2, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p6, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/o$b;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/o$b;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->g:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/o$b;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/o$b;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->d:Lcom/unionpay/mobile/android/upwidget/g;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    :cond_0
    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->b:Landroid/widget/PopupWindow;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/o$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/upwidget/c;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->c:Lcom/unionpay/mobile/android/upwidget/c;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/nocard/views/o$b;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->g:I

    return p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/nocard/views/o$b;)Lcom/unionpay/mobile/android/nocard/views/o$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->k:Lcom/unionpay/mobile/android/nocard/views/o$a;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->c:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/c;->c()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/o$b;->c:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {v1, p1}, Lcom/unionpay/mobile/android/upwidget/c;->b(I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
