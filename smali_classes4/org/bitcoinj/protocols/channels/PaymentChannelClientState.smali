.class public abstract Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
.super Ljava/lang/Object;
.source "PaymentChannelClientState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;,
        Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field final myKey:Lorg/bitcoinj/core/ECKey;

.field final serverKey:Lorg/bitcoinj/core/ECKey;

.field protected final stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/protocols/channels/StateMachine<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
            ">;"
        }
    .end annotation
.end field

.field protected storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

.field protected valueToMe:Lorg/bitcoinj/core/Coin;

.field final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getStateTransitions()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;-><init>(Ljava/lang/Enum;Lcom/google/common/collect/Multimap;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    .line 107
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 108
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 109
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 110
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 111
    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p5, Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p6, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getStateTransitions()Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-direct {p5, p6, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;-><init>(Ljava/lang/Enum;Lcom/google/common/collect/Multimap;)V

    iput-object p5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    .line 144
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Wallet;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 145
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 146
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 147
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 73
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->deleteChannelFromWallet()V

    return-void
.end method

.method private declared-synchronized deleteChannelFromWallet()V
    .locals 3

    monitor-enter p0

    .line 195
    :try_start_0
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v1, "Close tx has confirmed, deleting channel from wallet: {}"

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 197
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    .line 198
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->removeChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Transaction;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 253
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    .line 257
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized checkNotExpired()V
    .locals 5

    monitor-enter p0

    .line 266
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getExpiryTime()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 271
    monitor-exit p0

    return-void

    .line 267
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 268
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->disconnectFromChannel()V

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel expired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectFromChannel()V
    .locals 3

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 344
    monitor-exit p0

    return-void

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 346
    :try_start_2
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->active:Z

    .line 347
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 347
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method abstract doStoreChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V
.end method

.method protected editContractSendRequest(Lorg/bitcoinj/wallet/SendRequest;)V
    .locals 0

    return-void
.end method

.method declared-synchronized fakeSave()V
    .locals 2

    monitor-enter p0

    .line 355
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->commitTx(Lorg/bitcoinj/core/Transaction;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public abstract getContract()Lorg/bitcoinj/core/Transaction;
.end method

.method protected abstract getContractInternal()Lorg/bitcoinj/core/Transaction;
.end method

.method protected abstract getContractScript()Lorg/bitcoinj/script/Script;
.end method

.method protected abstract getExpiryTime()J
.end method

.method public abstract getMajorVersion()I
.end method

.method abstract getRefundTransaction()Lorg/bitcoinj/core/Transaction;
.end method

.method public abstract getRefundTxFees()Lorg/bitcoinj/core/Coin;
.end method

.method protected abstract getSignedScript()Lorg/bitcoinj/script/Script;
.end method

.method public declared-synchronized getState()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->getState()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getStateTransitions()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalValue()Lorg/bitcoinj/core/Coin;
.end method

.method public declared-synchronized getValueRefunded()Lorg/bitcoinj/core/Coin;
    .locals 2

    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    .line 411
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->valueToMe:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueSpent()Lorg/bitcoinj/core/Coin;
    .locals 2

    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getTotalValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueRefunded()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getValueToMe()Lorg/bitcoinj/core/Coin;
.end method

.method public declared-synchronized incrementPaymentBy(Lorg/bitcoinj/core/Coin;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;
    .locals 8
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    .line 297
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->checkNotExpired()V

    .line 298
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p1}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-ltz v0, :cond_3

    .line 301
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 302
    sget-object v1, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v1

    if-lez v1, :cond_0

    .line 303
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v0, "New value being sent back as change was smaller than minimum nondust output, sending all"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    .line 305
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 307
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    .line 309
    invoke-direct {p0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    .line 310
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->log:Lorg/slf4j/Logger;

    const-string v3, "Signing new payment tx {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    sget-object v1, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    sget-object v1, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    goto :goto_0

    .line 317
    :cond_1
    sget-object v1, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    :goto_0
    move-object v6, v1

    const/4 v3, 0x0

    .line 318
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v1, p2}, Lorg/bitcoinj/core/ECKey;->maybeDecrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getSignedScript()Lorg/bitcoinj/script/Script;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p2

    .line 319
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 320
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->updateChannelInWallet()V

    .line 321
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;-><init>()V

    .line 322
    iput-object p2, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lorg/bitcoinj/crypto/TransactionSignature;

    .line 323
    iput-object p1, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->amount:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-object v0

    .line 308
    :cond_2
    :try_start_1
    new-instance p2, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Channel has too little money to pay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " satoshis"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 300
    :cond_3
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string p2, "Tried to decrement payment"

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized initWalletListeners()V
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->watchCloseConfirmations()V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;

    invoke-direct {v2, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initiate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->initiate(Lorg/spongycastle/crypto/params/KeyParameter;)V

    return-void
.end method

.method public abstract initiate(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation
.end method

.method public declared-synchronized isSettlementTransaction(Lorg/bitcoinj/core/Transaction;)Z
    .locals 3

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    const-wide/16 v0, 0x0

    .line 120
    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/TransactionInput;->verify(Lorg/bitcoinj/core/TransactionOutput;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 121
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    const/4 p1, 0x0

    .line 123
    monitor-exit p0

    return p1
.end method

.method public declared-synchronized storeChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 378
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 379
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->id:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 383
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->doStoreChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :try_start_2
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContractInternal()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->commitTx(Lorg/bitcoinj/core/Transaction;)V
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    :try_start_3
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 388
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateChannelInWallet()V
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 329
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    iput-object v1, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 331
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 332
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    .line 333
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected watchCloseConfirmations()V
    .locals 3

    .line 178
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v0, v0, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->close:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    .line 179
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Context;->getEventHorizon()I

    move-result v1

    .line 180
    sget-object v2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 181
    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;

    invoke-direct {v1, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$2;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    return-void
.end method
