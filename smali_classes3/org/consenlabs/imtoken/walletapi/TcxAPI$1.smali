.class Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;
.super Ljava/lang/Object;
.source "TcxAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/consenlabs/imtoken/walletapi/TcxAPI;->asyncCall(Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;Lcom/facebook/react/bridge/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

.field final synthetic val$caller:Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Lcom/facebook/react/bridge/Promise;Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iput-object p3, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$caller:Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 44
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$caller:Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;

    invoke-interface {v1}, Lorg/consenlabs/imtoken/walletapi/TokenBaseJavaModule$Callable;->call()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/consenlabs/imtoken/walletapi/TcxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/consenlabs/tokencore/wallet/model/TokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/Wallet;

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 48
    :try_start_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->this$0:Lorg/consenlabs/imtoken/walletapi/TcxAPI;

    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/model/TokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/consenlabs/imtoken/walletapi/TcxAPI;->access$000(Lorg/consenlabs/imtoken/walletapi/TcxAPI;Ljava/lang/String;)Lorg/consenlabs/tokencore/wallet/model/TokenException;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/Wallet;

    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 46
    :try_start_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxAPI$1;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/consenlabs/tokencore/wallet/Wallet;

    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    goto :goto_2

    :cond_3
    return-void

    .line 51
    :goto_3
    invoke-static {}, Lorg/consenlabs/tokencore/wallet/Identity;->getCurrentIdentity()Lorg/consenlabs/tokencore/wallet/Identity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 53
    invoke-virtual {v1}, Lorg/consenlabs/tokencore/wallet/Identity;->getWallets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/consenlabs/tokencore/wallet/Wallet;

    if-eqz v2, :cond_4

    .line 57
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v3

    invoke-virtual {v3}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 58
    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/Wallet;->getKeystore()Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/wallet/keystore/IMTKeystore;->getCrypto()Lorg/consenlabs/tokencore/foundation/crypto/Crypto;

    move-result-object v2

    invoke-virtual {v2}, Lorg/consenlabs/tokencore/foundation/crypto/Crypto;->clearCachedDerivedKey()V

    goto :goto_4

    .line 63
    :cond_5
    throw v0
.end method
