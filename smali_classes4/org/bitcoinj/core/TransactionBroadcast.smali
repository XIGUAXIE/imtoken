.class public Lorg/bitcoinj/core/TransactionBroadcast;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;,
        Lorg/bitcoinj/core/TransactionBroadcast$ConfidenceChange;,
        Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field public static random:Ljava/util/Random;


# instance fields
.field private callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private minConnections:I

.field private mined:Z

.field private numSeemPeers:I

.field private numWaitingFor:I

.field private final peerGroup:Lorg/bitcoinj/core/PeerGroup;

.field private progressCallbackExecutor:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private rejectionListener:Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

.field private rejects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Peer;",
            "Lorg/bitcoinj/core/RejectMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/bitcoinj/core/TransactionBroadcast;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/Transaction;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejects:Ljava/util/Map;

    .line 91
    new-instance v0, Lorg/bitcoinj/core/TransactionBroadcast$2;

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/TransactionBroadcast$2;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;)V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejectionListener:Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    .line 57
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    .line 58
    iput-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->tx:Lorg/bitcoinj/core/Transaction;

    .line 59
    invoke-virtual {p1}, Lorg/bitcoinj/core/PeerGroup;->getMinBroadcastConnections()I

    move-result p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->minConnections:I

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/core/Transaction;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejects:Ljava/util/Map;

    .line 91
    new-instance v0, Lorg/bitcoinj/core/TransactionBroadcast$2;

    invoke-direct {v0, p0}, Lorg/bitcoinj/core/TransactionBroadcast$2;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;)V

    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejectionListener:Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    .line 65
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->tx:Lorg/bitcoinj/core/Transaction;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionBroadcast$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/TransactionBroadcast;-><init>(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/Transaction;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->tx:Lorg/bitcoinj/core/Transaction;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/bitcoinj/core/TransactionBroadcast;IZ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast;->invokeAndRecord(IZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/bitcoinj/core/TransactionBroadcast;)Ljava/util/Map;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejects:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lorg/bitcoinj/core/TransactionBroadcast;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numWaitingFor:I

    return p0
.end method

.method static synthetic access$302(Lorg/bitcoinj/core/TransactionBroadcast;I)I
    .locals 0

    .line 40
    iput p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numWaitingFor:I

    return p1
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/bitcoinj/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/bitcoinj/core/TransactionBroadcast;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method static synthetic access$600(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/PeerGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    return-object p0
.end method

.method static synthetic access$700(Lorg/bitcoinj/core/TransactionBroadcast;)I
    .locals 0

    .line 40
    iget p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->minConnections:I

    return p0
.end method

.method static synthetic access$900(Lorg/bitcoinj/core/TransactionBroadcast;)Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejectionListener:Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    return-object p0
.end method

.method public static createMockBroadcast(Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)Lorg/bitcoinj/core/TransactionBroadcast;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Lorg/bitcoinj/core/TransactionBroadcast;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/bitcoinj/core/TransactionBroadcast$1;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/TransactionBroadcast$1;-><init>(Lorg/bitcoinj/core/Transaction;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-object v0
.end method

.method private invokeAndRecord(IZ)V
    .locals 0

    .line 215
    monitor-enter p0

    .line 216
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numSeemPeers:I

    .line 217
    iput-boolean p2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->mined:Z

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast;->invokeProgressCallback(IZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 218
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private invokeProgressCallback(IZ)V
    .locals 7

    .line 225
    monitor-enter p0

    .line 226
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;

    .line 227
    iget-object v1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->progressCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 228
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz p2, :cond_0

    move-wide p1, v2

    goto :goto_0

    :cond_0
    int-to-double p1, p1

    .line 230
    iget v4, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numWaitingFor:I

    int-to-double v4, v4

    div-double/2addr p1, v4

    :goto_0
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v4, 0x0

    cmpl-double v6, p1, v4

    if-ltz v6, :cond_1

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 231
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez v1, :cond_2

    .line 234
    :try_start_1
    invoke-interface {v0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;->onBroadcastProgress(D)V

    goto :goto_2

    .line 236
    :cond_2
    new-instance v2, Lorg/bitcoinj/core/TransactionBroadcast$3;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast$3;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;D)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 243
    sget-object p2, Lorg/bitcoinj/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    const-string v0, "Exception during progress callback"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 228
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method


# virtual methods
.method public broadcast()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->rejectionListener:Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/PeerGroup;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    .line 113
    sget-object v0, Lorg/bitcoinj/core/TransactionBroadcast;->log:Lorg/slf4j/Logger;

    iget v1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->minConnections:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v2}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Waiting for {} peers required for broadcast, we have {} ..."

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->peerGroup:Lorg/bitcoinj/core/PeerGroup;

    iget v1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->minConnections:I

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->waitForPeers(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/TransactionBroadcast$EnoughAvailablePeers;-><init>(Lorg/bitcoinj/core/TransactionBroadcast;)V

    sget-object v2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 115
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public future()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public setMinConnections(I)V
    .locals 0

    .line 88
    iput p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->minConnections:I

    return-void
.end method

.method public setProgressCallback(Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;)V
    .locals 1

    .line 270
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/TransactionBroadcast;->setProgressCallback(Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setProgressCallback(Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;

    .line 285
    iput-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->progressCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 286
    iget p1, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numSeemPeers:I

    .line 287
    iget-boolean p2, p0, Lorg/bitcoinj/core/TransactionBroadcast;->mined:Z

    .line 288
    iget v0, p0, Lorg/bitcoinj/core/TransactionBroadcast;->numWaitingFor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 291
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/TransactionBroadcast;->invokeProgressCallback(IZ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 289
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
