.class Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;
.super Ljava/lang/Object;
.source "HardWalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->startScan(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 290
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 293
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "timeout"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    invoke-virtual {v1}, Lim/imkey/imkeylibrary/bluetooth/Ble;->stopScan()V

    .line 295
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v1}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;

    .line 296
    invoke-virtual {v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$ImkeyConnection;->disconnect()V

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {}, Lim/imkey/imkeylibrary/bluetooth/Ble;->getInstance()Lim/imkey/imkeylibrary/bluetooth/Ble;

    move-result-object v1

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI$3;->this$0:Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;

    invoke-static {v2}, Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;->access$600(Lorg/consenlabs/imtoken/walletapi/HardWalletAPI;)Lim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lim/imkey/imkeylibrary/bluetooth/Ble;->startScan(ILim/imkey/imkeylibrary/bluetooth/Callback/ScanCallback;)V

    .line 300
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v0}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
