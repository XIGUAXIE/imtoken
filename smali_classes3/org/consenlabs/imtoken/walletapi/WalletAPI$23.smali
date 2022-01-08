.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->personalSign(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 726
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 729
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$23;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/WalletAPI;Lcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v0

    const-string v1, "id"

    .line 730
    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    .line 731
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "password"

    .line 732
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v1

    .line 735
    invoke-virtual {v1, v0}, Lorg/consenlabs/tokencore/wallet/Wallet;->decryptMainKey(Ljava/lang/String;)[B

    move-result-object v0

    .line 736
    invoke-static {v2, v0}, Lorg/consenlabs/tokencore/wallet/transaction/EthereumSign;->personalSign(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
