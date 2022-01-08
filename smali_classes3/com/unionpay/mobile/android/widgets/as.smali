.class public final Lcom/unionpay/mobile/android/widgets/as;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/unionpay/mobile/android/resource/c;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->a:Lcom/unionpay/mobile/android/resource/c;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->a:Lcom/unionpay/mobile/android/resource/c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/as;->setBackgroundColor(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/widgets/as;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->c:Landroid/widget/ImageView;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    sget v0, Lcom/unionpay/mobile/android/global/a;->C:I

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/unionpay/mobile/android/widgets/as;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/as;->a:Lcom/unionpay/mobile/android/resource/c;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/as;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
