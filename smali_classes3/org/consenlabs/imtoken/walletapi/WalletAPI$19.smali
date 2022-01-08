.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->verifyPassword(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 629
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 632
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 633
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$19;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "password"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 635
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v3

    .line 637
    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->verifyPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    new-instance v2, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    invoke-virtual {v2, v1, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 638
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "password_incorrect"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
