.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->exportWalletMetadata(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 1113
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1116
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$43;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 1118
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    instance-of v1, v1, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;

    .line 1123
    sget-object v1, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 1124
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->getMnemonicPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "path"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/keystore/HDMnemonicKeystore;->getMetadata()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/Metadata;->getNetwork()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network"

    invoke-interface {v1, v2, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1119
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "Only allow debug BTC HD wallet"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
