.class Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;
.super Ljava/lang/Object;
.source "WalletAPI.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/WalletAPI;->decryptData(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
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

    .line 994
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->this$0:Lorg/consenlabs/imtoken/walletapi/WalletAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8

    .line 997
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v1, "cipherText"

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v2, "password"

    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v3, "salt"

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "e65cc9bdc3ad15a9f6e0931b24fbf3cf"

    .line 1005
    :goto_0
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v4, "cipher"

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1006
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "aes-128-ctr"

    .line 1008
    :goto_1
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    const-string v5, "padding"

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1009
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/WalletAPI$37;->val$map:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    const-string v4, "nopadding"

    .line 1011
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x40

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1012
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x40

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    .line 1013
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object v1

    .line 1014
    invoke-static {v0, v3, v4, v1, v2}, Lorg/consenlabs/tokencore/wallet/WalletManager;->decryptData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)[B

    move-result-object v0

    .line 1015
    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1019
    invoke-static {v0}, Lorg/consenlabs/tokencore/foundation/utils/NumericUtil;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1017
    :cond_3
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "password_incorrect"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
