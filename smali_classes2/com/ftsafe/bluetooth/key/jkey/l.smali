.class Lcom/ftsafe/bluetooth/key/jkey/l;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/l;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ft_log"

    const-string v1, "\u8fde\u63a5\u8d85\u65f6"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/l;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/l;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/l;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$402(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Z)Z

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/l;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Disconnect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-void
.end method
