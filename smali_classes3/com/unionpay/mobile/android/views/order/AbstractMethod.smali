.class public abstract Lcom/unionpay/mobile/android/views/order/AbstractMethod;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;,
        Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;
    }
.end annotation


# static fields
.field protected static final a:I


# instance fields
.field protected b:Landroid/content/Context;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;

.field protected f:Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/unionpay/mobile/android/global/b;->a:I

    sput v0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->setOrientation(I)V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected static a(Landroid/widget/TextView;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, -0xa35c26

    const v1, -0x666667

    const v2, -0x593503

    invoke-static {v0, v2, v2, v1}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 8

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->a(Landroid/widget/RelativeLayout;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b(Landroid/widget/RelativeLayout;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    iget-object v4, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    sget v4, Lcom/unionpay/mobile/android/global/b;->b:I

    sget v5, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v6, Lcom/unionpay/mobile/android/global/b;->c:I

    sget v7, Lcom/unionpay/mobile/android/global/b;->d:I

    invoke-static {v4, v5, v6, v7}, Lcom/unionpay/mobile/android/utils/h;->a(IIII)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    sget v4, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    new-instance v4, Lcom/unionpay/mobile/android/views/order/a;

    invoke-direct {v4, p0}, Lcom/unionpay/mobile/android/views/order/a;-><init>(Lcom/unionpay/mobile/android/views/order/AbstractMethod;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/unionpay/mobile/android/global/b;->n:I

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0, v3}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->c(Landroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public abstract a(Landroid/widget/RelativeLayout;)V
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->f:Lcom/unionpay/mobile/android/views/order/AbstractMethod$a;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->e:Lcom/unionpay/mobile/android/views/order/AbstractMethod$b;

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->g:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public abstract b()I
.end method

.method public abstract b(Landroid/widget/RelativeLayout;)V
.end method

.method public abstract c()Lcom/unionpay/mobile/android/upviews/a$a;
.end method

.method public abstract c(Landroid/widget/RelativeLayout;)V
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Z
.end method

.method protected final g()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/views/order/AbstractMethod;->h:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
