.class Lcom/ftsafe/bluetooth/key/jkey/m;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ft_log"

    const-string v1, "\u6570\u636e\u63a5\u6536\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproguard/ftsafe/c/a;

    invoke-virtual {v0}, Lproguard/ftsafe/c/a;->b()V

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/m;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v1

    sget-object v2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_RECV_DATA_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {v0, v1, v2}, Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;->onRecvFail(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    :cond_0
    return-void
.end method
