.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->batchECRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 813
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7

    .line 816
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "dataAndSignatures"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 817
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 818
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 819
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "data"

    .line 820
    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "signature"

    .line 821
    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    iget-object v5, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "isHex"

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$27;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v5, v6}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 823
    invoke-static {v4, v3}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddressFromHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_0
    invoke-static {v4, v3}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddressFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushString(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
