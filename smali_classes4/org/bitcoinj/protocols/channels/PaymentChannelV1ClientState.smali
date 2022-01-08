.class public Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;
.super Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
.source "PaymentChannelV1ClientState.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final expiryTime:J

.field private multisigContract:Lorg/bitcoinj/core/Transaction;

.field private multisigScript:Lorg/bitcoinj/script/Script;

.field private refundFees:Lorg/bitcoinj/core/Coin;

.field private refundTx:Lorg/bitcoinj/core/Transaction;

.field private final totalValue:Lorg/bitcoinj/core/Coin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;-><init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V

    .line 62
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v0, 0x0

    .line 63
    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigScript:Lorg/bitcoinj/script/Script;

    .line 64
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    .line 65
    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 66
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getLockTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->expiryTime:J

    .line 67
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    .line 68
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 69
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->initWalletListeners()V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 88
    invoke-direct/range {p0 .. p6}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V

    .line 89
    invoke-virtual {p4}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->initWalletListeners()V

    .line 91
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    .line 92
    iput-wide p5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->expiryTime:J

    .line 93
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method declared-synchronized doStoreChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 14

    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 266
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    const-string v1, "You have not added the StoredPaymentChannelClientStates extension to the wallet."

    .line 267
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->getChannel(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 269
    new-instance v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->getMajorVersion()I

    move-result v3

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-object v8, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    iget-object v9, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    iget-object v10, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v13}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;-><init>(ILorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;JZ)V

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 270
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCompletedRefundTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 2

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 290
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContract()Lorg/bitcoinj/core/Transaction;
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 185
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->getState()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getContractInternal()Lorg/bitcoinj/core/Transaction;
    .locals 1

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getContractScript()Lorg/bitcoinj/script/Script;
    .locals 1

    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigScript:Lorg/bitcoinj/script/Script;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getExpiryTime()J
    .locals 2

    .line 260
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->expiryTime:J

    return-wide v0
.end method

.method public declared-synchronized getIncompleteRefundTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 2

    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 212
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->getState()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;
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

.method getRefundTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public declared-synchronized getRefundTxFees()Lorg/bitcoinj/core/Coin;
    .locals 2

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 276
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundFees:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSignedScript()Lorg/bitcoinj/script/Script;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method protected getStateTransitions()Lcom/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;",
            ">;"
        }
    .end annotation

    .line 98
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    .line 99
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTotalValue()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method protected declared-synchronized getValueToMe()Lorg/bitcoinj/core/Coin;
    .locals 1

    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initiate(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 7
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

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    .line 130
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    const/4 v2, 0x2

    new-array v3, v2, [Lorg/bitcoinj/core/ECKey;

    .line 133
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 137
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    invoke-static {v2, v3}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigOutputScript(ILjava/util/List;)Lorg/bitcoinj/script/Script;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->isDust()Z

    move-result v3

    if-nez v3, :cond_2

    .line 140
    invoke-static {v1}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v1

    .line 141
    invoke-static {}, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->get()Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    move-result-object v3

    iput-object v3, v1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    .line 142
    invoke-virtual {p0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->editContractSendRequest(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 143
    iput-boolean v5, v1, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 144
    iput-object p1, v1, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 145
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {p1, v1}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 146
    iget-object p1, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getFee()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    .line 147
    iget-object v1, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    .line 154
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    .line 157
    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v1

    const-wide v2, 0xfffffffeL

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/TransactionInput;->setSequenceNumber(J)V

    .line 158
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->expiryTime:J

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Transaction;->setLockTime(J)V

    .line 159
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Context;->isEnsureMinRequiredFee()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    sget-object v2, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 162
    sget-object v2, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 165
    sget-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    goto :goto_0

    .line 163
    :cond_0
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string v0, "totalValue too small to use"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 168
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 170
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 171
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->log:Lorg/slf4j/Logger;

    const-string v0, "initiated channel with multi-sig contract {}, refund {}"

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    .line 172
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {p1, v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->INITIATED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 139
    :cond_2
    :try_start_1
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string v0, "totalValue too small to use"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized provideRefundSignature([BLorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 11
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->WAITING_FOR_SIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    const/4 v0, 0x1

    .line 231
    invoke-static {p1, v0}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lorg/bitcoinj/crypto/TransactionSignature;->sigHashMode()Lorg/bitcoinj/core/Transaction$SigHash;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/bitcoinj/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigContract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :try_start_1
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v4

    iput-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigScript:Lorg/bitcoinj/script/Script;
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    const/4 v6, 0x0

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 242
    invoke-virtual {v4, p2}, Lorg/bitcoinj/core/ECKey;->maybeDecrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v7

    iget-object v8, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigScript:Lorg/bitcoinj/script/Script;

    sget-object v9, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p2

    const/4 v4, 0x2

    new-array v4, v4, [Lorg/bitcoinj/crypto/TransactionSignature;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    aput-object p1, v4, v0

    .line 245
    invoke-static {v4}, Lorg/bitcoinj/script/ScriptBuilder;->createMultiSigInputScript([Lorg/bitcoinj/crypto/TransactionSignature;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    .line 246
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->log:Lorg/slf4j/Logger;

    const-string v0, "Refund scriptSig: {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->log:Lorg/slf4j/Logger;

    const-string v0, "Multi-sig contract scriptPubKey: {}"

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->multisigScript:Lorg/bitcoinj/script/Script;

    invoke-interface {p2, v0, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p2, v2, v3}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object p2

    .line 249
    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    .line 250
    invoke-virtual {p2, v1}, Lorg/bitcoinj/core/TransactionInput;->verify(Lorg/bitcoinj/core/TransactionOutput;)V

    .line 251
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 239
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 233
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Refund signature was not SIGHASH_NONE|SIGHASH_ANYONECANPAY"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
