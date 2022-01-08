.class public Lorg/bitcoinj/wallet/BasicKeyChain;
.super Ljava/lang/Object;
.source "BasicKeyChain.java"

# interfaces
.implements Lorg/bitcoinj/wallet/EncryptableKeyChain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/BasicKeyChain$State;
    }
.end annotation


# instance fields
.field private final hashToKeys:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field

.field private isWatching:Z

.field private final keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final pubkeyToKeys:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/crypto/KeyCrypter;)V
    .locals 1
    .param p1    # Lorg/bitcoinj/crypto/KeyCrypter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BasicKeyChain"

    .line 45
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    iput-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    .line 61
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->pubkeyToKeys:Ljava/util/LinkedHashMap;

    .line 63
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private checkKeyEncryptionStateMatches(Lorg/bitcoinj/core/ECKey;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Key is encrypted but chain is not"

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Key is not encrypted but chain is"

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 168
    :cond_4
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Key encrypted under different parameters to chain"

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private deserializeFromProtobuf(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 364
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    const-string v1, "Tried to deserialize into a non-empty chain"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Protos$Key;

    .line 366
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getType()Lorg/bitcoinj/wallet/Protos$Key$Type;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 369
    :goto_1
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->hasSecretBytes()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getSecretBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 370
    :goto_2
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->hasPublicKey()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 372
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    if-eqz v1, :cond_5

    .line 375
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const-string v1, "This wallet is encrypted but encrypt() was not called prior to deserialization"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 376
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->hasEncryptedData()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getEncryptedData()Lorg/bitcoinj/wallet/Protos$EncryptedData;

    move-result-object v1

    .line 379
    new-instance v2, Lorg/bitcoinj/crypto/EncryptedData;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getInitialisationVector()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    .line 380
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData;->getEncryptedPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bitcoinj/crypto/EncryptedData;-><init>([B[B)V

    .line 381
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-static {v2, v1, v5}, Lorg/bitcoinj/core/ECKey;->fromEncrypted(Lorg/bitcoinj/crypto/EncryptedData;Lorg/bitcoinj/crypto/KeyCrypter;[B)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    goto :goto_4

    .line 377
    :cond_4
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    const-string v0, "Encrypted private key data missing"

    invoke-direct {p1, v0}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-eqz v2, :cond_6

    .line 384
    invoke-static {v2, v5}, Lorg/bitcoinj/core/ECKey;->fromPrivateAndPrecalculatedPublic([B[B)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    goto :goto_4

    .line 386
    :cond_6
    invoke-static {v5}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    .line 388
    :goto_4
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key;->getCreationTimestamp()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/ECKey;->setCreationTimeSeconds(J)V

    .line 389
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    goto/16 :goto_0

    .line 371
    :cond_7
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    const-string v0, "Public key missing"

    invoke-direct {p1, v0}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_8
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public static fromProtobufEncrypted(Ljava/util/List;Lorg/bitcoinj/crypto/KeyCrypter;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;",
            "Lorg/bitcoinj/crypto/KeyCrypter;",
            ")",
            "Lorg/bitcoinj/wallet/BasicKeyChain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 356
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-direct {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;)V

    .line 357
    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/BasicKeyChain;->deserializeFromProtobuf(Ljava/util/List;)V

    return-object v0
.end method

.method public static fromProtobufUnencrypted(Ljava/util/List;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;)",
            "Lorg/bitcoinj/wallet/BasicKeyChain;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 344
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>()V

    .line 345
    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/BasicKeyChain;->deserializeFromProtobuf(Ljava/util/List;)V

    return-object v0
.end method

.method private importKeyLocked(Lorg/bitcoinj/core/ECKey;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isWatching()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->isWatching:Z

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isWatching()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->isWatching:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key is watching but chain is not"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isWatching()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->isWatching:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key is not watching but chain is"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->pubkeyToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/ECKey;

    .line 181
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 182
    :goto_2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method private importKeysLocked(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/ECKey;

    .line 187
    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private queueOnKeysAdded(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 420
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 421
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/BasicKeyChain$1;

    invoke-direct {v3, p0, v1, p1}, Lorg/bitcoinj/wallet/BasicKeyChain$1;-><init>(Lorg/bitcoinj/wallet/BasicKeyChain;Lorg/bitcoinj/utils/ListenerRegistration;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static serializeEncryptableItem(Lorg/bitcoinj/crypto/EncryptableItem;)Lorg/bitcoinj/wallet/Protos$Key$Builder;
    .locals 5

    .line 315
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Key;->newBuilder()Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v0

    .line 316
    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->getCreationTimeSeconds()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setCreationTimestamp(J)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 317
    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->getEncryptedData()Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 321
    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->getEncryptedData()Lorg/bitcoinj/crypto/EncryptedData;

    move-result-object v1

    .line 322
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->getEncryptedDataBuilder()Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v2

    iget-object v3, v1, Lorg/bitcoinj/crypto/EncryptedData;->encryptedBytes:[B

    .line 323
    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setEncryptedPrivateKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    move-result-object v2

    iget-object v1, v1, Lorg/bitcoinj/crypto/EncryptedData;->initialisationVector:[B

    .line 324
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;->setInitialisationVector(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$EncryptedData$Builder;

    .line 326
    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object p0

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 327
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ENCRYPTED_SCRYPT_AES:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    goto :goto_1

    .line 329
    :cond_1
    invoke-interface {p0}, Lorg/bitcoinj/crypto/EncryptableItem;->getSecretBytes()[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 333
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setSecretBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 334
    :cond_2
    sget-object p0, Lorg/bitcoinj/wallet/Protos$Key$Type;->ORIGINAL:Lorg/bitcoinj/wallet/Protos$Key$Type;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setType(Lorg/bitcoinj/wallet/Protos$Key$Type;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
    .locals 1

    .line 405
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p1, p2}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 6

    .line 526
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 529
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 550
    :catch_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 530
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Key chain is not encrypted"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 534
    iget-object v3, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/ECKey;

    .line 535
    invoke-virtual {v4}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v4

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const-string v3, "No encrypted keys in the wallet"

    .line 540
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :try_start_2
    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    .line 544
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_2
    .catch Lorg/bitcoinj/crypto/KeyCrypterException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 550
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public checkPassword(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 514
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Key chain not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1

    return p1
.end method

.method public findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->pubkeyToKeys:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findKeysBefore(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 611
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_0

    .line 613
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 618
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findOldestKeyAfter(J)Lorg/bitcoinj/core/ECKey;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 589
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 592
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 593
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    if-eqz v0, :cond_1

    .line 595
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v5, v3

    if-lez v7, :cond_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    .line 601
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getEarliestKeyCreationTime()J
    .locals 5

    .line 275
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide v0, 0x7fffffffffffffffL

    .line 278
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/ECKey;

    .line 279
    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
    .locals 7

    .line 563
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/BloomFilter;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/core/BloomFilter;-><init>(IDJ)V

    .line 566
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    .line 567
    invoke-virtual {v0, p2}, Lorg/bitcoinj/core/BloomFilter;->insert(Lorg/bitcoinj/core/ECKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 570
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .param p1    # Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 82
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 84
    new-instance p1, Lorg/bitcoinj/core/ECKey;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey;-><init>()V

    .line 85
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    .line 86
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->queueOnKeysAdded(Ljava/util/List;)V

    .line 88
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 128
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;
    .locals 3
    .param p1    # Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "I)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 96
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 97
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-ge v1, p2, :cond_3

    .line 100
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 103
    :goto_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int v2, p2, v2

    if-ge v1, v2, :cond_2

    .line 104
    new-instance v2, Lorg/bitcoinj/core/ECKey;

    invoke-direct {v2}, Lorg/bitcoinj/core/ECKey;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 107
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeysLocked(Ljava/util/List;)V

    .line 109
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->queueOnKeysAdded(Ljava/util/List;)V

    .line 112
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_3
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq p2, v0, :cond_4

    .line 115
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 120
    :cond_4
    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;",
            ">;>;"
        }
    .end annotation

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 0

    .line 226
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public importKey(Lorg/bitcoinj/core/ECKey;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 197
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->checkKeyEncryptionStateMatches(Lorg/bitcoinj/core/ECKey;)V

    .line 198
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 202
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 199
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    .line 200
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->queueOnKeysAdded(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public importKeys(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)I"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 145
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 146
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->checkKeyEncryptionStateMatches(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 150
    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 151
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 155
    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/BasicKeyChain;->queueOnKeysAdded(Ljava/util/List;)V

    .line 156
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public varargs importKeys([Lorg/bitcoinj/core/ECKey;)I
    .locals 0

    .line 135
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeys(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public isWatching()Lorg/bitcoinj/wallet/BasicKeyChain$State;
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->EMPTY:Lorg/bitcoinj/wallet/BasicKeyChain$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 250
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->isWatching:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->WATCHING:Lorg/bitcoinj/wallet/BasicKeyChain$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bitcoinj/wallet/BasicKeyChain$State;->REGULAR:Lorg/bitcoinj/wallet/BasicKeyChain$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public numBloomFilterEntries()I
    .locals 1

    .line 576
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public numKeys()I
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->pubkeyToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 4

    .line 262
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->pubkeyToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne v0, p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 266
    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method serializeToEditableProtobufs()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/ECKey;",
            "Lorg/bitcoinj/wallet/Protos$Key$Builder;",
            ">;"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 298
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 299
    invoke-static {v2}, Lorg/bitcoinj/wallet/BasicKeyChain;->serializeEncryptableItem(Lorg/bitcoinj/crypto/EncryptableItem;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    move-result-object v3

    .line 300
    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->setPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Key$Builder;

    .line 301
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public serializeToProtobuf()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/BasicKeyChain;->serializeToEditableProtobufs()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Protos$Key$Builder;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Protos$Key$Builder;->build()Lorg/bitcoinj/wallet/Protos$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 2

    .line 485
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    const-string v1, "Wallet is already decrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 487
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 3

    .line 492
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 494
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Wallet is already decrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/BasicKeyChain;->numKeys()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 497
    :cond_1
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    const-string v0, "Password/key was incorrect."

    invoke-direct {p1, v0}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 498
    :cond_2
    :goto_1
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>()V

    .line 499
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 500
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/ECKey;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 504
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public bridge synthetic toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toDecrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toDecrypted(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 1

    .line 443
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 445
    new-instance v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;-><init>()V

    .line 446
    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    .line 447
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;
    .locals 5

    .line 461
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 463
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->keyCrypter:Lorg/bitcoinj/crypto/KeyCrypter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Key chain is already encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 465
    new-instance v0, Lorg/bitcoinj/wallet/BasicKeyChain;

    invoke-direct {v0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;-><init>(Lorg/bitcoinj/crypto/KeyCrypter;)V

    .line 466
    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->hashToKeys:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 467
    invoke-virtual {v2, p1, p2}, Lorg/bitcoinj/core/ECKey;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    .line 473
    invoke-static {v2, v3, p1, p2}, Lorg/bitcoinj/core/ECKey;->encryptionIsReversible(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 475
    invoke-direct {v0, v3}, Lorg/bitcoinj/wallet/BasicKeyChain;->importKeyLocked(Lorg/bitcoinj/core/ECKey;)V

    goto :goto_1

    .line 474
    :cond_1
    new-instance p1, Lorg/bitcoinj/crypto/KeyCrypterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The key "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bitcoinj/core/ECKey;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cannot be successfully decrypted after encryption so aborting wallet encryption."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/crypto/KeyCrypterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public bridge synthetic toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/BasicKeyChain;->toEncrypted(Ljava/lang/CharSequence;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/EncryptableKeyChain;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/BasicKeyChain;->toEncrypted(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/BasicKeyChain;

    move-result-object p1

    return-object p1
.end method
