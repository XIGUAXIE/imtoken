.class public abstract Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
.super Ljava/lang/Object;
.source "PaymentChannelServerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected bestValueSignature:[B

.field protected bestValueToMe:Lorg/bitcoinj/core/Coin;

.field protected final broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

.field protected contract:Lorg/bitcoinj/core/Transaction;

.field protected minExpireTime:J

.field protected serverKey:Lorg/bitcoinj/core/ECKey;

.field protected stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/protocols/channels/StateMachine<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
            ">;"
        }
    .end annotation
.end field

.field protected storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

.field final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V
    .locals 3

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 115
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 143
    new-instance v0, Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getStateTransitions()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;-><init>(Ljava/lang/Enum;Lcom/google/common/collect/Multimap;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    .line 144
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/core/ECKey;

    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 145
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionBroadcaster;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    .line 147
    iput-wide p4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->minExpireTime:J

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 115
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 118
    monitor-enter p1

    .line 119
    :try_start_0
    new-instance v0, Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->UNINITIALISED:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getStateTransitions()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/protocols/channels/StateMachine;-><init>(Ljava/lang/Enum;Lcom/google/common/collect/Multimap;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    .line 120
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 121
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/TransactionBroadcaster;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    .line 122
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Transaction;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 123
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/ECKey;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    .line 124
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    .line 125
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/Coin;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    .line 126
    iget-wide p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    iput-wide p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->minExpireTime:J

    .line 127
    iget-object p2, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    .line 128
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    sget-object p3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p2, p3}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 129
    iput-object p0, p1, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 130
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

    .line 74
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public abstract close()Lcom/google/common/util/concurrent/ListenableFuture;
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
.end method

.method protected abstract createOutputScript()Lorg/bitcoinj/script/Script;
.end method

.method public declared-synchronized getBestValueToMe()Lorg/bitcoinj/core/Coin;
    .locals 1

    monitor-enter p0

    .line 309
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getClientKey()Lorg/bitcoinj/core/ECKey;
.end method

.method public abstract getClientOutput()Lorg/bitcoinj/core/TransactionOutput;
.end method

.method public declared-synchronized getContract()Lorg/bitcoinj/core/Transaction;
    .locals 1

    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 322
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContractScript()Lorg/bitcoinj/script/Script;
    .locals 3

    .line 366
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x0

    .line 369
    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()J
    .locals 2

    .line 326
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->minExpireTime:J

    return-wide v0
.end method

.method public abstract getFeePaid()Lorg/bitcoinj/core/Coin;
.end method

.method public abstract getMajorVersion()I
.end method

.method protected abstract getSignedScript()Lorg/bitcoinj/script/Script;
.end method

.method public declared-synchronized getState()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
    .locals 1

    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StateMachine;->getState()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;
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
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;",
            ">;"
        }
    .end annotation
.end method

