.class Lim/imkey/imkeylibrary/bluetooth/Ble$1;
.super Ljava/lang/Object;
.source "Ble.java"

# interfaces
.implements Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/imkey/imkeylibrary/bluetooth/Ble;->startScan(ILim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

.field final synthetic val$scanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;


# direct methods
.method constructor <init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    iput-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->val$scanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDevice(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$100(Lim/imkey/imkeylibrary/bluetooth/Ble;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->val$scanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    iget-object v1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v1, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$200(Lim/imkey/imkeylibrary/bluetooth/Ble;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;->onScanDevice(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V

    return-void
.end method

.method public onScanStarted()V
    .locals 1

    .line 77
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->val$scanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    invoke-interface {v0}, Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;->onScanStarted()V

    return-void
.end method

.method public onScanStopped()V
    .locals 1

    .line 88
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$1;->val$scanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    invoke-interface {v0}, Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;->onScanStopped()V

    return-void
.end method
