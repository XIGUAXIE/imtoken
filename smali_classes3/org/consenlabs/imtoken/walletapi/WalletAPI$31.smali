.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->signAuthenticationMessage(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 892
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 895
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "identifier"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 896
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "accessTime"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 897
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "deviceToken"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 898
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$31;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "password"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 900
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v4

    .line 901
    invoke-virtual {v4}, Lorg/consenlabs/tokencore/wallet/Identity;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    invoke-virtual {v4, v1, v2, v3}, Lorg/consenlabs/tokencore/wallet/Identity;->signAuthenticationMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->prependHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 902
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "invalid_identity"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
