.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->deleteDerivedKey(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 1097
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1100
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "id"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1101
    new-instance v2, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;

    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$42;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    invoke-static {v3}, Lorg/consenlabs/imtoken/walletapi/WalletAPI;->access$700(Lorg/consenlabs/imtoken/walletapi/WalletAPI;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v2}, Lorg/consenlabs/imtoken/walletapi/BiometricProtectedData;->deleteEncrypted()V

    .line 1104
    sget-object v2, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule;->sArgumentMapper:Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;

    invoke-interface {v2}, Lorg/consenlabs/imtoken/walletapi/ArgumentMapper;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 1105
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