.method protected getTotalValue()Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 389
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized incrementPayment(Lorg/bitcoinj/core/Coin;[B)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    .line 240
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 242
    invoke-static {p2, v0}, Lorg/bitcoinj/crypto/TransactionSignature;->decodeFromBitcoin([BZ)Lorg/bitcoinj/crypto/TransactionSignature;

    move-result-object v1

    .line 245
    sget-object v2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p1, v2}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 246
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getTotalValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v4

    if-ltz v4, :cond_7

    .line 249
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 252
    invoke-virtual {p0, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object v4

    if-nez v2, :cond_1

    .line 254
    iget-object v5, v4, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getMinNonDustValue()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/bitcoinj/core/Coin;->isLessThan(Lorg/bitcoinj/core/Coin;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string p2, "Attempt to refund negative value or value too small to be accepted by the network"

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/bitcoinj/wallet/Wallet;->getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    const-string v5, "Wallet did not contain multisig contract {} after state was marked READY"

    new-array v6, v0, [Ljava/lang/Object;

    .line 261
    iget-object v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v7}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p1, v5, v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object p1

    sget-object v5, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq p1, v5, :cond_5

    if-eqz v2, :cond_2

    .line 275
    sget-object p1, Lorg/bitcoinj/core/Transaction$SigHash;->NONE:Lorg/bitcoinj/core/Transaction$SigHash;

    goto :goto_1

    .line 277
    :cond_2
    sget-object p1, Lorg/bitcoinj/core/Transaction$SigHash;->SINGLE:Lorg/bitcoinj/core/Transaction$SigHash;

    .line 279
    :goto_1
    invoke-virtual {v1}, Lorg/bitcoinj/crypto/TransactionSignature;->sigHashMode()Lorg/bitcoinj/core/Transaction$SigHash;

    move-result-object v5

    if-ne v5, p1, :cond_4

    invoke-virtual {v1}, Lorg/bitcoinj/crypto/TransactionSignature;->anyoneCanPay()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    iget-object v5, v4, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getSignedScript()Lorg/bitcoinj/script/Script;

    move-result-object v6

    invoke-virtual {v5, v8, v6, p1, v0}, Lorg/bitcoinj/core/Transaction;->hashForSignature(ILorg/bitcoinj/script/Script;Lorg/bitcoinj/core/Transaction$SigHash;Z)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 287
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getClientKey()Lorg/bitcoinj/core/ECKey;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lorg/bitcoinj/core/ECKey;->verify(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/ECKey$ECDSASignature;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 289
    iput-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    .line 290
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    .line 291
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->updateChannelInWallet()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 p1, v2, 0x1

    .line 292
    monitor-exit p0

    return p1

    .line 288
    :cond_3
    :try_start_1
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signature does not verify on tx\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "New payment signature was not signed with the right SIGHASH flags."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 269
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Multisig contract was double-spent"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 250
    :cond_6
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string p2, "Attempt to roll back payment on the channel."

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 248
    :cond_7
    new-instance p1, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;

    const-string p2, "Attempt to refund more than the contract allows."

    invoke-direct {p1, p2}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized makeUnsignedChannelContract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;
    .locals 3

    monitor-enter p0

    .line 220
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/Transaction;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 221
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getTotalValue()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getTotalValue()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getClientKey()Lorg/bitcoinj/core/ECKey;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 224
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    .line 225
    invoke-static {v0}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized provideContract(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    monitor-enter p0

    .line 169
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 173
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->contract:Lorg/bitcoinj/core/Transaction;

    .line 174
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->verifyContract(Lorg/bitcoinj/core/Transaction;)V

    .line 177
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->createOutputScript()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getContractScript()Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->getProgram()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getMajorVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Contract\'s first output was not a standard 2-of-2 multisig to client and server in that order."

    goto :goto_0

    :cond_0
    const-string v1, "Contract was not a P2SH script of a CLTV redeem script to client and server"

    :goto_0
    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getTotalValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    .line 190
    :try_start_2
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Broadcasting multisig contract: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addWatchedScripts(Ljava/util/List;)I

    .line 192
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->WAITING_FOR_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->transition(Ljava/lang/Enum;)V

    .line 193
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    invoke-interface {v1, p1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;

    invoke-direct {v2, p0, p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    monitor-exit p0

    return-object v0

    .line 184
    :cond_2
    :try_start_3
    new-instance v0, Lorg/bitcoinj/core/VerificationException;

    const-string v1, "Not accepting an attempt to open a contract with zero value."

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    .line 187
    :try_start_4
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v2, "Provided multisig contract did not verify: {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized storeChannelInWallet(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)V
    .locals 13
    .param p1    # Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->stateMachine:Lorg/bitcoinj/protocols/channels/StateMachine;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;->READY:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState$State;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StateMachine;->checkState(Ljava/lang/Enum;)V

    .line 351
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 352
    monitor-exit p0

    return-void

    .line 354
    :cond_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->log:Lorg/slf4j/Logger;

    const-string v1, "Storing state with contract hash {}."

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    new-instance v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    invoke-direct {v1, v2, v3}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 356
    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addOrGetExistingExtension(Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/WalletExtension;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    .line 357
    new-instance v12, Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getMajorVersion()I

    move-result v3

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getClientOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getExpiryTime()J

    move-result-wide v6

    iget-object v8, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->serverKey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getClientKey()Lorg/bitcoinj/core/ECKey;

    move-result-object v9

    iget-object v10, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    iget-object v11, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v11}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;ILorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionOutput;JLorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;[B)V

    iput-object v12, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v12, p1, v1}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->setConnectedHandler(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Z)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 360
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->putChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateChannelInWallet()V
    .locals 3

    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->bestValueSignature:[B

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->updateValueToMe(Lorg/bitcoinj/core/Coin;[B)V

    .line 332
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 333
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    .line 334
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storedServerChannel:Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->updatedChannel(Lorg/bitcoinj/protocols/channels/StoredServerChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected verifyContract(Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    return-void
.end method
