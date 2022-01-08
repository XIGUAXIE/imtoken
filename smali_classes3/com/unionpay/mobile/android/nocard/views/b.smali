.class public abstract Lcom/unionpay/mobile/android/nocard/views/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;
.implements Lcom/unionpay/mobile/android/nocard/views/a;
.implements Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;
.implements Lcom/unionpay/mobile/android/widgets/aa$a;
.implements Lcom/unionpay/mobile/android/widgets/ay$a;


# instance fields
.field protected a:Lcom/unionpay/mobile/android/model/b;

.field protected b:Lcom/unionpay/mobile/android/widgets/m;

.field protected c:Lcom/unionpay/mobile/android/resource/c;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Z

.field protected k:Landroid/widget/RelativeLayout;

.field protected l:Landroid/view/ViewGroup;

.field protected m:Landroid/widget/RelativeLayout;

.field protected n:Lcom/unionpay/mobile/android/widgets/as;

.field protected o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

.field protected p:Lcom/unionpay/mobile/android/model/e;

.field protected q:Ljava/lang/String;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/LinearLayout;

.field private u:I

.field private v:I

.field private w:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->n:Lcom/unionpay/mobile/android/widgets/as;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    const-string v1, "uppay"

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    const/4 v1, 0x0

    iput v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->f:I

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    :cond_0
    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->p:Lcom/unionpay/mobile/android/model/e;

    move-object p2, p1

    check-cast p2, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const-class v1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p2, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    const-class v0, Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unionpay/mobile/android/widgets/m;

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 p1, 0x22b8

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->setId(I)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/unionpay/mobile/android/nocard/views/b;->setBackgroundColor(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "UPViewBase:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "uppayEx"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/b;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->u:I

    return p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/b;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private a(IZZ)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_6

    const/16 v1, 0x8

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-eq p1, v1, :cond_6

    const/16 v1, 0x12

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/bi;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1, p2, p3}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2, v2}, Lcom/unionpay/mobile/android/nocard/views/o;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    move-object v2, p1

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/af;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/af;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/ai;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/ai;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/ak;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/ak;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p2, p2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p2, p2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget p2, p2, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->h()Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->br:Z

    if-nez p1, :cond_3

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v2

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/g;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, p1}, Lcom/unionpay/mobile/android/nocard/views/bd;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_7

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Lcom/unionpay/mobile/android/nocard/views/b;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/nocard/views/b;I)I
    .locals 0

    iput p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->v:I

    return p1
.end method

