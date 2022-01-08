.class public final Lcom/unionpay/mobile/android/upwidget/j;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/upwidget/j$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private a:Landroid/content/Context;

.field private b:Lorg/json/JSONArray;

.field private c:I

.field private d:I

.field private e:Z

.field private f:[Lcom/unionpay/mobile/android/upwidget/j$a;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/HorizontalScrollView;

.field private j:Lcom/unionpay/mobile/android/widgets/k;

.field private k:Lcom/unionpay/mobile/android/widgets/ad;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/AdapterView$OnItemClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONArray;ILjava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->k:Lcom/unionpay/mobile/android/widgets/ad;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    iput v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->n:I

    iput v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->p:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->t:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->u:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->v:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->w:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->x:Ljava/util/ArrayList;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/k;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/k;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->y:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/l;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/l;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->z:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/m;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/m;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->A:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/n;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/n;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->B:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/o;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/o;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->C:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/p;

    invoke-direct {v3, p0}, Lcom/unionpay/mobile/android/upwidget/p;-><init>(Lcom/unionpay/mobile/android/upwidget/j;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->D:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    iput p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->r:I

    iput-object p4, p0, Lcom/unionpay/mobile/android/upwidget/j;->s:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget p4, p0, Lcom/unionpay/mobile/android/upwidget/j;->r:I

    div-int/lit8 p4, p4, 0x3

    const/4 v3, 0x2

    mul-int/lit8 p4, p4, 0x2

    invoke-direct {p3, v2, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p4, 0xc

    invoke-virtual {p3, p4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance p4, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p4, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p4, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p2, p4, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0xa

    invoke-virtual {p3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getId()I

    move-result v4

    invoke-virtual {p3, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    sget p3, Lcom/unionpay/mobile/android/global/a;->n:I

    invoke-direct {p2, v2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, -0x333334

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p4, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/HorizontalScrollView;

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->i:Landroid/widget/HorizontalScrollView;

    const p3, -0x10100c

    invoke-virtual {p2, p3}, Landroid/widget/HorizontalScrollView;->setBackgroundColor(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p4, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 p3, 0x42200000    # 40.0f

    invoke-static {p2, p3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    new-instance p3, Landroid/widget/ImageView;

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {p4}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p4

    const/16 v0, 0x40a

    invoke-virtual {p4, v0, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Lcom/unionpay/mobile/android/upwidget/j;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x55

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->r:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr p2, v3

    sub-int/2addr v0, p2

    iput v0, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p3, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/upwidget/j;->a()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/j;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    return p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/j;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->n:I

    return p1
.end method

.method private a(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 8

    const-string v0, "options"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/unionpay/mobile/android/upwidget/j;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    new-instance p2, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    iget v6, p0, Lcom/unionpay/mobile/android/upwidget/j;->p:I

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v7, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v7}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->y:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private a()V
    .locals 13

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Lcom/unionpay/mobile/android/upwidget/j$a;

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    new-instance v4, Lcom/unionpay/mobile/android/upwidget/j$a;

    invoke-direct {v4, p0, v1}, Lcom/unionpay/mobile/android/upwidget/j$a;-><init>(Lcom/unionpay/mobile/android/upwidget/j;B)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->a:Landroid/widget/TextView;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->a:Landroid/widget/TextView;

    :cond_0
    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->b:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->b:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    new-instance v4, Landroid/widget/ListView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v3, v3, v2

    const-string v4, ""

    iput-object v4, v3, Lcom/unionpay/mobile/android/upwidget/j$a;->d:Ljava/lang/String;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->i:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_a

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->b:Lorg/json/JSONArray;

    invoke-static {v5, v2}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    const-string v6, "action"

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    invoke-static {v5, v7}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v10, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v10

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v10, p0, Lcom/unionpay/mobile/android/upwidget/j;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v9

    new-instance v10, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v11, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v11, -0x99999a

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v9, v1, v9, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v11, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0xf

    invoke-virtual {v11, v12, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v8, v10, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v9

    add-int/2addr v7, v9

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v9, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v11, -0xff4b55

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget v11, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    const/16 v12, 0x8

    if-eq v11, v2, :cond_5

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    invoke-virtual {v8, v7, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/unionpay/mobile/android/upwidget/j;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v8, v8, v2

    iput-object v10, v8, Lcom/unionpay/mobile/android/upwidget/j$a;->a:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v8, v8, v2

    iput-object v7, v8, Lcom/unionpay/mobile/android/upwidget/j$a;->b:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v7, v7, v2

    iput-object v6, v7, Lcom/unionpay/mobile/android/upwidget/j$a;->d:Ljava/lang/String;

    iget v6, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    if-ne v6, v2, :cond_6

    iput v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->p:I

    goto :goto_2

    :cond_6
    iput v4, p0, Lcom/unionpay/mobile/android/upwidget/j;->p:I

    :goto_2
    const-string v6, "type"

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "coupon"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iput v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->d:I

    invoke-direct {p0, v0, v5}, Lcom/unionpay/mobile/android/upwidget/j;->b(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v5

    goto :goto_4

    :cond_7
    const-string v7, "point"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iput v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->c:I

    :goto_3
    invoke-direct {p0, v0, v5}, Lcom/unionpay/mobile/android/upwidget/j;->c(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v5

    goto :goto_4

    :cond_8
    const-string v7, "upoint"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    invoke-direct {p0, v0, v5}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v5

    :goto_4
    iget-object v6, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v6, v6, v2

    iput-object v5, v6, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_a
    iget v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/upwidget/j;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->a:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->a:Landroid/widget/TextView;

    const v2, -0xff4b55

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->o:I

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/unionpay/mobile/android/upwidget/c;)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->y:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v0, 0x30

    iput v0, p5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    const/16 p5, 0x11

    if-eqz p2, :cond_1

    sget p2, Lcom/unionpay/mobile/android/global/a;->p:I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {p2, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance p2, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0xcccccd

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "label"

    invoke-static {p4, v1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p4, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextSize(F)V

    sget p4, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v1, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v2, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v3, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {p4, v1, v2, v3}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p4, 0x1

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p4, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object p5, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {p5}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p5

    const/16 v1, 0x7d8

    const/4 v2, -0x1

    invoke-virtual {p5, v1, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    iget-object p3, p0, Lcom/unionpay/mobile/android/upwidget/j;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int p2, p2

    invoke-direct {p3, p2, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget p2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/upwidget/j;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/unionpay/mobile/android/upwidget/c;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/j;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->n:I

    return p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/upwidget/j;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->p:I

    return p1
.end method

.method private b(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 11

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "rules"

    invoke-static {p2, v3}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    move-object v5, v2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    check-cast v7, Lorg/json/JSONObject;

    const-string v8, "type"

    invoke-static {v7, v8}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "coupon_code"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v2, v7

    goto :goto_1

    :cond_0
    const-string v9, "string"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :cond_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    const/4 v8, -0x1

    invoke-virtual {v3, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->I:I

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    new-instance v3, Lcom/unionpay/mobile/android/widgets/k;

    iget-object v9, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    iget-object v10, p0, Lcom/unionpay/mobile/android/upwidget/j;->s:Ljava/lang/String;

    invoke-direct {v3, v9, v1, v2, v10}, Lcom/unionpay/mobile/android/widgets/k;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/unionpay/mobile/android/widgets/k;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {v2, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ad;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/unionpay/mobile/android/upwidget/j;->s:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v5, v9}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->k:Lcom/unionpay/mobile/android/widgets/ad;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->getId()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->k:Lcom/unionpay/mobile/android/widgets/ad;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    const v2, -0x99999a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/k;->getId()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "use_button"

    invoke-static {p2, v1}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v5, -0x333334

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    const-string v3, "label"

    invoke-static {p2, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v3, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v5, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v9, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {v2, v3, v5, v9}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    sget p2, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3, v8, v8}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    iget v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/upwidget/j;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget p2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-static {p2, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p2, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {p2, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {p2, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->q:I

    invoke-direct {p2, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private static b(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "label"

    invoke-static {p0, v1, v3}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "text2"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "editable"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "available"

    invoke-static {p0, v1, v3}, Lcom/unionpay/mobile/android/upwidget/j;->a(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upwidget/j;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->d:I

    return p0
.end method

.method private c(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;
    .locals 9

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const-string v0, "tip"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "empty_info"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "button"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/16 v7, 0x11

    const/4 v8, -0x2

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    const/4 p2, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v4, v5

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/unionpay/mobile/android/upwidget/c;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v7, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1, v6, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v6

    :cond_0
    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    const/4 p2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v3, v4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/unionpay/mobile/android/upwidget/c;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/upwidget/j;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upwidget/j;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->t:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->u:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/upwidget/j;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/upwidget/j;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/upwidget/j;)Lcom/unionpay/mobile/android/widgets/ad;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->k:Lcom/unionpay/mobile/android/widgets/ad;

    return-object p0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->x:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/upwidget/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->e:Z

    return p0
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/upwidget/j;)[Lcom/unionpay/mobile/android/upwidget/j$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    return-object p0
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/upwidget/j;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/upwidget/j;->w:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/upwidget/j;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    const-string v2, "label"

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->k:Lcom/unionpay/mobile/android/widgets/ad;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/widgets/ad;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->m:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/j;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    new-instance p1, Lcom/unionpay/mobile/android/upwidget/c;

    iget-object v2, p0, Lcom/unionpay/mobile/android/upwidget/j;->a:Landroid/content/Context;

    const/4 v7, -0x1

    const/4 v8, 0x1

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/unionpay/mobile/android/upwidget/c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/unionpay/mobile/android/upwidget/j;->c:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->f:[Lcom/unionpay/mobile/android/upwidget/j$a;

    iget v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->c:I

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/unionpay/mobile/android/upwidget/j$a;->c:Landroid/view/View;

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/upwidget/j;->a(Landroid/widget/LinearLayout;ZLjava/lang/String;Lorg/json/JSONObject;Lcom/unionpay/mobile/android/upwidget/c;)V

    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/k;->a(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/j;->j:Lcom/unionpay/mobile/android/widgets/k;

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/j;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/widgets/k;->b(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
