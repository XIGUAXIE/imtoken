.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signTransaction(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 836
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 839
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "id"

    .line 841
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v1

    .line 844
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ETHEREUM"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v2, v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$100(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BITCOIN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v2, v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$200(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EOS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 849
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v2, v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$300(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    goto :goto_0

    .line 850
    :cond_2
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getChainType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "COSMOS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 851
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$28;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v2, v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$400(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;Lorg/consenlabs/tokencore/wallet/Wallet;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    :goto_0
    return-object v0

    .line 853
    :cond_3
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    .line 854
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Unsupport ChainType "

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
