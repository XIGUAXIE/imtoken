.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->importWalletFromMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 282
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 9

    .line 285
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "password"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "mnemonic"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "path"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "overwrite"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 290
    new-instance v0, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMap;->toHashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/validators/MetadataValidator;->validate()Lorg/consenlabs/tokencore/wallet/model/Metadata;

    move-result-object v2

    .line 291
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v0, v1}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->readPermissions(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 294
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "accountName"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$11;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v3, v0

    .line 299
    invoke-static/range {v2 .. v8}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0

    .line 304
    :cond_1
    invoke-static {v2, v4, v5, v7, v8}, Lorg/consenlabs/tokencore/wallet/WalletManager;->importWalletFromMnemonic(Lorg/consenlabs/tokencore/wallet/model/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->createBuilder(Lorg/consenlabs/tokencore/wallet/Wallet;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
