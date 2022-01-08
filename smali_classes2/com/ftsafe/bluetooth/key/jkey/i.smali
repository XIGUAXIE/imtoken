.class Lcom/ftsafe/bluetooth/key/jkey/i;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/c/e;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lproguard/ftsafe/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->b()V

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v0

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECTION_BROKEN:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {p1, v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;->onRecvFail(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    return-void
.end method

.method public a(Lproguard/ftsafe/c/a;[BI)V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->b()V

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;->onRecvData(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;[BI)V

    return-void
.end method

.method public b(Lproguard/ftsafe/c/a;)V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->b()V

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/i;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v0

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {p1, v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;->onRecvFail(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    return-void
.end method
