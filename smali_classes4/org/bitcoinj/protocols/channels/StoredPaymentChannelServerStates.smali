.class public Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;
.super Ljava/lang/Object;
.source "StoredPaymentChannelServerStates.java"

# interfaces
.implements Lorg/bitcoinj/wallet/WalletExtension;


# static fields
.field public static final CHANNEL_EXPIRE_OFFSET:J = -0x1c20L

.field static final EXTENSION_ID:Ljava/lang/String;

.field static final MAX_SECONDS_TO_WAIT_FOR_BROADCASTER_TO_BE_SET:I = 0xa

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final broadcasterFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/TransactionBroadcaster;",
            ">;"
        }
    .end annotation
.end field

.field private final channelTimeoutHandler:Ljava/util/Timer;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field final mapChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/protocols/channels/StoredServerChannel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/wallet/Wallet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->broadcasterFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 54
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->channelTimeoutHandler:Ljava/util/Timer;

    const-string v0, "StoredPaymentChannelServerStates"

    .line 56
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/wallet/Wallet;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->broadcasterFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 54
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->channelTimeoutHandler:Ljava/util/Timer;

    const-string v0, "StoredPaymentChannelServerStates"

    .line 56
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 72
    invoke-virtual {p0, p2}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 73
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 44
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private getBroadcaster()Lorg/bitcoinj/core/TransactionBroadcaster;
    .locals 4

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->broadcasterFuture:Lcom/google/common/util/concurrent/SettableFuture;

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

    .line 145
    sget-object v2, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 140
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getFromWallet(Lorg/bitcoinj/wallet/Wallet;)Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    return-object p0
.end method

.method private getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 311
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public closeChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    .locals 3

    .line 110
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 112
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    iget-object v1, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 115
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 117
    monitor-enter p1

    .line 118
    :try_start_1
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->closeConnectedHandler()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->getBroadcaster()Lorg/bitcoinj/core/TransactionBroadcaster;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1, v1, v0}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->getOrCreateState(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_2
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    :try_start_3
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception when closing channel"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 123
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception when closing channel"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 127
    iput-object v0, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 128
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V

    return-void

    :catchall_0
    move-exception v0

    .line 128
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 115
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public deserializeWalletExtension(Lorg/bitcoinj/wallet/Wallet;[B)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 266
    iget-object v0, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move-object/from16 v0, p1

    .line 268
    :try_start_0
    iput-object v0, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 269
    invoke-static/range {p2 .. p2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->parseFrom([B)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v2

    .line 270
    invoke-virtual/range {p1 .. p1}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    .line 271
    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->getChannelsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;

    .line 272
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getMajorVersion()I

    move-result v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v6, v4, :cond_0

    .line 276
    new-instance v4, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientOutput()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v0, v5, v7, v8}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;[BI)V

    move-object v8, v4

    move-object v12, v5

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    move-object v12, v4

    move-object v8, v5

    .line 280
    :goto_1
    new-instance v15, Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    const/4 v7, 0x0

    .line 282
    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getContractTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v9

    .line 284
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getRefundTransactionUnlockTimeSecs()J

    move-result-wide v10

    .line 285
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getMyKey()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bitcoinj/core/ECKey;->fromPrivate([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v13

    .line 287
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueToMe()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    .line 288
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->hasBestValueSignature()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->getBestValueSignature()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v3, v5

    :goto_2
    move-object v4, v15

    move-object v5, v7

    move-object v7, v9

    move-wide v9, v10

    move-object v11, v13

    move-object v13, v14

    move-object v14, v3

    invoke-direct/range {v4 .. v14}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;ILorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionOutput;JLorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;[B)V

    .line 289
    invoke-virtual {v1, v15}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    :cond_2
    iget-object v0, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getChannel(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredServerChannel;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getChannelMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/protocols/channels/StoredServerChannel;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getWalletExtensionID()Ljava/lang/String;
    .locals 1

    .line 219
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    return-object v0
.end method

.method public isWalletExtensionMandatory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public putChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    .locals 7

    .line 191
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    iget-object v1, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 195
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v3, -0x1c20

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 197
    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    const-string v2, "Scheduling channel for automatic closure at {}: {}"

    invoke-interface {v1, v2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->channelTimeoutHandler:Ljava/util/Timer;

    new-instance v2, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;

    invoke-direct {v2, p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates$1;-><init>(Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 214
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V

    return-void

    :catchall_0
    move-exception p1

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public serializeWalletExtension()[B
    .locals 12

    .line 229
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 231
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->hasMaxMoney()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/bitcoinj/core/NetworkParameters;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    .line 235
    :goto_1
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->newBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    move-result-object v3

    .line 236
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 239
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_3

    if-eqz v2, :cond_2

    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    .line 240
    invoke-virtual {v6, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v6

    if-gtz v6, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 239
    :goto_3
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 241
    iget-wide v8, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_4

    const/4 v7, 0x1

    :cond_4
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 242
    iget-object v6, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v6}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel;->newBuilder()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    iget v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->majorVersion:I

    .line 244
    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMajorVersion(I)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    iget-wide v7, v7, Lorg/bitcoinj/core/Coin;->value:J

    .line 245
    invoke-virtual {v6, v7, v8}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueToMe(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    iget-wide v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    .line 246
    invoke-virtual {v6, v7, v8}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setRefundTransactionUnlockTimeSecs(J)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 247
    invoke-virtual {v7}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setContractTransaction(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 248
    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPrivKeyBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setMyKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    move-result-object v6

    .line 249
    iget v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->majorVersion:I

    if-ne v7, v1, :cond_5

    .line 250
    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v7}, Lorg/bitcoinj/core/TransactionOutput;->unsafeBitcoinSerialize()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientOutput(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    goto :goto_4

    .line 252
    :cond_5
    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v7}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 254
    :goto_4
    iget-object v7, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    if-eqz v7, :cond_6

    .line 255
    iget-object v5, v5, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    invoke-static {v5}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;->setBestValueSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;

    .line 256
    :cond_6
    invoke-virtual {v3, v6}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->addChannels(Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannel$Builder;)Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;

    goto/16 :goto_2

    .line 258
    :cond_7
    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels$Builder;->build()Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/ServerState$StoredServerPaymentChannels;->toByteArray()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->broadcasterFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 298
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 300
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->mapChannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public updatedChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    .locals 2

    .line 179
    sget-object v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Stored server channel {} was updated"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1, p0}, Lorg/bitcoinj/wallet/Wallet;->addOrUpdateExtension(Lorg/bitcoinj/wallet/WalletExtension;)V

    return-void
.end method
