.class public Lorg/bitcoinj/protocols/channels/StoredServerChannel;
.super Ljava/lang/Object;
.source "StoredServerChannel.java"


# instance fields
.field bestValueSignature:[B

.field bestValueToMe:Lorg/bitcoinj/core/Coin;

.field clientKey:Lorg/bitcoinj/core/ECKey;

.field clientOutput:Lorg/bitcoinj/core/TransactionOutput;

.field private connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

.field contract:Lorg/bitcoinj/core/Transaction;

.field majorVersion:I

.field myKey:Lorg/bitcoinj/core/ECKey;

.field refundTransactionUnlockTimeSecs:J

.field state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;


# direct methods
.method constructor <init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;ILorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionOutput;JLorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;[B)V
    .locals 1
    .param p1    # Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    .line 50
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 54
    iput p2, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->majorVersion:I

    .line 55
    iput-object p3, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 56
    iput-object p4, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    .line 57
    iput-wide p5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    .line 58
    iput-object p7, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 59
    iput-object p8, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientKey:Lorg/bitcoinj/core/ECKey;

    .line 60
    iput-object p9, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    .line 61
    iput-object p10, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueSignature:[B

    .line 62
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    return-void
.end method


# virtual methods
.method declared-synchronized clearConnectedHandler()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 87
    :try_start_0
    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closeConnectedHandler()V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOrCreateState(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 109
    iget v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->majorVersion:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 114
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;

    invoke-direct {v0, p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;-><init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid version number found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    invoke-direct {v0, p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;-><init>(Lorg/bitcoinj/protocols/channels/StoredServerChannel;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 120
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    iget-object p2, p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->wallet:Lorg/bitcoinj/wallet/Wallet;

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 121
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setConnectedHandler(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Z)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
    .locals 1

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 80
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 81
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%n"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Stored server channel (%s)%n    Version:       %d%n    Key:           %s%n    Value to me:   %s%n    Client output: %s%n    Refund unlock: %s (%d unix time)%n    Contract:    %s%n"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->connectedHandler:Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    if-eqz v5, :cond_0

    const-string v5, "connected"

    goto :goto_0

    :cond_0
    const-string v5, "disconnected"

    :goto_0
    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->majorVersion:I

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->myKey:Lorg/bitcoinj/core/ECKey;

    aput-object v5, v4, v2

    const/4 v2, 0x3

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    aput-object v5, v4, v2

    const/4 v2, 0x4

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clientOutput:Lorg/bitcoinj/core/TransactionOutput;

    aput-object v5, v4, v2

    const/4 v2, 0x5

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-wide v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->refundTransactionUnlockTimeSecs:J

    .line 135
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->contract:Lorg/bitcoinj/core/Transaction;

    .line 136
    invoke-virtual {v5}, Lorg/bitcoinj/core/Transaction;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 127
    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

.method declared-synchronized updateValueToMe(Lorg/bitcoinj/core/Coin;[B)V
    .locals 0

    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueToMe:Lorg/bitcoinj/core/Coin;

    .line 71
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->bestValueSignature:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
