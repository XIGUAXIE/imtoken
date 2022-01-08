.class public Lorg/bitcoinj/protocols/channels/PaymentChannelServer;
.super Ljava/lang/Object;
.source "PaymentChannelServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;,
        Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_TIME_WINDOW:J = 0x93a80L

.field public static final DEFAULT_MIN_TIME_WINDOW:J = 0x3840L

.field public static final HARD_MIN_TIME_WINDOW:J = 0x1c20L

.field public static final SERVER_VERSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

.field private channelSettling:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

.field private connectionOpen:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private expireTime:J
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

.field protected final maxTimeWindow:J

.field private final minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

.field protected final minTimeWindow:J

.field private myKey:Lorg/bitcoinj/core/ECKey;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    const-class v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->SERVER_VERSIONS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;JJLorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channelserver"

    .line 53
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 70
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    .line 129
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->channelSettling:Z

    cmp-long v0, p4, p6

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x1c20

    cmp-long v2, p4, v0

    if-ltz v2, :cond_0

    .line 205
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionBroadcaster;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    .line 206
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Wallet;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 207
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

    .line 208
    invoke-static {p8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    .line 209
    iput-wide p4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minTimeWindow:J

    .line 210
    iput-wide p6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->maxTimeWindow:J

    return-void

    .line 204
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minTimeWindow must be larger than7200 seconds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 203
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minTimeWindow must be less or equal to maxTimeWindow"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;)V
    .locals 9

    const-wide/16 v4, 0x3840

    const-wide/32 v6, 0x93a80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    .line 181
    invoke-direct/range {v0 .. v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;JJLorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->multisigContractPropogated(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Sha256Hash;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    return-object p0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .line 49
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void
.end method

.method private error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 1

    .line 495
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p2

    .line 499
    invoke-virtual {p2, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    .line 500
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setError(Lorg/bitcoin/paymentchannel/Protos$Error$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ERROR:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 502
    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p1

    .line 500
    invoke-interface {p2, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 504
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {p1, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void
.end method

.method private multisigContractPropogated(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 340
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->channelSettling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->storeChannelInWallet(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :try_start_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :try_start_2
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 361
    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 360
    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 363
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 364
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {p1, p2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_0
    move-exception p1

    .line 356
    :try_start_3
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v0, "Tried to settle channel and could not afford the fees whilst updating payment"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    invoke-virtual {p1}, Lorg/bitcoinj/core/InsufficientMoneyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catch_1
    move-exception p1

    .line 350
    :try_start_4
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v0, "Initial payment value was out of range"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 346
    sget-object p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v0, "Initial payment failed to verify"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    invoke-virtual {p1}, Lorg/bitcoinj/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 366
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private receiveCloseMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 509
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got CLOSE message, closing channel"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    if-eqz v0, :cond_0

    .line 511
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->settlePayment(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CLIENT_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    :goto_0
    return-void
.end method

.method private receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 372
    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 373
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v4, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 374
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got contract, broadcasting and responding with CHANNEL_OPEN"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object p1

    .line 377
    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    if-ne v0, v2, :cond_3

    .line 378
    new-instance v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;

    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    iget-object v5, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-wide v7, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->expireTime:J

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 379
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasClientKey()Z

    move-result v0

    const-string v1, "ProvideContract didn\'t have a client key in protocol v2"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    check-cast v0, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getClientKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelV2ServerState;->provideClientKey([B)V

    .line 384
    :cond_3
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    .line 385
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_MULTISIG_ACCEPTANCE:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 386
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->provideContract(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;

    invoke-direct {v2, p0, p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoinj/core/Transaction;)V

    sget-object p1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    .line 387
    invoke-interface {v1, v2, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private receiveRefundMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 315
    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 316
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v3, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 317
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got refund transaction, returning signature"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object p1

    .line 320
    new-instance v6, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->myKey:Lorg/bitcoinj/core/ECKey;

    iget-wide v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->expireTime:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;-><init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;J)V

    iput-object v6, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 322
    check-cast v6, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 323
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getDefaultSerializer()Lorg/bitcoinj/core/MessageSerializer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getTx()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/MessageSerializer;->makeTransaction([B)Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getMultisigKey()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    .line 323
    invoke-virtual {v6, v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelV1ServerState;->provideRefundTransaction(Lorg/bitcoinj/core/Transaction;[B)[B

    move-result-object p1

    .line 326
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 328
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v0

    .line 329
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object p1

    .line 331
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setReturnRefund(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->RETURN_REFUND:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 333
    invoke-virtual {p1, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p1

    .line 331
    invoke-interface {v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method private receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 397
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Got a payment update"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getClientChangeValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 401
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->incrementPayment(Lorg/bitcoinj/core/Coin;[B)Z

    move-result v1

    .line 402
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 406
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 407
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getBestValueToMe()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-interface {p1, v0, v2, v3}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->paymentIncrease(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    :cond_1
    if-eqz p2, :cond_3

    .line 411
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    .line 412
    sget-object p2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->PAYMENT_ACK:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    if-nez v3, :cond_2

    .line 414
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_0

    .line 416
    :cond_2
    new-instance p2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;

    invoke-direct {p2, p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$2;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;)V

    invoke-static {v3, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 433
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string p2, "Channel is now fully exhausted, closing/initiating settlement"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 434
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->CHANNEL_EXHAUSTED:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->settlePayment(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    :cond_4
    return-void
.end method

.method private receiveVersionMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CLIENT_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 225
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMajor()I

    move-result v0

    iput v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    .line 227
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->SERVER_VERSIONS:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This server needs one of protocol versions "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->SERVER_VERSIONS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , client offered "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    return-void

    .line 233
    :cond_1
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    iget v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    .line 234
    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->SERVER_VERSIONS:Ljava/util/Map;

    iget v4, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v4

    sget-object v5, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->SERVER_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 236
    invoke-virtual {v4, v5}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v4

    .line 237
    invoke-virtual {v4, v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setServerVersion(Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    .line 235
    invoke-interface {v1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 239
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 240
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_5

    .line 241
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->wrap([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 242
    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v4, "New client that wants to resume {}"

    invoke-interface {v1, v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 244
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v1

    sget-object v4, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    if-eqz v1, :cond_4

    .line 246
    invoke-virtual {v1, v0}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->getChannel(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {v1, p0, v2}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->setConnectedHandler(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Z)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    move-result-object p1

    if-eq p1, p0, :cond_2

    .line 250
    sget-object v2, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v4, "  ... and that channel is already in use, disconnecting other user."

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->close()V

    .line 252
    invoke-virtual {v1, p0, v3}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->setConnectedHandler(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Z)Lorg/bitcoinj/protocols/channels/PaymentChannelServer;

    .line 255
    :cond_2
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v2, "Got resume version message, responding with VERSIONS and CHANNEL_OPEN"

    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    invoke-virtual {v1, p1, v2}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->getOrCreateState(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/TransactionBroadcaster;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    .line 257
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 258
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CHANNEL_OPEN:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 259
    invoke-virtual {v1, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v1

    .line 258
    invoke-interface {p1, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 261
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->channelOpen(Lorg/bitcoinj/core/Sha256Hash;)V

    return-void

    .line 264
    :cond_3
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, " ... but we do not have any record of that contract! Resume failed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    :cond_4
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, " ... but we do not have any stored channels! Resume failed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 270
    :cond_5
    :goto_1
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

    iget-wide v1, v1, Lorg/bitcoinj/core/Coin;->value:J

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Got initial version message, responding with VERSIONS and INITIATE: min value={}"

    .line 270
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    new-instance v0, Lorg/bitcoinj/core/ECKey;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 274
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->freshReceiveKey()Lorg/bitcoinj/crypto/DeterministicKey;

    .line 276
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getTimeWindowSecs()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->truncateTimeWindow(J)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->expireTime:J

    .line 277
    iget p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Protocol version "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->majorVersion:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->NO_ACCEPTABLE_VERSION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->NO_ACCEPTABLE_VERSION:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_2

    .line 282
    :cond_6
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_CONTRACT:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    goto :goto_2

    .line 279
    :cond_7
    sget-object p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->WAITING_ON_UNSIGNED_REFUND:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    .line 289
    :goto_2
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->myKey:Lorg/bitcoinj/core/ECKey;

    .line 290
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMultisigKey(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->expireTime:J

    .line 291
    invoke-virtual {p1, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setExpireTimeSecs(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    .line 292
    invoke-virtual {p1, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinAcceptedChannelSize(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    sget-object v0, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    iget-wide v0, v0, Lorg/bitcoinj/core/Coin;->value:J

    .line 293
    invoke-virtual {p1, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->setMinPayment(J)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setInitiate(Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->INITIATE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 297
    invoke-virtual {p1, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object p1

    .line 295
    invoke-interface {v0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    return-void
.end method

.method private settlePayment(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->channelSettling:Z

    .line 523
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->close()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;

    invoke-direct {v1, p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$3;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServer;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    return-void
.end method

.method private truncateTimeWindow(J)J
    .locals 3

    .line 302
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minTimeWindow:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 303
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minTimeWindow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "client requested time window {} s to short, offering {} s"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    iget-wide p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minTimeWindow:J

    return-wide p1

    .line 306
    :cond_0
    iget-wide v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->maxTimeWindow:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 307
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->minTimeWindow:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "client requested time window {} s to long, offering {} s"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-wide p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->maxTimeWindow:J

    :cond_1
    return-wide p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 604
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 606
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->channelSettling:Z

    if-nez v0, :cond_0

    .line 607
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    .line 608
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLOSE:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->setType(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 609
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->sendToClient(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    .line 610
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->SERVER_REQUESTED_CLOSE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public connectionClosed()V
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 560
    :try_start_0
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Server channel closed."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 561
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 566
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->EXTENSION_ID:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    if-eqz v0, :cond_0

    .line 568
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    invoke-virtual {v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;->getContract()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->getChannel(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/protocols/channels/StoredServerChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/StoredServerChannel;->clearConnectedHandler()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public connectionOpen()V
    .locals 2

    .line 586
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 588
    :try_start_0
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "New server channel active."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 589
    iput-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public receiveMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V
    .locals 4

    .line 443
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 445
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->connectionOpen:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 446
    iget-boolean v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->channelSettling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 490
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 449
    :cond_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$4;->$SwitchMap$org$bitcoin$paymentchannel$Protos$TwoWayChannelMessage$MessageType:[I

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 467
    :pswitch_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasError()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 468
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Client sent ERROR {} with explanation {}"

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->name()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getError()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 468
    :goto_1
    invoke-interface {v0, v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->conn:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;

    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_ERROR:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-interface {p1, v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$ServerConnection;->destroyConnection(Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_0

    .line 464
    :pswitch_1
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveCloseMessage()V

    goto :goto_0

    .line 460
    :pswitch_2
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->step:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;->CHANNEL_OPEN:Lorg/bitcoinj/protocols/channels/PaymentChannelServer$InitStep;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 461
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveUpdatePaymentMessage(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Z)V

    goto :goto_0

    .line 457
    :pswitch_3
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveContractMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_0

    .line 454
    :pswitch_4
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveRefundMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_0

    .line 451
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->receiveVersionMessage(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)V

    goto :goto_0

    :goto_3
    const-string p1, "Got unknown message type or type that doesn\'t apply to servers."

    .line 474
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/bitcoinj/core/InsufficientMoneyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 486
    :try_start_2
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught illegal state exception handling message from client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->SYNTAX_ERROR:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 483
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught insufficient money exception handling message from client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    invoke-virtual {p1}, Lorg/bitcoinj/core/InsufficientMoneyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_4

    :catch_2
    move-exception p1

    .line 480
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught value out of range exception handling message from client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    invoke-virtual {p1}, Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V

    goto :goto_4

    :catch_3
    move-exception p1

    .line 477
    sget-object v0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->log:Lorg/slf4j/Logger;

    const-string v1, "Caught verification exception handling message from client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    invoke-virtual {p1}, Lorg/bitcoinj/core/VerificationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->BAD_TRANSACTION:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    sget-object v1, Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;->REMOTE_SENT_INVALID_MESSAGE:Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;

    invoke-direct {p0, p1, v0, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->error(Ljava/lang/String;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;Lorg/bitcoinj/protocols/channels/PaymentChannelCloseException$CloseReason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :goto_4
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public state()Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServer;->state:Lorg/bitcoinj/protocols/channels/PaymentChannelServerState;

    return-object v0
.end method
