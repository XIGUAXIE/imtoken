.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->createIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 68
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 71
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "name"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "password"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "passwordHint"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "network"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 75
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$1;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "segWit"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v0, v1, v2, v3, v4}, Lorg/consenlabs/tokencore/wallet/Identity;->createIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v0

    .line 77
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/consenlabs/tokencore/wallet/Wallet;

    .line 79
    invoke-static {v3}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 81
    :cond_0
    new-instance v2, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 82
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const-string v4, "identifier"

    invoke-virtual {v2, v4, v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getIpfsId()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ipfsId"

    invoke-virtual {v2, v3, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v2, "wallets"

    .line 85
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method
