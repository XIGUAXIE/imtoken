.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->connect(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

.field final synthetic val$map:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 322
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "imKeyAddress"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "timeout"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v2

    invoke-virtual {v2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->stopScan()V

    .line 328
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "isConnectDirectly"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    .line 333
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-direct {v3, v4, v0, v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Ljava/lang/String;I)V

    goto :goto_1

    .line 335
    :cond_1
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v3}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    if-eqz v3, :cond_3

    .line 339
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v4}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    invoke-direct {v3, v4, v5, v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lim/imkey/imkeylibrary/bluetooth/BleDevice;I)V

    .line 342
    :goto_1
    invoke-virtual {v3, v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->connect(Z)V

    .line 343
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 344
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    if-eqz v0, :cond_2

    .line 349
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "address"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 347
    :cond_2
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "imkey_operation_failed"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_3
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "The devices can\'t be scanned"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
