.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->findWalletByMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 338
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 341
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "mnemonic"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "path"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "network"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "chainType"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 346
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "segWit"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$12;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 350
    :goto_0
    invoke-static {v3, v2, v0, v1, v4}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByMnemonic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
