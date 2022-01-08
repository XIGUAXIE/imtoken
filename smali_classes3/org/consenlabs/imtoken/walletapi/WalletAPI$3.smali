.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->exportIdentity(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 122
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 125
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "identifier"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$3;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "password"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/Identity;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "invalid_identity"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    invoke-virtual {v3, v2}, Lorg/consenlabs/tokencore/wallet/Identity;->exportIdentity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    new-instance v3, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    invoke-direct {v3}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;-><init>()V

    .line 131
    invoke-virtual {v3, v1, v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    const-string v1, "mnemonic"

    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/WritableMapBuilder;->toMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method
