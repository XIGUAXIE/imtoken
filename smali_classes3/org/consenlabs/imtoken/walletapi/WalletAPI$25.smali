.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->batchSign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

.field final synthetic val$map:Lcom/facebook/react/bridge/ReadableMap;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 771
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "id"

    .line 772
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    .line 773
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    .line 774
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 777
    sget-object v3, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v3}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 778
    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptMainKey(Ljava/lang/String;)[B

    move-result-object v1

    .line 780
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "isHex"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$25;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 781
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v2, :cond_1

    .line 783
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signHex(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 784
    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->signStr(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v4

    .line 785
    :goto_2
    invoke-static {v4}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v3
.end method
