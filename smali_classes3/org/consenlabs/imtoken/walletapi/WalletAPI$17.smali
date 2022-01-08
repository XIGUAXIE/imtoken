.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->exportPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 555
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    .line 558
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "password"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v2

    .line 561
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v3

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x25f3e009

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x10ce9

    if-eq v4, v5, :cond_1

    const v5, 0x24ac68fe

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "BITCOIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_1
    const-string v4, "EOS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v4, "ETHEREUM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string v4, "privateKey"

    if-eqz v3, :cond_8

    if-eq v3, v7, :cond_7

    if-ne v3, v6, :cond_6

    .line 579
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "address"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 580
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v5

    .line 583
    :goto_2
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v6, "derivedPath"

    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 584
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$17;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v6}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 587
    :cond_5
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 588
    invoke-static {v0, v1, v5, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->exportPrivateKeyByAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 591
    :cond_6
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not support the chain  of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_7
    new-instance v2, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 574
    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->exportPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 563
    :cond_8
    invoke-virtual {v2, v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->exportPrivateKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 564
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v1

    .line 565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/model/KeyPair;

    .line 566
    sget-object v3, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v3}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 567
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->getPrivateKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/KeyPair;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    const-string v5, "publicKey"

    invoke-interface {v3, v5, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-interface {v1, v3}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_3

    :cond_9
    return-object v1
.end method
