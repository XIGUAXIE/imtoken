.class public Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;
.super Ljava/lang/Object;
.source "StoredPaymentChannelClientStates.java"

# interfaces
.implements Lorg/bitcoinj/wallet/WalletExtension;


# static fields
.field static final EXTENSION_ID:Ljava/lang/String;

.field static final MAX_SECONDS_TO_WAIT_FOR_BROADCASTER_TO_BE_SET:I = 0xa

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final announcePeerGroupFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/TransactionBroadcaster;",
            ">;"
        }
    .end annotation
.end field

.field final channelTimeoutHandler:Ljava/util/Timer;

.field private containingWallet:Lorg/bitcoinj/wallet/Wallet;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mapChannels:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/protocols/channels/StoredClientChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-class v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/wallet/Wallet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    .line 54
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->channelTimeoutHandler:Ljava/util/Timer;

    .line 57
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroupFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const-string v0, "StoredPaymentChannelClientStates"

    .line 59
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/wallet/Wallet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    .line 54
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->channelTimeoutHandler:Ljava/util/Timer;

    .line 57
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroupFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const-string v0, "StoredPaymentChannelClientStates"

    .line 59
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    invoke-virtual {p0, p2}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 68
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;)Lorg/bitcoinj/core/TransactionBroadcaster;
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->getAnnouncePeerGroup()Lorg/bitcoinj/core/TransactionBroadcaster;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 48
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private getAnnouncePeerGroup()Lorg/bitcoinj/core/TransactionBroadcaster;
    .locals 4

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroupFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionBroadcaster;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Transaction broadcaster not set"

    .line 254
    sget-object v2, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFromWallet(Lorg/bitcoinj/wallet/Wallet;)Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    return-object p0
.end method

.method private getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Z)V
    .locals 9

    .line 215
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->channelTimeoutHandler:Ljava/util/Timer;

    new-instance v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;

    invoke-direct {v1, p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates$1;-><init>(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V

    new-instance v2, Ljava/util/Date;

    .line 233
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 235
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public deserializeWalletExtension(Lorg/bitcoinj/wallet/Wallet;[B)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 328
    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 330
    :try_start_0
    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 331
    iput-object v0, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    .line 333
    invoke-static/range {p2 .. p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->parseFrom([B)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannelsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    .line 335
    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v6

    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v12

    .line 336
    invoke-virtual {v12}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v6

    sget-object v7, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v6, v7}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 337
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 338
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v6

    goto :goto_3

    .line 339
    :cond_2
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v6

    :goto_3
    move-object v13, v6

    .line 340
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasServerKey()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getServerKey()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v6

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    move-object v14, v6

    .line 341
    new-instance v6, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getMajorVersion()I

    move-result v9

    .line 342
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v10

    .line 343
    invoke-virtual {v2}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v11

    .line 347
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getValueToMe()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v15

    .line 348
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getRefundFees()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v16

    .line 349
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getExpiryTime()J

    move-result-wide v17

    const/16 v19, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v19}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;-><init>(ILorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;JZ)V

    .line 351
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->hasCloseTransactionHash()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    invoke-virtual {v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->getCloseTransactionHash()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    .line 353
    invoke-virtual {v0, v5}, Lorg/bitcoinj/wallet/Wallet;->getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;

    move-result-object v5

    iput-object v5, v6, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    .line 355
    :cond_4
    invoke-direct {v1, v6, v3}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 358
    :cond_5
    iget-object v0, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getBalanceForServer(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 98
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 99
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 103
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 106
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getChannel(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredClientChannel;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 174
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 175
    iget-object v1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 180
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getChannelMap()Lcom/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/protocols/channels/StoredClientChannel;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultimap;->copyOf(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSecondsUntilExpiry(Lorg/bitcoinj/core/Sha256Hash;)J
    .locals 8

    .line 119
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 122
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    .line 124
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 125
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :try_start_1
    invoke-virtual {v4}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_0

    .line 127
    invoke-virtual {v4}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTimeSeconds()J

    move-result-wide v5

    long-to-int v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 128
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    if-ne v3, v2, :cond_2

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_2
    int-to-long v2, v3

    sub-long v0, v2, v0

    .line 132
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method getUsableChannelForServerID(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredClientChannel;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 145
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    :try_start_1
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v2, "Considering channel {} contract {}"

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    iget-object v1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    sget-object v2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    iget-boolean v1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    if-nez v1, :cond_1

    .line 153
    sget-object p1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v1, "  ... activating"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    .line 155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 157
    :cond_1
    :try_start_2
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v2, "  ... but is already active"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 158
    monitor-exit v0

    goto :goto_0

    .line 149
    :cond_2
    :goto_1
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    const-string v2, "  ... but is closed or empty"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 150
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 158
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getWalletExtensionID()Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public isWalletExtensionMandatory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Z)V

    return-void
.end method

.method removeChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 274
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V

    return-void

    :catchall_0
    move-exception p1

    .line 272
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public serializeWalletExtension()[B
    .locals 10

    .line 289
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 291
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 294
    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    .line 295
    :goto_1
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v3

    .line 296
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v4}, Lcom/google/common/collect/HashMultimap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 298
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_3

    if-eqz v2, :cond_2

    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 299
    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v6

    if-gtz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 298
    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 300
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v6

    if-ltz v6, :cond_5

    if-eqz v2, :cond_4

    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 301
    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v6

    if-gtz v6, :cond_5

    :cond_4
    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 300
    :goto_4
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 302
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v6

    sget-object v8, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    if-ne v6, v8, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 304
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget v8, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->majorVersion:I

    .line 306
    invoke-virtual {v6, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v8, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    .line 307
    invoke-virtual {v8}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setId(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v8, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 308
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v8, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    iget-wide v8, v8, Lorg/bitcoinj/core/Coin;->value:J

    .line 309
    invoke-virtual {v6, v8, v9}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundFees(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v8, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    .line 310
    invoke-virtual {v8}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setRefundTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    new-array v7, v7, [B

    .line 311
    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 312
    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setMyPublicKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 313
    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setServerKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    iget-wide v7, v7, Lorg/bitcoinj/core/Coin;->value:J

    .line 314
    invoke-virtual {v6, v7, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setValueToMe(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    iget-wide v7, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTime:J

    .line 315
    invoke-virtual {v6, v7, v8}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setExpiryTime(J)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    move-result-object v6

    .line 316
    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    if-eqz v7, :cond_7

    .line 317
    iget-object v5, v5, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;->setCloseTransactionHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;

    .line 318
    :cond_7
    invoke-virtual {v3, v6}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->addChannels(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel$Builder;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    goto/16 :goto_2

    .line 320
    :cond_8
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->build()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->announcePeerGroupFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 364
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 366
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client payment channel states:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->mapChannels:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/HashMultimap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    const-string v3, "  "

    .line 368
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method updatedChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    .locals 2

    .line 201
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Stored client channel {} was updated"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->containingWallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1, p0}, Lorg/bitcoinj/wallet/Wallet;->addOrUpdateExtension(Lorg/bitcoinj/wallet/WalletExtension;)V

    return-void
.end method
