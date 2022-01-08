.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->ecRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 795
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 798
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "data"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "signature"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "isHex"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$26;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddressFromHex(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 803
    :cond_0
    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->recoverAddressFromStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
