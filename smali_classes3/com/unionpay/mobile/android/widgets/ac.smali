.class final Lcom/unionpay/mobile/android/widgets/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/widgets/aa;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/widgets/aa;->a(Landroid/text/Editable;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    iget-object p1, p1, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    iget-object p1, p1, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/widgets/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/widgets/aa;->s()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-virtual {p2}, Lcom/unionpay/mobile/android/widgets/aa;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-static {p2}, Lcom/unionpay/mobile/android/widgets/aa;->a(Lcom/unionpay/mobile/android/widgets/aa;)Lcom/unionpay/mobile/android/widgets/aa$a;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    invoke-static {p2}, Lcom/unionpay/mobile/android/widgets/aa;->a(Lcom/unionpay/mobile/android/widgets/aa;)Lcom/unionpay/mobile/android/widgets/aa$a;

    move-result-object p2

    iget-object p3, p0, Lcom/unionpay/mobile/android/widgets/ac;->a:Lcom/unionpay/mobile/android/widgets/aa;

    iget-object p3, p3, Lcom/unionpay/mobile/android/widgets/aa;->b:Lcom/unionpay/mobile/android/widgets/u;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/unionpay/mobile/android/widgets/aa$a;->a(Lcom/unionpay/mobile/android/widgets/u;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
