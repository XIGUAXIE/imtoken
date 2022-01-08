.class Lcom/ftsafe/bluetooth/key/jkey/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

.field final synthetic e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/lang/String;IJLcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->a:Ljava/lang/String;

    iput p3, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->b:I

    iput-wide p4, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->c:J

    iput-object p6, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->d:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDevice(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0, p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1102(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_StopScan()V

    :cond_0
    return-void
.end method

.method public onScanStarted()V
    .locals 0

    return-void
.end method

.method public onScanStopped()V
    .locals 5

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->c:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    div-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->e:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->d:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_Connect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object v0

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->d:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    invoke-interface {v1, v0}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/h;->d:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    :cond_1
    :goto_0
    return-void
.end method
