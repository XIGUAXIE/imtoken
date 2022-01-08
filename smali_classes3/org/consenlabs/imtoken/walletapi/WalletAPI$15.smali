.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->importWalletFromPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 438
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    .line 441
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 442
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "overwrite"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 444
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "privateKeys"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "WIF"

    const-string v3, "accountName"

    if-eqz v0, :cond_2

    .line 445
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 448
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->readPermissions(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;

    move-result-object v5

    .line 452
    new-instance v0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    move-object v3, v1

    move-object v2, v0

    .line 459
    invoke-static/range {v2 .. v7}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromPrivateKeys(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 462
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "privateKey"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v1

    .line 465
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ETHEREUM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "PRIVATE"

    :cond_3
    invoke-virtual {v1, v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->setSource(Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$15;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v1, v2, v0, v6, v7}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    goto :goto_2

    .line 471
    :cond_4
    invoke-static {v1, v0, v6, v7}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromPrivateKey(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 474
    :goto_2
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
