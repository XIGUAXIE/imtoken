.class public final Lcom/unionpay/mobile/android/nocard/views/ak;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# instance fields
.field private r:I

.field private s:I

.field private t:Lcom/unionpay/mobile/android/upwidget/a;

.field private u:Landroid/widget/TextView;

.field private v:Lcom/unionpay/mobile/android/upviews/a;

.field private w:Landroid/view/View$OnClickListener;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->t:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/al;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/al;-><init>(Lcom/unionpay/mobile/android/nocard/views/ak;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->w:Landroid/view/View$OnClickListener;

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/am;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/am;-><init>(Lcom/unionpay/mobile/android/nocard/views/ak;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->x:Landroid/view/View$OnClickListener;

    const/16 p1, 0xa

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->f:I

    const-string p1, "openupgrade"

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->q:Ljava/lang/String;

    const p1, -0x10100c

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ak;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->a()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->b()V

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->d()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->c()V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/ak;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/ak;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->t:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/nocard/views/ak;)I
    .locals 1

    const/16 v0, 0x66

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    return v0
.end method

.method private s()V
    .locals 4

    const/16 v0, 0x67

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ak;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->j:Z

    const/16 v0, 0x65

    iput v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sms elements:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object p1, p1, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 6

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    const/16 v1, 0x14

    const/16 v2, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fail_msg"

    invoke-static {p1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "open_info"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->S:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "title"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v5, "succ_info"

    invoke-static {p1, v5}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    if-lez p1, :cond_0

    const-string p1, "01"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->s()V

    return-void

    :cond_0
    iput v2, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->i()V

    const-string p1, "00"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ak;->d(I)V

    return-void

    :cond_1
    const-string p1, "03"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/an;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/nocard/views/an;-><init>(Lcom/unionpay/mobile/android/nocard/views/ak;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->ab:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->ac:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    if-gtz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/nocard/views/ak;->b(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_3

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->s:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->s()V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/ak;->b(I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    sget v0, Lcom/unionpay/mobile/android/global/b;->p:I

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iput v2, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->r:I

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final c()V
    .locals 15

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v8, v5, Lcom/unionpay/mobile/android/model/b;->T:Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v5}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v9

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v12, v5, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    iget-object v14, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->q:Ljava/lang/String;

    const/4 v13, 0x1

    move-object v6, v3

    move-object v11, p0

    invoke-direct/range {v6 .. v14}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->d:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v4, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v4, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v4, 0x3

    invoke-virtual {v5, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v6, v6, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->x:Landroid/view/View$OnClickListener;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->q:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_agree_user_protocol"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->t:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->d:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v6, "label"

    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    sget v5, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/nocard/views/ak;->o()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sget v0, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->m:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/ak;->v:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/ak;->m()V

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
