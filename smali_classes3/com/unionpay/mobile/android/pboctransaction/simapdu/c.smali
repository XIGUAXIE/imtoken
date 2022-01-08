.class final Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->a(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    :goto_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/simapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;->b(Lcom/unionpay/mobile/android/pboctransaction/simapdu/b;)Lcom/unionpay/mobile/android/pboctransaction/b;

    :cond_2
    :goto_1
    return v0
.end method
