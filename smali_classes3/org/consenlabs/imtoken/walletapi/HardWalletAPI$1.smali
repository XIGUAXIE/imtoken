.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanDevice(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "address"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "imkey_found"

    invoke-static {p1, v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onScanFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V
    .locals 3

    .line 131
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 132
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p1

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "imkey_scan_failed"

    invoke-static {p1, v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onScanStarted()V
    .locals 4

    .line 112
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    sget-object v2, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "imkey_scan_started"

    invoke-static {v0, v1, v3, v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onScanStopped()V
    .locals 4

    .line 126
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    sget-object v2, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    const-string v3, "imkey_scan_finished"

    invoke-static {v0, v1, v3, v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method
