.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->findWalletByPrivateKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 524
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 527
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "chainType"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "privateKey"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "network"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 530
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$16;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "segWit"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    invoke-static {v0, v2, v1, v3}, Lorg/consenlabs/tokencore/wallet/WalletManager;->findWalletByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
