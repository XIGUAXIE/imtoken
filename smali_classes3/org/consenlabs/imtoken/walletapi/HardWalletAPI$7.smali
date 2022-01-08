.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->isImKeyConnected(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 381
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    .line 384
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "imKeyAddress"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/imkey/imkeylibrary/bluetooth/BleDevice;

    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$7;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-virtual {v0}, Lim/imkey/imkeylibrary/bluetooth/BleDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$300(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
