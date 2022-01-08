.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImkeyConnection"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private bleDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

.field private errorMessage:Ljava/lang/String;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

.field private timeout:I


# direct methods
.method public constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lim/imkey/imkeylibrary/bluetooth/BleDevice;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p3, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->timeout:I

    .line 166
    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->bleDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    return-void
.end method

.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Ljava/lang/String;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    .line 161
    iput p3, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->timeout:I

    return-void
.end method


# virtual methods
.method connect(Z)V
    .locals 2

    .line 170
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object p1

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->timeout:I

    invoke-virtual {p1, v0, v1, p0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->connectDirectly(Ljava/lang/String;ILim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object p1

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->bleDevice:Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->timeout:I

    invoke-virtual {p1, v0, v1, p0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->connect(Lim/imkey/imkeylibrary/bluetooth/BleDevice;ILim/imkey/imkeylibrary/bluetooth/Callback/ConnectCallback;)V

    .line 177
    :goto_0
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->errorMessage:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 182
    :cond_1
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->errorMessage:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 179
    :catch_0
    new-instance p1, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v0, "imkey_operation_failed"

    invoke-direct {p1, v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method disconnect()V
    .locals 4

    .line 187
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    if-eqz v0, :cond_1

    .line 188
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$300(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 190
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->disconnect(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 195
    :goto_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->errorMessage:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 196
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public onConnectFail(Lim/imkey/imkeylibrary/bluetooth/ErrorCode;)V
    .locals 3

    .line 234
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v1, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->ALREADY_CONNECTED:Lim/imkey/imkeylibrary/bluetooth/ErrorCode;

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_0
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/ErrorCode;->get_desc()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->errorMessage:Ljava/lang/String;

    .line 242
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 243
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "imkey_connection_failed"

    invoke-static {p1, v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onConnected(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V
    .locals 3

    .line 209
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 211
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-interface {v0, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address"

    .line 213
    invoke-interface {v0, p1, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 216
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "imkey_connected"

    invoke-static {p1, v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method public onConnecting(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V
    .locals 0

    return-void
.end method

.method public onDisconnected(Lim/imkey/imkeylibrary/bluetooth/BleDevice;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 222
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->address:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 228
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;

    move-result-object v1

    const-string v2, "imkey_disconnected"

    invoke-static {p1, v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    :cond_0
    return-void
.end method
