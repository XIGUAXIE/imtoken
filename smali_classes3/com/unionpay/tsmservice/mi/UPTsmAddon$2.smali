.class final Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;


# direct methods
.method constructor <init>(Lcom/unionpay/tsmservice/mi/UPTsmAddon;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;Z)Z

    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-static {p2}, Lcom/unionpay/tsmservice/mi/ITsmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unionpay/tsmservice/mi/ITsmService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;Lcom/unionpay/tsmservice/mi/ITsmService;)Lcom/unionpay/tsmservice/mi/ITsmService;

    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-static {p1}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;Z)Z

    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;Lcom/unionpay/tsmservice/mi/ITsmService;)Lcom/unionpay/tsmservice/mi/ITsmService;

    iget-object p1, p0, Lcom/unionpay/tsmservice/mi/UPTsmAddon$2;->a:Lcom/unionpay/tsmservice/mi/UPTsmAddon;

    invoke-static {p1}, Lcom/unionpay/tsmservice/mi/UPTsmAddon;->a(Lcom/unionpay/tsmservice/mi/UPTsmAddon;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
