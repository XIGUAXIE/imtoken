.class Lim/imkey/imkeylibrary/bluetooth/Ble$2;
.super Ljava/lang/Object;
.source "Ble.java"

# interfaces
.implements Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/imkey/imkeylibrary/bluetooth/Ble;->connect(Lim/imkey/imkeylibrary/bluetooth/BleDevice;ILim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

.field final synthetic val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;


# direct methods
.method constructor <init>(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    iput-object p2, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$302(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/BleDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    .line 139
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;

    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->toErrorCode(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onConnectFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V

    return-void
.end method

.method public onFTBtConnected(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$200(Lim/imkey/imkeylibrary/bluetooth/Ble;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    invoke-static {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$302(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/BleDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    .line 126
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$400(Lim/imkey/imkeylibrary/bluetooth/Ble;)V

    .line 127
    iget-object p1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;

    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$300(Lim/imkey/imkeylibrary/bluetooth/Ble;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onConnected(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V

    return-void
.end method

.method public onFTBtConnecting(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;

    iget-object v1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v1, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$200(Lim/imkey/imkeylibrary/bluetooth/Ble;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onConnecting(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V

    return-void
.end method

.method public onFTBtDisconnected(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$302(Lim/imkey/imkeylibrary/bluetooth/Ble;Lim/imkey/imkeylibrary/bluetooth/BleDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    .line 133
    iget-object v0, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->val$connectCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;

    iget-object v1, p0, Lim/imkey/imkeylibrary/bluetooth/Ble$2;->this$0:Lim/imkey/imkeylibrary/bluetooth/Ble;

    invoke-static {v1, p1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->access$200(Lim/imkey/imkeylibrary/bluetooth/Ble;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;->onDisconnected(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V

    return-void
.end method
