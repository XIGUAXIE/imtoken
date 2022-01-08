.class public final Lcom/unionpay/mobile/android/widgets/k;
.super Lcom/unionpay/mobile/android/widgets/aa;


# instance fields
.field private final c:Ljava/lang/String;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    const-string p1, "[A-Za-z0-9]{8,32}"

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->o:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->p:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/widgets/k;->r:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->t:Ljava/lang/String;

    new-instance p1, Lcom/unionpay/mobile/android/widgets/l;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/widgets/l;-><init>(Lcom/unionpay/mobile/android/widgets/k;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->u:Landroid/view/View$OnClickListener;

    const-string p1, "button_label"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->s:Ljava/lang/String;

    const-string p1, "button_action"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->t:Ljava/lang/String;

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/b;->n:I

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/k;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/widgets/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/k;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/k;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    const p2, -0x593503

    const p4, -0xa35c26

    const v0, -0x666667

    invoke-static {p4, p2, p2, v0}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    sget p2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/k;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/k;->a(Z)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/k;->b:Lcom/unionpay/mobile/android/widgets/u;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    invoke-virtual {p2, p3, p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/k;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/widgets/k;->r:Z

    return p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/k;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/k;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/widgets/k;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/k;->p:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->B:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/unionpay/mobile/android/widgets/k;->r:Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/k;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/k;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/k;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/k;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_coupon"

    return-object v0
.end method
