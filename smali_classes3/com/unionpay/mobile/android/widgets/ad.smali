.class public final Lcom/unionpay/mobile/android/widgets/ad;
.super Lcom/unionpay/mobile/android/widgets/z;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    if-eqz p3, :cond_0

    const-string p2, "style"

    invoke-static {p3, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->b:Ljava/lang/String;

    :cond_0
    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->m:Landroid/widget/RelativeLayout;

    new-instance p3, Landroid/widget/LinearLayout;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->d:Landroid/content/Context;

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p5, -0x1

    const/4 v0, -0x2

    invoke-direct {p4, p5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->d:Landroid/content/Context;

    invoke-direct {p2, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    sget p4, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->p()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    const/4 p4, 0x3

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    const p5, -0xcccccd

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const p5, 0x3e99999a    # 0.3f

    invoke-direct {p2, p1, v0, p5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    invoke-virtual {p3, p4, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->d:Landroid/content/Context;

    invoke-direct {p2, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    const/16 p4, 0x10

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget p4, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->b:Ljava/lang/String;

    invoke-static {p2, p4}, Lcom/unionpay/mobile/android/data/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget p4, Lcom/unionpay/mobile/android/global/a;->g:I

    invoke-virtual {p2, p1, p1, p4, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const p4, 0x3f333333    # 0.7f

    invoke-direct {p2, p1, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 p1, 0x15

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p3, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->a:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->p()Ljava/lang/String;

    move-result-object p1

    const p2, -0x777778

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/ad;->d:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    sget p3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->c:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/ad;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    new-instance p1, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/ad;->d:Landroid/content/Context;

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    sget p3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ad;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/widgets/ad;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
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

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ad;->o:Landroid/widget/TextView;

    const v1, -0x666667

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
