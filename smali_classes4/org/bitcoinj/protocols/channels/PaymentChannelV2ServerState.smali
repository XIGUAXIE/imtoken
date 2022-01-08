.class public Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;
.super Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
.source "PaymentChannelV2ServerState.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected clientKey:Lorg/bitcoinj/core/ECKey;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V
    .locals 0

    .line 61
    invoke-direct/range {p0 .. p5}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V

    .line 142
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 62
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;-><init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 142
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 54
    monitor-enter p1

    .line 55
    :try_start_0
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientKey:Lorg/bitcoinj/core/ECKey;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    .line 56
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p2, p3}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 57
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
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private createP2SHRedeemScript()Lorg/bitcoinj/script/Script;
    .locals 3

    .line 127
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getExpiryTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelOutput(Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method private signP2SHInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V
    .locals 6

    .line 136
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->createP2SHRedeemScript()Lorg/bitcoinj/script/Script;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p2

    .line 138
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->bestValueSignature:[B

    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->createP2SHRedeemScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelP2SHInput([B[BLorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p2

    const-wide/16 v0, 0x0

    .line 139
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

    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 148
    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 149
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 150
    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    .line 151
    invoke-virtual {v2, v0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->closeChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V

    .line 152
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 156
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ordinal()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 157
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to settle channel in state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 159
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v0

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    if-eq v0, v2, :cond_2

    .line 164
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed attempt to settle a channel in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v0

    .line 170
    iget-object v1, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 175
    sget-object v2, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->signP2SHInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    const/4 v2, 0x0

    .line 177
    iput-boolean v2, v0, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 178
    sget-object v4, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->USE_DUMMY_SIG:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    iput-object v4, v0, Lorg/bitcoinj/wallet/SendRequest;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    .line 179
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v4, v0}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 180
    iget-object v0, v0, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getFee()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    .line 181
    sget-object v4, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    const-string v5, "Calculated fee is {}"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v0, v4}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 188
    sget-object v0, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    invoke-direct {p0, v1, v0, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->signP2SHInput(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction$SigHash;Z)V

    .line 190
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 191
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

    .line 192
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->verify()V
    :try_end_3
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    :cond_3
    :try_start_4
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 200
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    const-string v2, "Closing channel, broadcasting tx {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 203
    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState$1;

    invoke-direct {v1, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 216
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->closedFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 183
    :cond_4
    :try_start_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Had to pay more in fees (%s) than the channel was worth (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    aput-object v6, v5, v2

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    aput-object v2, v5, v3

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v2, Lorg/bitcoinj/core/InsufficientMoneyException;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

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

    .line 196
    :try_start_6
    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not verify self-built tx\nMULTISIG {}\nCLOSE {}"

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->contract:Lorg/bitcoinj/core/Transaction;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, ""

    :goto_1
    invoke-interface {v2, v3, v4, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 194
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createOutputScript()Lorg/bitcoinj/script/Script;
    .locals 1

    .line 123
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->createP2SHRedeemScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method protected getClientKey()Lorg/bitcoinj/core/ECKey;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    return-object v0
.end method

.method public getClientOutput()Lorg/bitcoinj/core/TransactionOutput;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getFeePaid()Lorg/bitcoinj/core/Coin;
    .locals 4

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    const/4 v2, 0x0

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState([Ljava/lang/Enum;)V

    .line 97
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->feePaidForPayment:Lorg/bitcoinj/core/Coin;
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

    const/4 v0, 0x2

    return v0
.end method

.method protected getSignedScript()Lorg/bitcoinj/script/Script;
    .locals 1

    .line 102
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->createP2SHRedeemScript()Lorg/bitcoinj/script/Script;

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

    .line 67
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    .line 68
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSING:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    invoke-static {}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->values()[Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 75
    sget-object v5, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-interface {v0, v4, v5}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public provideClientKey([B)V
    .locals 0

    .line 91
    invoke-static {p1}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->clientKey:Lorg/bitcoinj/core/ECKey;

    return-void
.end method

.method protected verifyContract(Lorg/bitcoinj/core/Transaction;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->verifyContract(Lorg/bitcoinj/core/Transaction;)V

    .line 109
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object p1

    .line 110
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->createP2SHRedeemScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->sha256hash160([B)[B

    move-result-object v0

    .line 111
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string v0, "P2SH hash didn\'t match required contract - contract should be a CLTV micropayment channel to client and server in that order."

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
