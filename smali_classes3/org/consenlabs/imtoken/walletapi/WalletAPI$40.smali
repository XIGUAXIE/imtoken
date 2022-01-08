.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->cacheDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 1051
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1055
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "password"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    .line 1059
    invoke-static {v0, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->getDerivedKey(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 1061
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$40;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v4}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$500(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v3, v2}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->encryptData([B)V

    .line 1063
    sget-object v2, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 1064
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enableDerivedKey"

    const/4 v1, 0x1

    .line 1065
    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "mode"

    const-string v1, "fingerprint"

    .line 1066
    invoke-interface {v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
