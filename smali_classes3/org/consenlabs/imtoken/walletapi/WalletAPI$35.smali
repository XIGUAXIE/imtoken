.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->eosEcRecover(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 962
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 965
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "data"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "signature"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 967
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$35;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "isHex"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 968
    invoke-static {v0, v2, v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->eosEcRecover(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
