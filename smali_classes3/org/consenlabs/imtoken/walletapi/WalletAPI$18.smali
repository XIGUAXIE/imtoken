.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->exportMnemonic(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 610
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 613
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$18;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "password"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lorg/consenlabs/tokencore/wallet/WalletManager;->exportMnemonic(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;

    move-result-object v0

    .line 618
    new-instance v1, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v1}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 619
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->getMnemonic()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnemonic"

    invoke-virtual {v1, v3, v2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v1

    .line 620
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/MnemonicAndPath;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "path"

    invoke-virtual {v1, v2, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
