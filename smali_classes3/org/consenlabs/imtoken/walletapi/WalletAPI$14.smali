.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->findWalletByKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 406
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 409
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "chainType"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "keystore"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$14;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "password"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v0, v1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByKeystore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
