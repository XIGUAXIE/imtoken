.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->privateKeyToPublicKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 254
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 257
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "privateKey"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "privateKeyType"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$10;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "encodeTo"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v0, v1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->privateKeyToPublic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
