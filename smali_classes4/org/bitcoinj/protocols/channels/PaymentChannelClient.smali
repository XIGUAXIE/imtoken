.class public Lorg/bitcoinj/protocols/channels/PaymentChannelClient;
.super Ljava/lang/Object;
.source "PaymentChannelClient.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/IPaymentChannelClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;,
        Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIME_WINDOW:J = 0x15144L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field connectionOpen:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field lastPaymentActualAmount:Lorg/bitcoinj/core/Coin;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private majorVersion:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final maxValue:Lorg/bitcoinj/core/Coin;

.field private minPayment:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private missing:Lorg/bitcoinj/core/Coin;

.field private final myKey:Lorg/bitcoinj/core/ECKey;

.field private final serverId:Lorg/bitcoinj/core/Sha256Hash;

.field private state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

.field private final timeWindow:J

.field private userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

.field private final versionSelector:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

.field private final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;)V
    .locals 10
    .param p7    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 224
    sget-object v9, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
    .locals 2
    .param p7    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channelclient"

    .line 58
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 82
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CONNECTION_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 253
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Wallet;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 254
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/ECKey;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 255
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->maxValue:Lorg/bitcoinj/core/Coin;

    .line 256
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Sha256Hash;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->serverId:Lorg/bitcoinj/core/Sha256Hash;

    const-wide/16 p1, 0x0

    cmp-long p3, p5, p1

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    .line 257
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 258
    iput-wide p5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->timeWindow:J

    .line 259
    invoke-static {p8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    .line 260
    iput-object p7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 261
    iput-object p9, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->versionSelector:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;)V
    .locals 7

    .line 172
    sget-object v6, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
    .locals 10

    const-wide/32 v5, 0x15144

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    move-object/from16 v9, p6

    .line 199
    invoke-direct/range {v0 .. v9}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method private receiveChannelOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 415
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 416
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Got CHANNEL_OPEN message, ready to pay"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v1, :cond_4

    .line 422
    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 427
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {v0, v1, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;-><init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    goto :goto_2

    .line 430
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_3
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {v0, v1, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;-><init>(Lorg/bitcoinj/protocols/channels/StoredClientChannel;Lorg/bitcoinj/wallet/Wallet;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 433
    :goto_2
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 436
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-interface {v0, v2}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->channelOpen(Z)V

    return-void
.end method

.method private receiveClose(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 537
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 538
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    .line 540
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    const-string v2, "CLOSE message received with settlement tx {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->isSettlementTransaction(Lorg/bitcoinj/core/Transaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V

    goto :goto_0

    .line 549
    :cond_0
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v0, "CLOSE message received without settlement tx"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 551
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne p1, v0, :cond_2

    .line 552
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_1

    .line 554
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    .line 555
    :goto_1
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_CLOSED:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    return-void
.end method

.method private receiveInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lorg/bitcoinj/core/Coin;Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/core/InsufficientMoneyException;,
            Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 278
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got INITIATE message:\n{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;-><init>()V

    throw p1

    .line 283
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getExpireTimeSecs()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    cmp-long v2, v5, v0

    if-ltz v2, :cond_2

    .line 284
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 286
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-interface {v0, v5, v6}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->acceptExpireTime(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 287
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, v5

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Server suggested expire time was out of our allowed bounds: {} ({} s)"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p3, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 289
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->TIME_WINDOW_UNACCEPTABLE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 292
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinAcceptedChannelSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 293
    invoke-virtual {p2, v0}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v1

    if-gez v1, :cond_4

    .line 294
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Server requested too much value"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 295
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p3, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 296
    invoke-virtual {v0, p2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->missing:Lorg/bitcoinj/core/Coin;

    .line 297
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 302
    :cond_4
    sget-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    .line 303
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_5

    .line 304
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Server requested a min payment of {} but we expected {}"

    invoke-interface {p2, v4, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    sget-object p2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->MIN_PAYMENT_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p3, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 306
    invoke-virtual {p3, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 307
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->missing:Lorg/bitcoinj/core/Coin;

    .line 308
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 311
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    .line 312
    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->isPubKeyCanonical([B)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 314
    iget v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    const/4 v8, 0x2

    if-eq v1, v7, :cond_7

    if-eq v1, v8, :cond_6

    .line 322
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 319
    :cond_6
    new-instance v9, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    move-object v0, v9

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ClientState;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V

    iput-object v9, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    goto :goto_2

    .line 316
    :cond_7
    new-instance v9, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->myKey:Lorg/bitcoinj/core/ECKey;

    invoke-static {v0}, Lorg/bitcoinj/core/ECKey;->fromPublicOnly([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    move-object v0, v9

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;J)V

    iput-object v9, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    .line 325
    :goto_2
    :try_start_0
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p2, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->initiate(Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catch Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getMinPayment()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->minPayment:J

    .line 332
    iget p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    const/4 p2, 0x0

    if-eq p1, v7, :cond_9

    if-eq p1, v8, :cond_8

    .line 375
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 346
    :cond_8
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 350
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->serverId:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {p1, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storeChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 352
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    .line 353
    invoke-virtual {p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 354
    invoke-virtual {p3}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setClientKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    .line 358
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object p3

    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->minPayment:J

    invoke-static {v0, v1}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {p3, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->incrementPaymentBy(Lorg/bitcoinj/core/Coin;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    move-result-object p3

    .line 359
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    .line 360
    iget-object p3, p3, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-virtual {p3}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 361
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueRefunded()Lorg/bitcoinj/core/Coin;

    move-result-object p3

    iget-wide v1, p3, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :try_end_1
    .catch Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 369
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p3

    .line 370
    invoke-virtual {p3, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 371
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {p3, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 372
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-virtual {p3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 363
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 334
    :cond_9
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 336
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 337
    invoke-virtual {p3}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    check-cast p3, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    .line 338
    invoke-virtual {p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->getIncompleteRefundTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object p3

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    .line 340
    iget-object p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setProvideRefund(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 342
    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p1

    .line 340
    invoke-interface {p3, p1}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    :goto_3
    return-object p2

    :catch_1
    move-exception p1

    .line 327
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v0, "Value out of range when trying to initiate"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->CHANNEL_VALUE_TOO_LARGE:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-virtual {p3, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 329
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_TOO_MUCH_VALUE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    return-object p1

    .line 313
    :cond_a
    new-instance p1, Lorg/bitcoinj/core/VerificationException;

    const-string p2, "Server gave us a non-canonical public key, protocol error."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private receivePaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 742
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 748
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 743
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const-string v1, "Server sent a PAYMENT_ACK with no outstanding payment"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Received a PAYMENT_ACK from the server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 746
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lastPaymentActualAmount:Lorg/bitcoinj/core/Coin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 752
    new-instance v2, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;-><init>(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)V

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 748
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private receiveRefund(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 4
    .param p2    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 382
    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 383
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_REFUND_RETURN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 384
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Got RETURN_REFUND message, providing signed contract"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    check-cast v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ClientState;->provideRefundSignature([BLorg/spongycastle/crypto/params/KeyParameter;)V

    .line 388
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 392
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->serverId:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->storeChannelInWallet(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 394
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    .line 395
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->setTx(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->minPayment:J

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->incrementPaymentBy(Lorg/bitcoinj/core/Coin;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    move-result-object p2

    .line 400
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->getInitialPaymentBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    .line 401
    iget-object p2, p2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lorg/bitcoinj/crypto/TransactionSignature;

    invoke-virtual {p2}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 402
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueRefunded()Lorg/bitcoinj/core/Coin;

    move-result-object p2

    iget-wide v1, p2, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    :try_end_0
    .catch Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p2

    .line 408
    invoke-virtual {p2, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setProvideContract(Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 409
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PROVIDE_CONTRACT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {p2, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 410
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-virtual {p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void

    :catch_0
    move-exception p1

    .line 404
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setIncreasePaymentFutureIfNeeded(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;Ljava/lang/String;)V
    .locals 2

    .line 530
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException;-><init>(Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 573
    :try_start_0
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 574
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->disconnectFromChannel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public connectionOpen()V
    .locals 4

    .line 615
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 617
    :try_start_0
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    .line 619
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    if-eqz v0, :cond_0

    .line 621
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->serverId:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->getUsableChannelForServerID(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    .line 623
    :cond_0
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 625
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->versionSelector:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    .line 626
    invoke-virtual {v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->getRequestedMajorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->versionSelector:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    .line 627
    invoke-virtual {v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->getRequestedMinorVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->timeWindow:J

    .line 628
    invoke-virtual {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setTimeWindowSecs(J)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v1, v1, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Sha256Hash;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 632
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Begun version handshake, attempting to reopen channel with contract hash {}"

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->storedChannel:Lorg/bitcoinj/protocols/channels/StoredClientChannel;

    iget-object v3, v3, Lorg/bitcoinj/protocols/channels/StoredClientChannel;->contract:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 634
    :cond_1
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Begun version handshake creating new channel"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 636
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 637
    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    .line 638
    invoke-virtual {v2, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setClientVersion(Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 639
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 636
    invoke-interface {v1, v0}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMissing()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 271
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->missing:Lorg/bitcoinj/core/Coin;

    return-object v0
.end method

.method public incrementPayment(Lorg/bitcoinj/core/Coin;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0, p1, v0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v1, :cond_4

    .line 704
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-nez v0, :cond_3

    .line 706
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;

    invoke-direct {p1}, Lorg/bitcoinj/core/ECKey$KeyIsEncryptedException;-><init>()V

    throw p1

    .line 709
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->incrementPaymentBy(Lorg/bitcoinj/core/Coin;Lorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;

    move-result-object p1

    .line 710
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p3

    iget-object v0, p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->signature:Lorg/bitcoinj/crypto/TransactionSignature;

    .line 711
    invoke-virtual {v0}, Lorg/bitcoinj/crypto/TransactionSignature;->encodeToBitcoin()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p3

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    .line 712
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;->getValueRefunded()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    invoke-virtual {p3, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p3

    if-eqz p2, :cond_2

    .line 713
    invoke-virtual {p3, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 715
    :cond_2
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 716
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClient;)V

    .line 723
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v1

    .line 716
    invoke-virtual {p2, v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 725
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 726
    invoke-virtual {v0, p3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setUpdatePayment(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p3

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->UPDATE_PAYMENT:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 727
    invoke-virtual {p3, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p3

    .line 728
    invoke-virtual {p3}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p3

    .line 725
    invoke-interface {p2, p3}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 729
    iget-object p1, p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClientState$IncrementedPayment;->amount:Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lastPaymentActualAmount:Lorg/bitcoinj/core/Coin;

    .line 730
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->increasePaymentFuture:Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 705
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already incrementing paying, wait for previous payment to complete."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 703
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Channel is not fully initialized/has already been closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 732
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 443
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :try_start_1
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$2;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 494
    :try_start_2
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    goto/16 :goto_3

    .line 487
    :pswitch_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 488
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Server sent ERROR {} with explanation {}"

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object v1

    .line 488
    :cond_0
    invoke-interface {v0, v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 490
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->setIncreasePaymentFutureIfNeeded(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 519
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 484
    :pswitch_1
    :try_start_3
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receiveClose(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getPaymentAck()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receivePaymentAck(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)V

    goto :goto_0

    .line 478
    :pswitch_3
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receiveChannelOpen()V

    goto :goto_0

    .line 473
    :pswitch_4
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receiveRefund(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/spongycastle/crypto/params/KeyParameter;)V

    const/4 p1, 0x0

    .line 475
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->userKeySetup:Lorg/spongycastle/crypto/params/KeyParameter;

    goto :goto_0

    .line 464
    :pswitch_5
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 465
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object p1

    .line 466
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->maxValue:Lorg/bitcoinj/core/Coin;

    invoke-direct {p0, p1, v1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->receiveInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate;Lorg/bitcoinj/core/Coin;Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 470
    :cond_2
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v2, "Initiate failed with error: {}"

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 450
    :pswitch_6
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_VERSION_NEGOTIATION:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 453
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMajor()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->majorVersion:I

    .line 454
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->versionSelector:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getMinor()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->isServerVersionAccepted(II)Z

    move-result p1

    if-nez p1, :cond_4

    .line 455
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 456
    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 457
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    goto :goto_4

    .line 460
    :cond_4
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v0, "Got version handshake, awaiting INITIATE or resume CHANNEL_OPEN"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 461
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_INITIATE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    goto/16 :goto_0

    :goto_3
    const-string v0, "Got unknown message type or type that doesn\'t apply to clients."

    .line 494
    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 496
    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 497
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->setIncreasePaymentFutureIfNeeded(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;Ljava/lang/String;)V

    .line 498
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;
    :try_end_3
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 508
    :try_start_4
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught illegal state exception handling message from server"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 509
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 510
    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 511
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    goto :goto_4

    :catch_1
    move-exception p1

    .line 502
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught verification exception handling message from server"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 503
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 504
    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 505
    invoke-virtual {p1}, Lorg/bitcoinj/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 506
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    .line 513
    :goto_4
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v2

    .line 514
    invoke-virtual {v2, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 515
    invoke-virtual {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 513
    invoke-interface {v1, v0}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 517
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-interface {v0, p1}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 519
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public settle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->connectionOpen:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 597
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;->WAITING_FOR_CHANNEL_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$InitStep;

    .line 598
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->log:Lorg/slf4j/Logger;

    const-string v1, "Sending a CLOSE message to the server and waiting for response indicating successful settlement."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->conn:Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 600
    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    .line 599
    invoke-interface {v0, v1}, Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;->sendToServer(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
    .locals 2

    .line 653
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
