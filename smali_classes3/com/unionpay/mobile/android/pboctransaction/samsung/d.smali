.class final Lcom/unionpay/mobile/android/pboctransaction/samsung/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "plugin-clientV3"

    const-string v0, "startSamsungService onServiceConnected"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {p2}, Lcom/unionpay/client3/tsm/ITsmConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/client3/tsm/ITsmConnection;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "plugin-clientV3"

    const-string v0, "startSamsungService onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Lcom/unionpay/client3/tsm/ITsmConnection;)Lcom/unionpay/client3/tsm/ITsmConnection;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/d;->a:Lcom/unionpay/mobile/android/pboctransaction/samsung/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/b;->a(Lcom/unionpay/mobile/android/pboctransaction/samsung/b;Z)V

    return-void
.end method
