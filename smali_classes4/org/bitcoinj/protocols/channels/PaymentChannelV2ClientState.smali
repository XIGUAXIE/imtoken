.class public Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;
.super Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
.source "PaymentChannelV2ClientState.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private contract:Lorg/bitcoinj/core/Transaction;

.field private final expiryTime:J

.field private refundFees:Lorg/bitcoinj/core/Coin;

.field refundTx:Lorg/bitcoinj/core/Transaction;

.field private final totalValue:Lorg/bitcoinj/core/Coin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;-><init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V

    .line 64
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 65
    iget-wide v0, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->expiryTime:J

    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    .line 66
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    .line 67
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->valueToMe:Lorg/bitcoinj/core/Coin;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Coin;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 68
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refund:Lorg/bitcoinj/core/Transaction;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    .line 69
    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->refundFees:Lorg/bitcoinj/core/Coin;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 70
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 71
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->initWalletListeners()V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 75
    invoke-direct/range {p0 .. p6}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V

    .line 76
    invoke-virtual {p4}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->initWalletListeners()V

    .line 78
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    .line 79
    iput-wide p5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    .line 80
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    return-void
.end method


# virtual methods
.method declared-synchronized doStoreChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 14

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 199
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    const-string v1, "You have not added the StoredPaymentChannelClientStates extension to the wallet."

    .line 200
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

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

    .line 202
    new-instance v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->getMajorVersion()I

    move-result v3

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-object v8, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    iget-object v9, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;

    iget-object v10, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    iget-wide v11, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    const/4 v13, 0x1

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v13}, Lorg/bitcoinj/protocols/channels/StoredClientChannel;-><init>(ILorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;JZ)V

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 203
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredClientChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getContract()Lorg/bitcoinj/core/Transaction;
    .locals 2

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 166
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->getState()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 169
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;
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

    .line 174
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;
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
    .locals 3

    monitor-enter p0

    .line 178
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

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

.method protected getExpiryTime()J
    .locals 2

    .line 160
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    return-wide v0
.end method

.method public getMajorVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method getRefundTransaction()Lorg/bitcoinj/core/Transaction;
    .locals 1

    .line 193
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    return-object v0
.end method

.method public declared-synchronized getRefundTxFees()Lorg/bitcoinj/core/Coin;
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->getState()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

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

    .line 189
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundFees:Lorg/bitcoinj/core/Coin;
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
    .locals 3

    .line 183
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelOutput(Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

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

    .line 85
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    .line 86
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->NEW:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->PROVIDE_MULTISIG_CONTRACT_TO_SERVER:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->EXPIRED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTotalValue()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method protected declared-synchronized getValueToMe()Lorg/bitcoinj/core/Coin;
    .locals 1

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->valueToMe:Lorg/bitcoinj/core/Coin;
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
    .locals 13
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

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    .line 104
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 108
    iget-wide v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    .line 109
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v2, v3, v4}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelOutput(Ljava/math/BigInteger;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;)Lorg/bitcoinj/script/Script;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    .line 111
    invoke-static {v2}, Lorg/bitcoinj/script/ScriptBuilder;->createP2SHOutputScript(Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object v4

    .line 110
    invoke-virtual {v1, v3, v4}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionOutput;->isDust()Z

    move-result v3

    if-nez v3, :cond_2

    .line 114
    invoke-static {v1}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v1

    .line 115
    invoke-static {}, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->get()Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    move-result-object v3

    iput-object v3, v1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    .line 116
    invoke-virtual {p0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->editContractSendRequest(Lorg/bitcoinj/wallet/SendRequest;)V

    const/4 v3, 0x0

    .line 117
    iput-boolean v3, v1, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 118
    iput-object p1, v1, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 119
    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v3, v1}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 120
    iget-object v3, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getFee()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    .line 121
    iget-object v1, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 127
    new-instance v1, Lorg/bitcoinj/core/Transaction;

    invoke-direct {v1, v0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    .line 129
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v1

    const-wide v7, 0xfffffffeL

    invoke-virtual {v1, v7, v8}, Lorg/bitcoinj/core/TransactionInput;->setSequenceNumber(J)V

    .line 130
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-wide v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->expiryTime:J

    invoke-virtual {v1, v7, v8}, Lorg/bitcoinj/core/Transaction;->setLockTime(J)V

    .line 131
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Context;->isEnsureMinRequiredFee()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    sget-object v4, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v1, v4}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 134
    sget-object v4, Lorg/bitcoinj/core/Transaction;->MIN_NONDUST_OUTPUT:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v4, v1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 136
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v7, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 137
    sget-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v0}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string v0, "totalValue too small to use"

    invoke-direct {p1, v0}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->totalValue:Lorg/bitcoinj/core/Coin;

    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v7, v0}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 140
    iput-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundFees:Lorg/bitcoinj/core/Coin;

    .line 143
    :goto_0
    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 144
    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/ECKey;->maybeDecrypt(Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/core/ECKey;

    move-result-object v9

    .line 145
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->getSignedScript()Lorg/bitcoinj/script/Script;

    move-result-object v10

    sget-object v11, Lorg/bitcoinj/core/Transaction$SigHash;->ALL:Lorg/bitcoinj/core/Transaction$SigHash;

    const/4 v12, 0x0

    .line 144
    invoke-virtual/range {v7 .. v12}, Lorg/bitcoinj/core/Transaction;->calculateSignature(ILorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0, v5, v6}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v0

    invoke-static {p1, v2}, Lorg/bitcoinj/script/ScriptBuilder;->createCLTVPaymentChannelP2SHRefund(Lorg/bitcoinj/crypto/TransactionSignature;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    .line 148
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->refundTx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 149
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->log:Lorg/slf4j/Logger;

    const-string v0, "initiated channel with contract {}"

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;->SAVE_STATE_IN_WALLET:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$State;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 113
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
