.class public final Lcom/unionpay/mobile/android/widgets/m;
.super Ljava/lang/Object;


# static fields
.field private static final k:F

.field private static final l:F

.field private static final m:F


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lcom/unionpay/mobile/android/resource/c;

.field private h:Landroid/app/Dialog;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    sput v0, Lcom/unionpay/mobile/android/widgets/m;->k:F

    sget v0, Lcom/unionpay/mobile/android/global/b;->k:F

    sput v0, Lcom/unionpay/mobile/android/widgets/m;->l:F

    sget v0, Lcom/unionpay/mobile/android/global/b;->j:F

    sput v0, Lcom/unionpay/mobile/android/widgets/m;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/unionpay/mobile/android/widgets/m;-><init>(Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->e:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/widgets/m;->f:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->g:Lcom/unionpay/mobile/android/resource/c;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->i:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->j:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->j:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->g:Lcom/unionpay/mobile/android/resource/c;

    sget p1, Lcom/unionpay/mobile/android/global/a;->I:I

    sget p2, Lcom/unionpay/mobile/android/global/a;->b:I

    mul-int/lit8 p2, p2, 0x4

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/unionpay/mobile/android/widgets/m;->f:I

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->g:Lcom/unionpay/mobile/android/resource/c;

    const/16 v0, 0x404

    const/4 v1, -0x1

    invoke-virtual {p2, v0, p1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->i:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 4

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    new-instance v0, Lcom/unionpay/mobile/android/widgets/n;

    invoke-direct {v0, p0, p1}, Lcom/unionpay/mobile/android/widgets/n;-><init>(Lcom/unionpay/mobile/android/widgets/m;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->g:Lcom/unionpay/mobile/android/resource/c;

    const/16 v1, 0xfa4

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/m;->g:Lcom/unionpay/mobile/android/resource/c;

    invoke-virtual {v3, v1, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/unionpay/mobile/android/widgets/m;->f:I

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {v1, p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v1

    sget v3, Lcom/unionpay/mobile/android/global/a;->M:I

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget v6, Lcom/unionpay/mobile/android/global/a;->j:I

    iget v7, p0, Lcom/unionpay/mobile/android/widgets/m;->f:I

    shl-int/lit8 v4, v6, 0x1

    sub-int/2addr v7, v4

    new-instance v4, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/m;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/unionpay/mobile/android/widgets/m;->l:F

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget p1, Lcom/unionpay/mobile/android/global/a;->p:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    new-instance p1, Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/m;->d()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/unionpay/mobile/android/global/a;->b:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xcccccd

    const/16 v4, 0x11

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget v8, Lcom/unionpay/mobile/android/widgets/m;->k:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    shl-int/lit8 p1, v1, 0x1

    invoke-virtual {v7, v1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/unionpay/mobile/android/widgets/m;->l:F

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->b:I

    shl-int/2addr v1, v3

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    sget p3, Lcom/unionpay/mobile/android/widgets/m;->m:F

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    const p3, -0xea7305

    const v0, -0x593503

    invoke-static {p3, v0}, Lcom/unionpay/mobile/android/utils/h;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget p2, Lcom/unionpay/mobile/android/global/a;->o:I

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p3, v6, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Lcom/unionpay/mobile/android/widgets/o;

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/unionpay/mobile/android/widgets/o;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/a;->H:I

    invoke-direct {p3, v6, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/m;->d()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget v1, Lcom/unionpay/mobile/android/global/a;->b:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0xcccccd

    const/16 v4, 0x11

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    sget v8, Lcom/unionpay/mobile/android/widgets/m;->k:F

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setGravity(I)V

    shl-int/lit8 p1, v1, 0x1

    invoke-virtual {v7, v1, p1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance p1, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget v7, Lcom/unionpay/mobile/android/widgets/m;->l:F

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    invoke-virtual {p1, v1, v1, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result p1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v8, Lcom/unionpay/mobile/android/global/a;->b:I

    shl-int/2addr v8, v3

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget p2, p0, Lcom/unionpay/mobile/android/widgets/m;->f:I

    sget v2, Lcom/unionpay/mobile/android/global/a;->H:I

    sub-int/2addr p2, v2

    shr-int/2addr p2, v3

    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    if-nez p5, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_1
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/widgets/m;->m:F

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    const v2, -0x593503

    const v5, -0xea7305

    invoke-static {v5, v2}, Lcom/unionpay/mobile/android/utils/h;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setGravity(I)V

    sget p3, Lcom/unionpay/mobile/android/global/a;->o:I

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/widgets/m;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v8, 0x5

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/m;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/m;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    sget p4, Lcom/unionpay/mobile/android/widgets/m;->m:F

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    invoke-static {v5, v2}, Lcom/unionpay/mobile/android/utils/h;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->e:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/unionpay/mobile/android/widgets/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v8, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/unionpay/mobile/android/widgets/m;->d()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_5
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/m;->h:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
