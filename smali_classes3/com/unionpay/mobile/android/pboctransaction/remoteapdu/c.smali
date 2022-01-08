.class final Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "plugin-tsm"

    const-string v0, "mConnection.onServiceConnected()"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xbb8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->b(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p2}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1f40

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->c(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Lcom/unionpay/mobile/tsm/connect/IInitCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->registerCallback(Lcom/unionpay/mobile/tsm/connect/IInitCallback;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->d(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    move-result-object p1

    invoke-interface {p1}, Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "plugin-tsm"

    const-string v0, "mConnection.onServiceDisconnected()"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a(Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;)Lcom/unionpay/mobile/tsm/connect/IRemoteApdu;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/c;->a:Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/pboctransaction/remoteapdu/a;->a:Lcom/unionpay/mobile/android/pboctransaction/b;

    invoke-interface {p1}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_1
    return-void
.end method
