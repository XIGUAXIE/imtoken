.class public Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;
.super Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;
    }
.end annotation


# static fields
.field private static final EXCEPTION_DEVICE_HAS_CONNECTED:Ljava/lang/String; = "imkey_has_connected"

.field private static final EXCEPTION_DEVICE_NAME_INVALID:Ljava/lang/String; = "imkey_device_name_invalid"

.field private static final EXCEPTION_DEVICE_NOT_CONNECTED:Ljava/lang/String; = "imkey_not_connected"

.field private static final EXCEPTION_DEVICE_OPERATION_FAILED:Ljava/lang/String; = "imkey_operation_failed"

.field private static final EXCEPTION_EOS_ACCOUNT_INVALID:Ljava/lang/String; = "imkey_eos_account_invalid"

.field private static sInstance:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;


# instance fields
.field private isInitialized:Z

.field private mBleDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lim/imkey/imkeylibrary/bluetooth/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mReactContext:Lcom/facebook/react/bridge/ReactContext;

.field private mScanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mBleDevices:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mConnections:Ljava/util/Map;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->isInitialized:Z

    .line 109
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;

    invoke-direct {v0, p0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$1;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)V

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mScanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    .line 97
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 98
    sput-object p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->sInstance:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    .line 100
    sget-object p1, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    invoke-interface {p1, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->set_callback(Lorg/consenlabs/imtoken/walletapi/Sender;)V

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lcom/facebook/react/bridge/ReactContext;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object p0
.end method

.method static synthetic access$100(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    return-void
.end method

.method static synthetic access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mBleDevices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mConnections:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->isInitialized:Z

    return p0
.end method

.method static synthetic access$502(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->isInitialized:Z

    return p1
.end method

.method static synthetic access$600(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mScanCallback:Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    return-object p0
.end method

.method public static getInstance()Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;
    .locals 1

    .line 92
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->sInstance:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    return-object v0
.end method

.method private isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 393
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mReactContext:Lcom/facebook/react/bridge/ReactContext;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x7

    .line 397
    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/BluetoothManager;->getConnectionState(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private sendEvent(Lcom/facebook/react/bridge/ReactContext;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 248
    const-class v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 249
    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 250
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public callImKeyApi(Ljava/lang/String;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 404
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$8;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public connect(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 319
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$5;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public disconnect(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 362
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$6;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public disconnectAllDevices()V
    .locals 2

    .line 282
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->mConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;

    .line 283
    invoke-virtual {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->disconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "HardWalletAPI"

    return-object v0
.end method

.method public initBluetooth(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 256
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public isImKeyConnected(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 381
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public sendApdu(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "set call back sucess"

    .line 139
    invoke-static {v0}, Lim/imkey/imkeylibrary/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;

    invoke-interface {v0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyCoreXJna;->imkey_free_const_string(Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->sendApdu(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "communication_error_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public startScan(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 290
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;

    invoke-direct {v0, p0, p1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V

    invoke-virtual {p0, v0, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public stopScan(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 307
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$4;

    invoke-direct {p1, p0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$4;-><init>(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)V

    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method
