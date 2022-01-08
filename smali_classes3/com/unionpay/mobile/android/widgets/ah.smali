.class public final Lcom/unionpay/mobile/android/widgets/ah;
.super Lcom/unionpay/mobile/android/widgets/aa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/widgets/ah$a;
    }
.end annotation


# instance fields
.field private c:Lcom/unionpay/mobile/android/widgets/ah$a;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/ah;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unionpay/mobile/android/widgets/aa;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->c:Lcom/unionpay/mobile/android/widgets/ah$a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->o:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->p:Ljava/lang/String;

    const-string p1, "button_label"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->o:Ljava/lang/String;

    const-string p1, "button_action"

    invoke-static {p3, p1}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->b:Lcom/unionpay/mobile/android/widgets/u;

    new-instance p2, Landroid/text/InputFilter$LengthFilter;

    const/16 p3, 0xb

    invoke-direct {p2, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/text/InputFilter;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->b:Lcom/unionpay/mobile/android/widgets/u;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->o:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    sget p2, Lcom/unionpay/mobile/android/global/b;->n:I

    const/4 p3, -0x1

    invoke-direct {p1, p3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p2, 0xf

    invoke-virtual {p1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ah;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/widgets/u;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ah;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ah;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    sget p2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance p2, Lcom/unionpay/mobile/android/widgets/ai;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/widgets/ai;-><init>(Lcom/unionpay/mobile/android/widgets/ah;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p2, p4, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/ah;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p3, p1, p2}, Lcom/unionpay/mobile/android/widgets/u;->a(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/widgets/ah;)Lcom/unionpay/mobile/android/widgets/ah$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/ah;->c:Lcom/unionpay/mobile/android/widgets/ah$a;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/widgets/ah;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/widgets/ah;->p:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/ah$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ah;->c:Lcom/unionpay/mobile/android/widgets/ah$a;

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ah;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ah;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/ah;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/ah;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "_input_phoneNO"

    return-object v0
.end method
