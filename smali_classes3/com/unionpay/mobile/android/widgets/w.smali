.class final Lcom/unionpay/mobile/android/widgets/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/u;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/u;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->b(Lcom/unionpay/mobile/android/widgets/u;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->c(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/w;->a:Lcom/unionpay/mobile/android/widgets/u;

    invoke-static {p1}, Lcom/unionpay/mobile/android/widgets/u;->a(Lcom/unionpay/mobile/android/widgets/u;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    goto :goto_0
.end method
