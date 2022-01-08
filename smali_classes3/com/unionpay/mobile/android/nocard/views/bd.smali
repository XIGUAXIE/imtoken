.class public final Lcom/unionpay/mobile/android/nocard/views/bd;
.super Lcom/unionpay/mobile/android/nocard/views/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/nocard/views/bd$a;
    }
.end annotation


# instance fields
.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Lcom/unionpay/mobile/android/nocard/views/bd$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    new-instance v0, Lcom/unionpay/mobile/android/nocard/views/be;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/nocard/views/be;-><init>(Lcom/unionpay/mobile/android/nocard/views/bd;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bd;->e()V

    const-string v0, "result"

    iput-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object p1, v0, Lcom/unionpay/mobile/android/model/b;->aq:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->aV:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v0, "bingopromotion"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/nocard/views/bd;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/bd;->r()V

    return-void
.end method

.method private r()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "functionEx"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aQ:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget v1, v1, Lcom/unionpay/mobile/android/model/b;->aQ:I

    sget-object v2, Lcom/unionpay/mobile/android/views/order/l;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v1, "success"

    iput-object v1, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bd;->j()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "luck_draw"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/j;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->t:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->t:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->a(Lorg/json/JSONObject;)V

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

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/nocard/views/bd;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v4, v4, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/widgets/ay;->a()V

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    return-void
.end method

.method protected final c()V
    .locals 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    const v1, -0x10100c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->o:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->setBackgroundColor(I)V

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    sget-object v7, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/languages/c;->E:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    sget v7, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/nocard/views/bd;->o()Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v3, v6}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x9

    invoke-virtual {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v5, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/unionpay/mobile/android/nocard/views/bd$a;

    iget-object v5, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/unionpay/mobile/android/nocard/views/bd$a;-><init>(Lcom/unionpay/mobile/android/nocard/views/bd;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->t:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/unionpay/mobile/android/nocard/views/bd$a;->setVisibility(I)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/unionpay/mobile/android/nocard/views/bd;->t:Lcom/unionpay/mobile/android/nocard/views/bd$a;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final f()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    const/4 v2, 0x2

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v8, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v8, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iget-object v8, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v8, v8, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v9, v9, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    const v9, -0xea7568

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget v9, Lcom/unionpay/mobile/android/global/a;->d:I

    invoke-virtual {v8, v6, v9, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v9, -0x6a2d02

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v5, Lcom/unionpay/mobile/android/global/a;->d:I

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v5, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v5, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v8, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    iget-object v8, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v8, v5, v6, v2}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v8, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v8, v5, v2, v1}, Lcom/unionpay/mobile/android/nocard/views/bh;->a(Landroid/content/Context;Lorg/json/JSONArray;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v1, Lcom/unionpay/mobile/android/widgets/as;

    iget-object v2, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unionpay/mobile/android/widgets/as;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v2, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    new-instance v3, Lcom/unionpay/mobile/android/nocard/views/bf;

    invoke-direct {v3, v0}, Lcom/unionpay/mobile/android/nocard/views/bf;-><init>(Lcom/unionpay/mobile/android/nocard/views/bd;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v10, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v11, 0x41c80000    # 25.0f

    invoke-static {v10, v11}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v10

    new-instance v11, Landroid/widget/ImageView;

    iget-object v12, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v12, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v13, 0x40b

    invoke-virtual {v12, v13, v7, v7}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aR:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/i;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const/16 v9, 0x3c

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v7, v9, :cond_4

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x3e

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/2addr v13, v5

    if-eq v7, v13, :cond_5

    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_2
    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v11, v13, -0x1

    if-eq v7, v9, :cond_6

    if-ge v15, v11, :cond_6

    if-eq v13, v7, :cond_6

    invoke-virtual {v1, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/utils/i;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "#"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v9, v1

    if-ne v9, v2, :cond_6

    aget-object v11, v1, v6

    aget-object v1, v1, v5

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_3
    invoke-static {v12, v11, v1, v14}, Lcom/unionpay/mobile/android/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v11

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_8

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aS:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/bd;->b(Ljava/lang/String;)Z

    move-result v1

    const v2, -0x99999a

    if-eqz v1, :cond_9

    new-instance v1, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v9, v9, Lcom/unionpay/mobile/android/model/b;->aS:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aT:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/bd;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->aT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_a
    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v5, -0x10100c

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aW:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aX:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/mobile/android/nocard/views/bd;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/unionpay/mobile/android/global/b;->l:F

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aX:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    iget-object v1, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v2, 0x402

    invoke-virtual {v1, v2, v7, v7}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_c

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->d:Landroid/content/Context;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, v0, Lcom/unionpay/mobile/android/nocard/views/bd;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/nocard/views/bd;->r()V

    return-void
.end method
