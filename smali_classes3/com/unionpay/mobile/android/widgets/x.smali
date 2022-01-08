.class final Lcom/unionpay/mobile/android/widgets/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/u;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/u;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->b(Lcom/unionpay/mobile/android/widgets/u;)Z

    move-result p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->d(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->d(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$b;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/unionpay/mobile/android/widgets/u$b;->a(Z)V

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->e(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->e(Lcom/unionpay/mobile/android/widgets/u;)Lcom/unionpay/mobile/android/widgets/u$a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/unionpay/mobile/android/widgets/u$a;->a(Z)V

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/x;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->invalidate()V

    return-void
.end method
