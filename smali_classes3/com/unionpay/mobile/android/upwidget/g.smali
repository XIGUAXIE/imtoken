.class public final Lcom/unionpay/mobile/android/upwidget/g;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/unionpay/mobile/android/upwidget/c;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/AdapterView$OnItemClickListener;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/upwidget/c;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/h;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/h;-><init>(Lcom/unionpay/mobile/android/upwidget/g;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->e:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/i;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/upwidget/i;-><init>(Lcom/unionpay/mobile/android/upwidget/g;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->f:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/g;->b:Lcom/unionpay/mobile/android/upwidget/c;

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {p2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p1, v2, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    invoke-virtual {p2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v3, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/g;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->a:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    invoke-direct {p2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v4, -0x333334

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance p2, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    invoke-direct {p2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/g;->b:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-direct {p0, p2, v3}, Lcom/unionpay/mobile/android/upwidget/g;->a(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/g;->b:Lcom/unionpay/mobile/android/upwidget/c;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/g;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/g;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/g;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/g;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Landroid/widget/ListView;Landroid/widget/ListAdapter;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/g;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {p2, v3, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/g;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/g;->d:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