.method protected static b(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static o()Landroid/content/res/ColorStateList;
    .locals 4

    sget v0, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v1, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v2, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v3, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private r()Landroid/widget/RelativeLayout;
    .locals 7

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->setPadding(IIII)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const v5, -0x8581

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const v5, -0x41448

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const-string v3, ""

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_4

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v6, v6, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v6, :cond_3

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    const v6, -0x99999a

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v2, -0x10100c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v1, v0, v2}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Landroid/widget/RelativeLayout;
    .locals 4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v0, v1}, Lcom/unionpay/mobile/android/nocard/views/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected final a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;
    .locals 10

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/unionpay/mobile/android/global/a;->I:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v7, v1, v2

    const-string v1, "pan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/widgets/af;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/af;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "mobile"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ah;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/ah;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "sms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ap;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/ap;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "cvn2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/unionpay/mobile/android/widgets/e;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/e;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "expire"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/unionpay/mobile/android/widgets/av;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/av;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "pwd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/unionpay/mobile/android/widgets/UPWidget;

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v5

    move-object v3, v0

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/unionpay/mobile/android/widgets/UPWidget;-><init>(Landroid/content/Context;JILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/unionpay/mobile/android/widgets/at;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/at;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "string"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ad;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/unionpay/mobile/android/widgets/ad;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "cert_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/unionpay/mobile/android/widgets/f;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/f;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "cert_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/unionpay/mobile/android/widgets/g;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/unionpay/mobile/android/widgets/g;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ae;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/ae;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v1, "hidden"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/unionpay/mobile/android/widgets/y;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/unionpay/mobile/android/widgets/y;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v1, "user_name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/unionpay/mobile/android/widgets/au;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/au;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string v1, "password"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/unionpay/mobile/android/widgets/ao;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v7, p1, p2}, Lcom/unionpay/mobile/android/widgets/ao;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_e

    instance-of p1, v0, Lcom/unionpay/mobile/android/widgets/aa;

    if-eqz p1, :cond_e

    move-object p1, v0

    check-cast p1, Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {p1, p0}, Lcom/unionpay/mobile/android/widgets/aa;->a(Lcom/unionpay/mobile/android/widgets/aa$a;)V

    :cond_e
    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(I)V

    return-void
.end method

.method protected final a(ILcom/unionpay/mobile/android/model/e;)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/16 v1, 0x8

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-eq p1, v1, :cond_6

    const/16 v1, 0x12

    if-eq p1, v1, :cond_6

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/bi;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/bi;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/o;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/unionpay/mobile/android/nocard/views/o;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/af;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/af;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/ai;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ai;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/ak;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/ak;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget v2, v2, Lcom/unionpay/mobile/android/model/b;->N:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/model/c;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/model/c;->c()I

    move-result p1

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->h()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget p1, p1, Lcom/unionpay/mobile/android/model/b;->aP:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->br:Z

    if-nez p1, :cond_3

    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/at;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, v1, p2}, Lcom/unionpay/mobile/android/nocard/views/at;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1, p2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object p1

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/g;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/g;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/unionpay/mobile/android/nocard/views/bd;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/unionpay/mobile/android/nocard/views/bd;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Lcom/unionpay/mobile/android/nocard/views/b;)V

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a

    const-string p1, "parserResponseMesage() +++"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    const-string v2, " ERROR_MSG_FORMAT"

    const/4 v3, 0x2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "resp"

    invoke-static {v4, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string p2, "msg"

    invoke-static {v4, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    const-string p2, "cmd"

    invoke-static {v4, p2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    const-string p2, "params"

    invoke-static {v4, p2}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string v4, "00"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p1, "pay"

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->E:Ljava/lang/String;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    :cond_2
    const-string p1, "rules"

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_cardNO_fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    :cond_3
    const-string p1, "getuserinfo"

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->g:Ljava/lang/String;

    const-string p2, "21"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x11

    const-string p2, " ERROR_ORDER_TIMEOUT"

    invoke-static {v1, p2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x11

    goto :goto_1

    :cond_5
    const/4 p1, 0x3

    const-string p2, " ERROR_TRANSACTION"

    invoke-static {v1, p2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v3, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_0
    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Lorg/json/JSONObject;)V

    :cond_9
    :goto_2
    const-string p1, "parserResponseMesage() ---"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/widgets/u;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 6

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0, p2, p3}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, p2, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, p2, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, p2, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p2, v0, Lcom/unionpay/mobile/android/model/b;->ag:Ljava/lang/String;

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, p2, Lcom/unionpay/mobile/android/model/b;->af:Ljava/lang/String;

    const/16 p1, 0xe

    invoke-direct {p0, p1, p3, p4}, Lcom/unionpay/mobile/android/nocard/views/b;->a(IZZ)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/d;

    invoke-direct {v0, p0, p2}, Lcom/unionpay/mobile/android/nocard/views/d;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Z)V

    const-string p2, "uppay"

    const-string v1, " showErrDialog(msg, boolean)  "

    invoke-static {p2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "uppay"

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x11

    if-eq p1, v1, :cond_1

    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "showErrDialog 2"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Z)V

    return-void

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v2, "fail"

    iput-object v2, v1, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    const-string v1, "showErrDialog 1"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method protected b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected final b(Lorg/json/JSONObject;)Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->c(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->c(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final c(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aA:Ljava/lang/String;

    return-object p1

    :pswitch_0
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aL:Ljava/lang/String;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aO:Ljava/lang/String;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aN:Ljava/lang/String;

    return-object p1

    :pswitch_3
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aP:Ljava/lang/String;

    return-object p1

    :pswitch_4
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aM:Ljava/lang/String;

    return-object p1

    :pswitch_5
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aK:Ljava/lang/String;

    return-object p1

    :pswitch_6
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aJ:Ljava/lang/String;

    return-object p1

    :pswitch_7
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aG:Ljava/lang/String;

    return-object p1

    :pswitch_8
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aI:Ljava/lang/String;

    return-object p1

    :pswitch_9
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aH:Ljava/lang/String;

    return-object p1

    :pswitch_a
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->az:Ljava/lang/String;

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->h:Ljava/lang/String;

    return-object p1

    :pswitch_c
    sget-object p1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object p1, p1, Lcom/unionpay/mobile/android/languages/c;->aB:Ljava/lang/String;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_4
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected final c(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/e;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mobile/android/nocard/views/e;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Lorg/json/JSONObject;)V

    new-instance v1, Lcom/unionpay/mobile/android/nocard/views/f;

    invoke-direct {v1, p0, p1}, Lcom/unionpay/mobile/android/nocard/views/f;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->w:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->aG:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aH:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aI:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aK:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->r()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected final d(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->a(IZZ)V

    return-void
.end method

.method protected final e()V
    .locals 5

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->a()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->b()V

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->r()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    const v2, -0x110002

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->f()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->c()V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->v:I

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->u:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->t:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected f()V
    .locals 13

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aM:Z

    const v2, -0x8581

    const v3, -0x41448

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v0, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v0, v0, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->at:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v4

    const-string v8, ""

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v9, v9, Lcom/unionpay/mobile/android/model/b;->at:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v8

    :goto_2
    invoke-static {v4}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v9

    const v10, -0x99999a

    const/16 v11, 0x8

    if-eqz v9, :cond_4

    new-instance v9, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v12, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v12, v12, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v12, :cond_3

    sget-boolean v12, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v12, :cond_3

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_4
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v4, v4, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v4, :cond_5

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_5
    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ar:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_6
    invoke-static {v8}, Lcom/unionpay/mobile/android/nocard/views/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->aM:Z

    if-eqz v2, :cond_7

    sget-boolean v2, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-nez v2, :cond_7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_6
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/unionpay/mobile/android/nocard/views/c;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/nocard/views/c;-><init>(Lcom/unionpay/mobile/android/nocard/views/b;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    new-instance v0, Lcom/unionpay/mobile/android/views/order/m;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/unionpay/mobile/android/views/order/m;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, v7, v7}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4, v7, v7}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/unionpay/mobile/android/views/order/m;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    instance-of v2, p0, Lcom/unionpay/mobile/android/nocard/views/ao;

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->h:Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unionpay/mobile/android/views/order/m;->a(ZLorg/json/JSONArray;Lorg/json/JSONObject;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0x402

    invoke-virtual {v0, v1, v7, v7}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->f:I

    return v0
.end method

.method protected final h()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->J:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->q:Ljava/util/List;

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

.method protected final i()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/d;->a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->m()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->k()V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b()V

    return-void
.end method

.method protected final n()Z
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->b:Lcom/unionpay/mobile/android/widgets/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dialog showing:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uppay"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onAttachedToWindow()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppayEx"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0, p0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine$a;)V

    return-void
.end method

.method protected final p()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
