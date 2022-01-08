.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->recoverIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 94
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    .line 97
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "name"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "mnemonic"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "password"

    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "passwordHint"

    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "network"

    invoke-interface {v2, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 102
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$2;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v7, "segWit"

    invoke-interface {v2, v7}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    .line 103
    invoke-static/range {v2 .. v7}, Lorg/consenlabs/tokencore/wallet/Identity;->recoverIdentity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v2

    .line 104
    sget-object v3, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v3}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v3

    .line 105
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/tokencore/wallet/Wallet;

    .line 106
    invoke-static {v5}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    .line 108
    :cond_0
    new-instance v4, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v4}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 109
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Identity;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "identifier"

    invoke-virtual {v4, v6, v5}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v4

    .line 110
    invoke-virtual {v4, v1, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Identity;->getIpfsId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ipfsId"

    invoke-virtual {v0, v2, v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    const-string v1, "wallets"

    .line 113
    invoke-interface {v0, v1, v3}, Lcom/facebook/react/bridge/WritableMap;->putArray(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-object v0
.end method
