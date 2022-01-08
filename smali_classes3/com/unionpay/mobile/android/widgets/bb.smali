.class public final Lcom/unionpay/mobile/android/widgets/bb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/bb$a;,
        Lcom/unionpay/mobile/android/widgets/bb$b;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ScrollView;

.field private h:I

.field private j:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/unionpay/mobile/android/global/a;->r:I

    sput v0, Lcom/unionpay/mobile/android/widgets/bb;->a:I

    const/16 v0, 0x28

    sput v0, Lcom/unionpay/mobile/android/widgets/bb;->b:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/unionpay/mobile/android/widgets/bb;->i:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v2, Lcom/unionpay/mobile/android/widgets/bb;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->d:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->f:Landroid/view/View;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->h:I

    new-instance v1, Lcom/unionpay/mobile/android/widgets/bc;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/widgets/bc;-><init>(Lcom/unionpay/mobile/android/widgets/bb;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/widgets/bb;->j:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/bb;->d:Landroid/view/View$OnClickListener;

    const/high16 p2, 0x425c0000    # 55.0f

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/unionpay/mobile/android/widgets/bb;->a:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/bb;->c:Landroid/content/Context;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p2, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p2

    sput p2, Lcom/unionpay/mobile/android/widgets/bb;->b:I

    check-cast p3, Landroid/view/ViewParent;

    :goto_0
    const/4 p2, 0x0

    if-eqz p3, :cond_1

    instance-of v1, p3, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast p3, Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSV : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPWidgetKeyBoard"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mSV H:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3, p2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/unionpay/mobile/android/widgets/bb;->f:Landroid/view/View;

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p3, Landroid/widget/RelativeLayout;

    invoke-direct {p3, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v1, -0x50000000

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const p1, -0xcacacc

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p3, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/unionpay/mobile/android/widgets/bb$b;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/bb;->c:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/unionpay/mobile/android/widgets/bb$b;-><init>(Lcom/unionpay/mobile/android/widgets/bb;Landroid/content/Context;)V

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-direct {p1, p3, v0, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p1, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/bb;->j:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/bb;)I
    .locals 0

    iget p0, p0, Lcom/unionpay/mobile/android/widgets/bb;->h:I

    return p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/bb;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/unionpay/mobile/android/widgets/bb;->i:Ljava/util/List;

    return-object v0
.end method

.method private static d()I
    .locals 3

    sget v0, Lcom/unionpay/mobile/android/widgets/bb;->a:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lcom/unionpay/mobile/android/widgets/bb;->b:I

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kbH="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPWidgetKeyBoard"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/widgets/bb;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/bb;->d:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, p0, Lcom/unionpay/mobile/android/widgets/bb;->h:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget p1, Lcom/unionpay/mobile/android/global/a;->t:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    sget v1, Lcom/unionpay/mobile/android/global/a;->k:I

    sub-int/2addr p1, v1

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/bb;->d()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "height = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UPWidgetKeyBoard"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/widgets/bb;->d()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/bb;->g:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/bb;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method
