.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->getDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 1074
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5

    .line 1077
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1078
    new-instance v2, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$41;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v3}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$600(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v2}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->decryptData()[B

    move-result-object v2

    .line 1080
    sget-object v3, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v3}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    .line 1081
    invoke-interface {v3, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    invoke-static {v2}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    const-string v4, "derivedKey"

    invoke-interface {v3, v4, v1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-static {v0}, Lorg/consenlabs/tokencore/wallet/WalletManager;->mustFindWalletById(Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/Wallet;

    move-result-object v0

    .line 1086
    invoke-virtual {v0, v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->verifyDerivedKey([B)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    .line 1087
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "invalid_cached_derived_key"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
