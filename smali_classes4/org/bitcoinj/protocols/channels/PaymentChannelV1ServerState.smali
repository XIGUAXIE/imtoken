.class public Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;
.super Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
.source "PaymentChannelV1ServerState.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected clientKey:Lorg/bitcoinj/core/ECKey;

.field private clientOutput:Lorg/bitcoinj/core/TransactionOutput;

.field final closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private feePaidForPayment:Lorg/bitcoinj/core/Coin;

.field private refundTransactionUnlockTimeSecs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V
    .locals 0

    .line 76
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V

    .line 173
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 77
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;-><init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 173
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 58
    monitor-enter p1

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/script/ScriptChunk;

    iget-object p2, p2, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    .line 60
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/TransactionOutput;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    .line 61
    iget-wide p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    iput-wide p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->refundTransactionUnlockTimeSecs:J

    .line 62
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p2, p3}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 63
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 42
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private signMultisigInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V
    .locals 6

    .line 167
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p2

    .line 168
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p2

    .line 169
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->bestValueSignature:[B

    invoke-static {p3, p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-static {p2}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScriptBytes(Ljava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object p2

    const-wide/16 v0, 0x0

    .line 170
    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 193
    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 194
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 195
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    .line 196
    invoke-virtual {v2, v0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->closeChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V

    .line 197
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 202
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to settle channel in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 204
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 207
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    if-eq v0, v2, :cond_2

    .line 209
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed attempt to settle a channel in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v0

    .line 215
    iget-object v1, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 220
    sget-object v2, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->signMultisigInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    const/4 v2, 0x0

    .line 222
    iput-boolean v2, v0, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 223
    sget-object v4, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    iput-object v4, v0, Lorg/bitcoinj/wallet/SendRequest;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 224
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v4, v0}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 225
    iget-object v0, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getFee()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    .line 226
    sget-object v4, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    const-string v5, "Calculated fee is {}"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v4}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 233
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {p0, v1, v0, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->signMultisigInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 235
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 236
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 237
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->verify()V
    :try_end_3
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 244
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 245
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    const-string v2, "Closing channel, broadcasting tx {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 248
    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;

    invoke-direct {v1, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 261
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 228
    :cond_4
    :try_start_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Had to pay more in fees (%s) than the channel was worth (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    aput-object v6, v5, v2

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    aput-object v2, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v2, Lorg/bitcoinj/core/InsufficientMoneyException;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bitcoinj/core/InsufficientMoneyException;-><init>(Lorg/bitcoinj/core/Coin;Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_0
    move-exception v0

    .line 241
    :try_start_6
    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not verify self-built tx\nMULTISIG {}\nCLOSE {}"

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->contract:Lorg/bitcoinj/core/Transaction;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, ""

    :goto_1
    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 239
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createOutputScript()Lorg/bitcoinj/script/Script;
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method protected getClientKey()Lorg/bitcoinj/core/ECKey;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    return-object v0
.end method

.method public getClientOutput()Lorg/bitcoinj/core/TransactionOutput;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    return-object v0
.end method

.method public declared-synchronized getFeePaid()Lorg/bitcoinj/core/Coin;
    .locals 4

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v2, 0x0

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState([Ljava/lang/Enum;)V

    .line 270
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMajorVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getRefundTransactionUnlockTime()J
    .locals 2

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 279
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->refundTransactionUnlockTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSignedScript()Lorg/bitcoinj/script/Script;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public getStateTransitions()Lcom/google/common/collect/Multimap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
            ">;"
        }
    .end annotation

    .line 82
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    .line 83
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->values()[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 91
    sget-object v5, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v4, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized provideRefundTransaction(Lorg/bitcoinj/core/Transaction;[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_REFUND_TRANSACTION:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    .line 125
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Provided with refund transaction: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 129
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-wide/16 v2, 0x0

    .line 132
    invoke-virtual {p1, v2, v3}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getSequenceNumber()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->minExpireTime:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->refundTransactionUnlockTimeSecs:J

    .line 146
    invoke-static {p2}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    const/4 v0, 0x2

    .line 147
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {p2, v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object v7

    const/4 v5, 0x0

    .line 150
    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    sget-object v8, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p2

    .line 151
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Signed refund transaction."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, v2, v3}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    .line 153
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 154
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 140
    :cond_0
    :try_start_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Refund transaction does not have exactly one output"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 135
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Refund transaction has a lock time too soon"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Refund transaction\'s input\'s sequence number disables lock time"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_3
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Refund transaction does not have exactly one input"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
