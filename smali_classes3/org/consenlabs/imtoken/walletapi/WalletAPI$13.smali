.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->importWalletFromKeystore(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 377
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 380
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "keystore"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "password"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "overwrite"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 383
    new-instance v3, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$13;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v3

    .line 385
    invoke-static {v3, v0, v1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromKeystore(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 384
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
