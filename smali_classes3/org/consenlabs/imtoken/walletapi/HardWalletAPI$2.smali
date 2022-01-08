.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->initBluetooth(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 256
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 259
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "locale"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 262
    :goto_0
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 266
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/MainActivity;->enableLocationPermission()V

    .line 267
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/MainActivity;->checkDeviceLocationPowerOn()V

    .line 268
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/MainActivity;->enableBluetooth()V

    .line 270
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$500(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 271
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lim/imkey/imkeylibrary/bluetooth/Ble;->initialize(Landroid/content/Context;Ljava/util/Locale;)V

    .line 272
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$502(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Z)Z

    .line 275
    :cond_1
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 263
    :cond_2
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Some error happened, Pls restart the APP"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
