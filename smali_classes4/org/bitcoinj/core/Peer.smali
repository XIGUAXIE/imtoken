.class public Lorg/bitcoinj/core/Peer;
.super Lorg/bitcoinj/core/PeerSocketHandler;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/Peer$PendingPing;,
        Lorg/bitcoinj/core/Peer$GetDataRequest;
    }
.end annotation


# static fields
.field private static final PING_MOVING_AVERAGE_WINDOW:I = 0x14

.field private static final RESEND_BLOOM_FILTER_BLOCK_COUNT:I = 0x61a8

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private awaitingFreshFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

.field private final blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final chainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/bitcoinj/core/Context;

.field private currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

.field private final disconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private downloadBlockBodies:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private fastCatchupTimeSecs:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private filteredBlocksReceived:I

.field private final getAddrFutures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/AddressMessage;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "getAddrFutures"
    .end annotation
.end field

.field private final getDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/GetDataEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/Peer$GetDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private getutxoFutures:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/UTXOsMessage;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final incomingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private lastGetBlocksBegin:Lorg/bitcoinj/core/Sha256Hash;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private lastGetBlocksEnd:Lorg/bitcoinj/core/Sha256Hash;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private lastPingTimes:[J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lastPingTimesLock"
    .end annotation
.end field

.field private final lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final onTransactionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final outgoingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lorg/bitcoinj/core/NetworkParameters;

.field private final pendingBlockDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/Peer$PendingPing;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingTxDownloads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/bitcoinj/core/TransactionConfidence;",
            ">;"
        }
    .end annotation
.end field

.field private final preMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private useFilteredBlocks:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private volatile vBloomFilter:Lorg/bitcoinj/core/BloomFilter;

.field private volatile vDownloadData:Z

.field private volatile vDownloadTxDependencyDepth:I

.field private volatile vMinProtocolVersion:I

.field private volatile vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

.field private final versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final versionMessage:Lorg/bitcoinj/core/VersionMessage;

.field private final wallets:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/wallet/Wallet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/bitcoinj/core/Peer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/PeerAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 264
    new-instance v0, Lorg/bitcoinj/core/VersionMessage;

    invoke-virtual {p2}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/core/VersionMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bitcoinj/core/Peer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/PeerAddress;)V

    .line 265
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p5, p2}, Lorg/bitcoinj/core/VersionMessage;->appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/PeerAddress;)V
    .locals 0
    .param p3    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/bitcoinj/core/Peer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;)V
    .locals 6
    .param p4    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 208
    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Peer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;I)V
    .locals 4
    .param p4    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 227
    invoke-direct {p0, p1, p3}, Lorg/bitcoinj/core/PeerSocketHandler;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/PeerAddress;)V

    const-string p3, "peer"

    .line 61
    invoke-static {p3}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p3

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->blocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 69
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->chainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->connectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->disconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->getDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->preMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 79
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->onTransactionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p3, p0, Lorg/bitcoinj/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p3, 0x1

    .line 101
    iput-boolean p3, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lorg/bitcoinj/core/Peer;->useFilteredBlocks:Z

    const/4 v1, 0x0

    .line 107
    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    .line 126
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    .line 132
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/bitcoinj/core/Peer;->pendingTxDownloads:Ljava/util/HashSet;

    .line 152
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 153
    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    .line 160
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 161
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->outgoingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 162
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->incomingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/common/util/concurrent/ListenableFuture;

    .line 163
    iget-object v3, p0, Lorg/bitcoinj/core/Peer;->outgoingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    aput-object v3, v2, v0

    aput-object v1, v2, p3

    .line 164
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->allAsList([Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lorg/bitcoinj/core/Peer$1;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/Peer$1;-><init>(Lorg/bitcoinj/core/Peer;)V

    .line 163
    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 228
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/NetworkParameters;

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 229
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/VersionMessage;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 230
    :goto_0
    iput p5, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    .line 231
    iput-object p4, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 232
    :goto_1
    iput-boolean p3, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    .line 233
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 234
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lorg/bitcoinj/core/Peer;->getAddrFutures:Ljava/util/LinkedList;

    .line 235
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/bitcoinj/core/Peer;->fastCatchupTimeSecs:J

    .line 236
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lorg/bitcoinj/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 237
    sget-object p2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->PONG:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/Peer;->vMinProtocolVersion:I

    .line 238
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 239
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->context:Lorg/bitcoinj/core/Context;

    .line 241
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lorg/bitcoinj/core/Peer$2;

    invoke-direct {p2, p0}, Lorg/bitcoinj/core/Peer$2;-><init>(Lorg/bitcoinj/core/Peer;)V

    sget-object p3, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/core/Peer;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/bitcoinj/core/Peer;->versionHandshakeComplete()V

    return-void
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 58
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bitcoinj/core/Peer;J)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/core/Peer;->addPingTimeData(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/bitcoinj/core/Peer;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lorg/bitcoinj/core/Peer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lorg/bitcoinj/core/Peer;)Lorg/bitcoinj/core/NetworkParameters;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object p0
.end method

.method private addPingTimeData(J)V
    .locals 5

    .line 1542
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1544
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [J

    .line 1545
    iput-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    .line 1547
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_0

    .line 1550
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1552
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    array-length v1, v1

    sub-int/2addr v1, v4

    aput-wide p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 8
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 1402
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1445
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v1}, Lorg/bitcoinj/core/AbstractBlockChain;->getBlockStore()Lorg/bitcoinj/store/BlockStore;

    move-result-object v1

    .line 1446
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v2}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2

    .line 1447
    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    .line 1449
    iget-object v4, p0, Lorg/bitcoinj/core/Peer;->lastGetBlocksBegin:Lorg/bitcoinj/core/Sha256Hash;

    invoke-static {v4, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/bitcoinj/core/Peer;->lastGetBlocksEnd:Lorg/bitcoinj/core/Sha256Hash;

    invoke-static {v4, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1450
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "blockChainDownloadLocked({}): ignoring duplicated request: {}"

    invoke-interface {v0, v1, p1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1451
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Sha256Hash;

    .line 1452
    sget-object v1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "Pending block download: {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1453
    :cond_0
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 1456
    :cond_1
    sget-object v4, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1457
    sget-object v4, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    .line 1458
    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "{}: blockChainDownloadLocked({}) current head = {}"

    .line 1457
    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/16 v4, 0x64

    :goto_1
    if-eqz v2, :cond_3

    if-lez v4, :cond_3

    .line 1461
    invoke-virtual {v2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1463
    :try_start_0
    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/StoredBlock;->getPrev(Lorg/bitcoinj/store/BlockStore;)Lorg/bitcoinj/core/StoredBlock;

    move-result-object v2
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1465
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to walk the block chain whilst constructing a locator"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    if-eqz v2, :cond_4

    .line 1471
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_4
    iput-object v3, p0, Lorg/bitcoinj/core/Peer;->lastGetBlocksBegin:Lorg/bitcoinj/core/Sha256Hash;

    .line 1476
    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->lastGetBlocksEnd:Lorg/bitcoinj/core/Sha256Hash;

    .line 1478
    iget-boolean v1, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    if-eqz v1, :cond_5

    .line 1479
    new-instance v1, Lorg/bitcoinj/core/GetBlocksMessage;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, v0, p1}, Lorg/bitcoinj/core/GetBlocksMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/core/Sha256Hash;)V

    .line 1480
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    goto :goto_2

    .line 1483
    :cond_5
    new-instance v1, Lorg/bitcoinj/core/GetHeadersMessage;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, v0, p1}, Lorg/bitcoinj/core/GetHeadersMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Lorg/bitcoinj/core/Sha256Hash;)V

    .line 1484
    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    :goto_2
    return-void
.end method

.method private checkForFilterExhaustion(Lorg/bitcoinj/core/FilteredBlock;)Z
    .locals 3

    .line 1140
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Wallet;

    .line 1141
    invoke-virtual {v2, p1}, Lorg/bitcoinj/wallet/Wallet;->checkForFilterExhaustion(Lorg/bitcoinj/core/FilteredBlock;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private invokeOnBlocksDownloaded(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;)V
    .locals 10
    .param p2    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1164
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v0, v0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1165
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->blocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1166
    iget-object v8, v4, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v9, Lorg/bitcoinj/core/Peer$9;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/core/Peer$9;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isNotFoundMessageSupported()Z
    .locals 2

    .line 1646
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget v0, v0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    sget v1, Lorg/bitcoinj/core/NotFoundMessage;->MIN_PROTOCOL_VERSION:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeHandleRequestedData(Lorg/bitcoinj/core/Message;)Z
    .locals 5

    .line 1148
    invoke-virtual {p1}, Lorg/bitcoinj/core/Message;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 1149
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Peer$GetDataRequest;

    .line 1150
    iget-object v4, v3, Lorg/bitcoinj/core/Peer$GetDataRequest;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v0, v4}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1151
    iget-object v2, v3, Lorg/bitcoinj/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 1152
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private maybeRestartChainDownload()V
    .locals 3

    .line 1746
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1748
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1777
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1750
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    if-nez v0, :cond_1

    .line 1752
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Lost download peer status whilst awaiting fresh filter."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->ping()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/core/Peer$11;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/Peer$11;-><init>(Lorg/bitcoinj/core/Peer;)V

    sget-object v2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1777
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private processAddressMessage(Lorg/bitcoinj/core/AddressMessage;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getAddrFutures:Ljava/util/LinkedList;

    monitor-enter v0

    .line 536
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getAddrFutures:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/SettableFuture;

    if-nez v1, :cond_0

    .line 538
    monitor-exit v0

    return-void

    .line 539
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 539
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private processPing(Lorg/bitcoinj/core/Ping;)V
    .locals 3

    .line 1614
    invoke-virtual {p1}, Lorg/bitcoinj/core/Ping;->hasNonce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    new-instance v0, Lorg/bitcoinj/core/Pong;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Ping;->getNonce()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Pong;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    :cond_0
    return-void
.end method

.method private processVersionAck(Lorg/bitcoinj/core/VersionAck;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 585
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    if-eqz p1, :cond_1

    .line 588
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->outgoingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    .line 591
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "{}: Outgoing version handshake complete."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->outgoingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 589
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    const-string v0, "got more than one version ack"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 586
    :cond_1
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    const-string v0, "got a version ack before version"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private processVersionMessage(Lorg/bitcoinj/core/VersionMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    if-nez v0, :cond_4

    .line 546
    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    .line 548
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v0, p1, Lorg/bitcoinj/core/VersionMessage;->time:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 549
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    iget-object v4, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget v4, v4, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    .line 551
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    iget-object v4, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-object v4, v4, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const/4 v4, 0x3

    iget-object v7, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v7, v7, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    .line 553
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v4

    const/4 v4, 0x4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    .line 554
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    const-string v0, "%tF %tT"

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v3, v1, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    .line 555
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "{}: Got version={}, subVer=\'{}\', services=0x{}, time={}, blocks={}"

    .line 549
    invoke-interface {p1, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    invoke-virtual {p1}, Lorg/bitcoinj/core/VersionMessage;->hasBlockChain()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 561
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->allowEmptyPeerChain()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 569
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "{}: Peer follows an incompatible block chain."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->close()V

    return-void

    .line 574
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v2, p1, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    cmp-long p1, v2, v0

    if-ltz p1, :cond_2

    .line 579
    new-instance p1, Lorg/bitcoinj/core/VersionAck;

    invoke-direct {p1}, Lorg/bitcoinj/core/VersionAck;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 580
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "{}: Incoming version handshake complete."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->incomingVersionHandshakeFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 576
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer reports invalid best height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v1, v1, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 563
    :cond_3
    :goto_0
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "{}: Peer does not have a copy of the block chain."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->close()V

    return-void

    .line 545
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    const-string v0, "Got two version messages from peer"

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendSingleGetData(Lorg/bitcoinj/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1336
    invoke-virtual {p1}, Lorg/bitcoinj/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1337
    new-instance v0, Lorg/bitcoinj/core/Peer$GetDataRequest;

    invoke-virtual {p1}, Lorg/bitcoinj/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/InventoryItem;

    iget-object v1, v1, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/Peer$GetDataRequest;-><init>(Lorg/bitcoinj/core/Sha256Hash;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 1338
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 1340
    iget-object p1, v0, Lorg/bitcoinj/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1
.end method

.method private versionHandshakeComplete()V
    .locals 4

    .line 596
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "{}: Handshake complete."

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->setTimeoutEnabled(Z)V

    .line 598
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 599
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/Peer$4;

    invoke-direct {v3, p0, v1}, Lorg/bitcoinj/core/Peer$4;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 608
    :cond_0
    iget v0, p0, Lorg/bitcoinj/core/Peer;->vMinProtocolVersion:I

    .line 609
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget v1, v1, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    if-ge v1, v0, :cond_1

    .line 610
    sget-object v1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget v2, v2, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    .line 611
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "Connected to a peer speaking protocol version {} but need {}, closing"

    .line 610
    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 612
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V
    .locals 1

    .line 306
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    return-void
.end method

.method public addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->chainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V
    .locals 1

    .line 316
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    return-void
.end method

.method public addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V
    .locals 1

    .line 326
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    return-void
.end method

.method public addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->disconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V
    .locals 1

    .line 336
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 272
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    .line 273
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    .line 274
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    .line 275
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 276
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    .line 277
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 284
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    .line 285
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    .line 286
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    .line 287
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 288
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    .line 289
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)V
    .locals 1

    .line 346
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    return-void
.end method

.method public addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->onTransactionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V
    .locals 1

    .line 356
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    return-void
.end method

.method public addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->preMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V
    .locals 1

    .line 366
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 1

    .line 1387
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connectionClosed()V
    .locals 4

    .line 419
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->disconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 420
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/Peer$3;

    invoke-direct {v3, p0, v1}, Lorg/bitcoinj/core/Peer$3;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public connectionOpened()V
    .locals 4

    .line 433
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v0

    .line 434
    sget-object v1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    if-nez v0, :cond_0

    const-string v0, "Peer"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-object v2, v2, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    const-string v3, "Announcing to {} as: {}"

    invoke-interface {v1, v3, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 436
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method public downloadDependencies(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .line 875
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    .line 876
    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 877
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: Downloading dependencies of {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 878
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 880
    iget v5, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    const/4 v6, 0x0

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    move-object v4, p0

    move-object v7, p1

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Lorg/bitcoinj/core/Peer;->downloadDependenciesInternal(IILorg/bitcoinj/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 882
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    .line 883
    new-instance v2, Lorg/bitcoinj/core/Peer$7;

    invoke-direct {v2, p0, v1, v0}, Lorg/bitcoinj/core/Peer$7;-><init>(Lorg/bitcoinj/core/Peer;Lcom/google/common/util/concurrent/SettableFuture;Ljava/util/LinkedList;)V

    invoke-static {p1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    return-object v1
.end method

.method protected downloadDependenciesInternal(IILorg/bitcoinj/core/Transaction;Ljava/lang/Object;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 901
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v10

    .line 902
    invoke-virtual/range {p3 .. p3}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    .line 908
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 909
    invoke-virtual/range {p3 .. p3}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 911
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 913
    :cond_0
    iget-object v1, v9, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x1

    .line 916
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 917
    new-instance v15, Lorg/bitcoinj/core/GetDataMessage;

    iget-object v2, v9, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v15, v2}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 918
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-le v2, v14, :cond_1

    .line 919
    sget-object v2, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "{}: Requesting {} transactions for depth {} dep resolution"

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v14

    add-int/lit8 v6, p2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-interface {v2, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 920
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Sha256Hash;

    .line 921
    invoke-virtual {v15, v2}, Lorg/bitcoinj/core/GetDataMessage;->addTransaction(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 922
    new-instance v4, Lorg/bitcoinj/core/Peer$GetDataRequest;

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/bitcoinj/core/Peer$GetDataRequest;-><init>(Lorg/bitcoinj/core/Sha256Hash;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 923
    iget-object v2, v4, Lorg/bitcoinj/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    iget-object v2, v9, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 926
    :cond_2
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->successfulAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 927
    new-instance v8, Lorg/bitcoinj/core/Peer$8;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p2

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object v11, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lorg/bitcoinj/core/Peer$8;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Sha256Hash;Ljava/util/List;IILjava/lang/Object;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-static {v0, v11}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 967
    invoke-virtual {v9, v15}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iget-object v0, v9, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v10

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 969
    :try_start_1
    sget-object v1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v2, "{}: Couldn\'t send getdata in downloadDependencies({})"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v9, v3, v12

    invoke-virtual/range {p3 .. p3}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    aput-object v4, v3, v14

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    invoke-virtual {v10, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 973
    iget-object v0, v9, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v10

    :goto_2
    iget-object v1, v9, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected endFilteredBlock(Lorg/bitcoinj/core/FilteredBlock;)V
    .locals 4

    .line 1041
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: Received broadcast filtered block {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1043
    :cond_0
    iget-boolean v0, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    if-nez v0, :cond_1

    .line 1044
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Sha256Hash;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{}: Received block we did not ask for: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez v0, :cond_2

    .line 1048
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "Received filtered block but was not configured with an AbstractBlockChain"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 1054
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getBlockHeader()Lorg/bitcoinj/core/Block;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1076
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1079
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Discarding block {} because we\'re still waiting for a fresh filter"

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1097
    :try_start_2
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 1085
    :cond_3
    :try_start_3
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->checkForFilterExhaustion(Lorg/bitcoinj/core/FilteredBlock;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1090
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Bloom filter exhausted whilst processing block {}, discarding"

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1091
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    .line 1092
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->awaitingFreshFilter:Ljava/util/List;

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->drainOrphanBlocks()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1097
    :try_start_4
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1100
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/FilteredBlock;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1102
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getBlockHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/core/Peer;->invokeOnBlocksDownloaded(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;)V

    goto :goto_0

    .line 1119
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1121
    :try_start_5
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->getOrphanRoot(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Block;

    .line 1122
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1124
    :try_start_6
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :catchall_1
    move-exception p1

    .line 1097
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_6
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 1134
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1129
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    const-string v2, "{}: FilteredBlock verification failed"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getAddr()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/AddressMessage;",
            ">;"
        }
    .end annotation

    .line 1345
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1346
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getAddrFutures:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1347
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->getAddrFutures:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1348
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    new-instance v1, Lorg/bitcoinj/core/GetAddrMessage;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2}, Lorg/bitcoinj/core/GetAddrMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1348
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBestHeight()J
    .locals 4

    .line 1680
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v0, v0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlock(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Block;",
            ">;"
        }
    .end annotation

    .line 1309
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Request to fetch block {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1310
    new-instance v0, Lorg/bitcoinj/core/GetDataMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 1311
    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/GetDataMessage;->addBlock(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 1312
    invoke-direct {p0, v0}, Lorg/bitcoinj/core/Peer;->sendSingleGetData(Lorg/bitcoinj/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getBloomFilter()Lorg/bitcoinj/core/BloomFilter;
    .locals 1

    .line 1786
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vBloomFilter:Lorg/bitcoinj/core/BloomFilter;

    return-object v0
.end method

.method public getConnectionOpenFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public getLastPingTime()J
    .locals 3

    .line 1585
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1587
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 1591
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    .line 1589
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPeerBlockHeightDifference()I
    .locals 5

    .line 1635
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    const-string v1, "No block chain configured"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getBestHeight()J

    move-result-wide v0

    long-to-int v1, v0

    .line 1641
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->allowEmptyPeerChain()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Connected to peer with zero/negative chain height"

    invoke-static {v0, v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getPeerMempoolTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 1327
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Request to fetch peer mempool tx  {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1328
    new-instance v0, Lorg/bitcoinj/core/GetDataMessage;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 1329
    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/GetDataMessage;->addTransaction(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 1330
    invoke-direct {p0, v0}, Lorg/bitcoinj/core/Peer;->sendSingleGetData(Lorg/bitcoinj/core/GetDataMessage;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;
    .locals 1

    .line 1668
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    return-object v0
.end method

.method public getPingTime()J
    .locals 7

    .line 1601
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1603
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 1609
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1606
    :try_start_1
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-wide v5, v2, v4

    add-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    long-to-double v0, v0

    .line 1607
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->lastPingTimes:[J

    array-length v2, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1609
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lastPingTimesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getUTXOs(Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutPoint;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/UTXOsMessage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1799
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/Peer;->getUTXOs(Ljava/util/List;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public getUTXOs(Ljava/util/List;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutPoint;",
            ">;Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/UTXOsMessage;",
            ">;"
        }
    .end annotation

    .line 1813
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1815
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v0

    .line 1816
    iget v1, v0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    const v2, 0x11172

    if-lt v1, v2, :cond_2

    .line 1818
    iget-wide v0, v0, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    const-wide/16 v2, 0x3

    and-long/2addr v0, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 1820
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1822
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getutxoFutures:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    .line 1823
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->getutxoFutures:Ljava/util/LinkedList;

    .line 1824
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getutxoFutures:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance v1, Lorg/bitcoinj/core/GetUTXOsMessage;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, p1, p2}, Lorg/bitcoinj/core/GetUTXOsMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;Z)V

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1819
    :cond_1
    :try_start_1
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    const-string p2, "Peer does not support getutxos protocol flag: find Bitcoin XT nodes."

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1817
    :cond_2
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    const-string p2, "Peer does not support getutxos protocol version"

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 1828
    iget-object p2, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getVersionHandshakeFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public getVersionMessage()Lorg/bitcoinj/core/VersionMessage;
    .locals 1

    .line 1673
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    return-object v0
.end method

.method public isDownloadData()Z
    .locals 1

    .line 1654
    iget-boolean v0, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    return v0
.end method

.method public isDownloadTxDependencies()Z
    .locals 1

    .line 1838
    iget v0, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ping()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 1567
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v0, v0, v2

    double-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/core/Peer;->ping(J)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected ping(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 1571
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    .line 1572
    invoke-virtual {v0}, Lorg/bitcoinj/core/VersionMessage;->isPingPongSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    new-instance v0, Lorg/bitcoinj/core/Peer$PendingPing;

    invoke-direct {v0, p0, p1, p2}, Lorg/bitcoinj/core/Peer$PendingPing;-><init>(Lorg/bitcoinj/core/Peer;J)V

    .line 1575
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1576
    new-instance p1, Lorg/bitcoinj/core/Ping;

    iget-wide v1, v0, Lorg/bitcoinj/core/Peer$PendingPing;->nonce:J

    invoke-direct {p1, v1, v2}, Lorg/bitcoinj/core/Ping;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 1577
    iget-object p1, v0, Lorg/bitcoinj/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p1

    .line 1573
    :cond_0
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Peer version is too low for measurable pings: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected processAlert(Lorg/bitcoinj/core/AlertMessage;)V
    .locals 2

    .line 652
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/AlertMessage;->isSignatureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Received alert from peer {}: {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 655
    :cond_0
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Received alert with invalid signature from peer {}: {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/AlertMessage;->getStatusBar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 661
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to check signature: bug in platform libraries?"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected processBlock(Lorg/bitcoinj/core/Block;)V
    .locals 4

    .line 979
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: Received broadcast block {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 983
    :cond_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->maybeHandleRequestedData(Lorg/bitcoinj/core/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 984
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez v0, :cond_2

    .line 985
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "Received block but was not configured with an AbstractBlockChain"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 989
    :cond_2
    iget-boolean v0, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    if-nez v0, :cond_3

    .line 990
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{}: Received block we did not ask for: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 993
    :cond_3
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 996
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/Block;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 998
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/Peer;->invokeOnBlocksDownloaded(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;)V

    goto :goto_1

    .line 1018
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :try_start_1
    iget-boolean v0, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    if-eqz v0, :cond_5

    .line 1021
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/AbstractBlockChain;->getOrphanRoot(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Block;

    .line 1022
    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V

    goto :goto_0

    .line 1024
    :cond_5
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "Did not start chain download on solved block due to in-flight header download."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    :goto_0
    :try_start_2
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 1035
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1032
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    const-string v2, "{}: Block verification failed"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected processGetData(Lorg/bitcoinj/core/GetDataMessage;)V
    .locals 5

    .line 748
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: Received getdata message: {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->getDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 751
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v4, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 752
    :cond_0
    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/GetDataEventListener;

    invoke-interface {v2, p0, p1}, Lorg/bitcoinj/core/listeners/GetDataEventListener;->getData(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 756
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 759
    :cond_3
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "{}: Sending {} items gathered from listeners to peer"

    invoke-interface {p1, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 760
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Message;

    .line 761
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected processHeaders(Lorg/bitcoinj/core/HeadersMessage;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ProtocolException;
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 677
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez v0, :cond_0

    .line 679
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "Received headers when Peer is not configured with a chain."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 685
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 682
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/bitcoinj/core/Peer;->fastCatchupTimeSecs:J

    .line 683
    iget-boolean v2, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 685
    iget-object v3, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 689
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    .line 690
    :goto_1
    invoke-virtual {p1}, Lorg/bitcoinj/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 691
    invoke-virtual {p1}, Lorg/bitcoinj/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Block;

    .line 695
    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-ltz v8, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 696
    :goto_2
    iget-object v7, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v7}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    iget-wide v9, v9, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    .line 698
    iget-boolean v6, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    if-nez v6, :cond_4

    .line 700
    sget-object p1, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v0, "Lost download peer status, throwing away downloaded headers."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void

    .line 703
    :cond_4
    iget-object v6, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v6, v5}, Lorg/bitcoinj/core/AbstractBlockChain;->add(Lorg/bitcoinj/core/Block;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    .line 705
    invoke-direct {p0, v5, v6}, Lorg/bitcoinj/core/Peer;->invokeOnBlocksDownloaded(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 710
    :cond_5
    new-instance p1, Lorg/bitcoinj/core/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got unconnected header from peer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_6
    iget-object v5, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 715
    :try_start_3
    sget-object v5, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v6, "Passed the fast catchup time ({}) at height {}, discarding {} headers and requesting full blocks"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v8, 0x3e8

    mul-long v0, v0, v8

    .line 717
    invoke-static {v0, v1}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v3

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v0

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v4

    const/4 v0, 0x2

    .line 718
    invoke-virtual {p1}, Lorg/bitcoinj/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v0

    .line 715
    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    iput-boolean v4, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    .line 721
    sget-object p1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->lastGetBlocksBegin:Lorg/bitcoinj/core/Sha256Hash;

    .line 722
    sget-object p1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 724
    :try_start_4
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 731
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/core/HeadersMessage;->getBlockHeaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_8

    .line 732
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_4
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 734
    :try_start_5
    sget-object p1, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 736
    :try_start_6
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
    :try_end_6
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/bitcoinj/core/PrunedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 743
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 740
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "Block header verification failed"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    return-void

    :catchall_2
    move-exception p1

    .line 685
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected processInv(Lorg/bitcoinj/core/InventoryMessage;)V
    .locals 11

    .line 1176
    invoke-virtual {p1}, Lorg/bitcoinj/core/InventoryMessage;->getItems()Ljava/util/List;

    move-result-object p1

    .line 1179
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1180
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/InventoryItem;

    .line 1183
    sget-object v4, Lorg/bitcoinj/core/Peer$12;->$SwitchMap$org$bitcoinj$core$InventoryItem$Type:[I

    iget-object v5, v2, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v5}, Lorg/bitcoinj/core/InventoryItem$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_1

    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    .line 1188
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lorg/bitcoinj/core/InventoryItem;->type:Lorg/bitcoinj/core/InventoryItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1185
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1195
    :cond_2
    iget-boolean p1, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    .line 1197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_3

    .line 1202
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz v2, :cond_3

    .line 1203
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/InventoryItem;

    iget-object v5, v5, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, v5}, Lorg/bitcoinj/core/AbstractBlockChain;->isOrphan(Lorg/bitcoinj/core/Sha256Hash;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1204
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_1

    .line 1207
    :cond_3
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->blocksAnnounced:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1211
    :cond_4
    :goto_1
    new-instance v2, Lorg/bitcoinj/core/GetDataMessage;

    iget-object v5, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v2, v5}, Lorg/bitcoinj/core/GetDataMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 1213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1214
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/InventoryItem;

    .line 1224
    iget-object v6, p0, Lorg/bitcoinj/core/Peer;->context:Lorg/bitcoinj/core/Context;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Context;->getConfidenceTable()Lorg/bitcoinj/core/TxConfidenceTable;

    move-result-object v6

    iget-object v7, v5, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/bitcoinj/core/TxConfidenceTable;->seen(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/PeerAddress;)Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v6

    .line 1225
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionConfidence;->numBroadcastPeers()I

    move-result v7

    if-le v7, v3, :cond_5

    .line 1227
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1228
    :cond_5
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v7

    sget-object v8, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v7, v8}, Lorg/bitcoinj/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1230
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1232
    :cond_6
    sget-object v7, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v8

    iget-object v9, v5, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const-string v10, "{}: getdata on tx {}"

    invoke-interface {v7, v10, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1233
    invoke-virtual {v2, v5}, Lorg/bitcoinj/core/GetDataMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    .line 1235
    iget-object v5, p0, Lorg/bitcoinj/core/Peer;->pendingTxDownloads:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1243
    :cond_7
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1245
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz p1, :cond_b

    .line 1249
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/InventoryItem;

    .line 1250
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    iget-object v5, v0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1, v5}, Lorg/bitcoinj/core/AbstractBlockChain;->isOrphan(Lorg/bitcoinj/core/Sha256Hash;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    if-eqz v1, :cond_9

    .line 1253
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    iget-object v0, v0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getOrphanRoot(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Block;

    .line 1254
    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V

    goto :goto_3

    .line 1268
    :cond_9
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    iget-object v5, v0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1269
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    invoke-virtual {v1}, Lorg/bitcoinj/core/VersionMessage;->isBloomFilteringSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/bitcoinj/core/Peer;->useFilteredBlocks:Z

    if-eqz v1, :cond_a

    .line 1270
    iget-object v1, v0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/GetDataMessage;->addFilteredBlock(Lorg/bitcoinj/core/Sha256Hash;)V

    const/4 v4, 0x1

    goto :goto_4

    .line 1273
    :cond_a
    invoke-virtual {v2, v0}, Lorg/bitcoinj/core/GetDataMessage;->addItem(Lorg/bitcoinj/core/InventoryItem;)V

    .line 1275
    :goto_4
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->pendingBlockDownloads:Ljava/util/HashSet;

    iget-object v0, v0, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1286
    :cond_b
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1289
    invoke-virtual {v2}, Lorg/bitcoinj/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1291
    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    :cond_c
    if-eqz v4, :cond_d

    .line 1295
    new-instance p1, Lorg/bitcoinj/core/Ping;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v0, v0, v2

    double-to-long v0, v0

    invoke-direct {p1, v0, v1}, Lorg/bitcoinj/core/Ping;-><init>(J)V

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    :cond_d
    return-void

    :catchall_0
    move-exception p1

    .line 1286
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected processMessage(Lorg/bitcoinj/core/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->preMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 460
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v3, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v2, v3, :cond_0

    .line 461
    iget-object v1, v1, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    invoke-interface {v1, p0, p1}, Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;->onPreMessageReceived(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Message;)Lorg/bitcoinj/core/Message;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    if-eqz v0, :cond_3

    instance-of v1, p1, Lorg/bitcoinj/core/Transaction;

    if-nez v1, :cond_3

    .line 470
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->endFilteredBlock(Lorg/bitcoinj/core/FilteredBlock;)V

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    .line 475
    :cond_3
    instance-of v0, p1, Lorg/bitcoinj/core/VersionMessage;

    if-nez v0, :cond_5

    instance-of v1, p1, Lorg/bitcoinj/core/VersionAck;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 476
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->versionHandshakeFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 477
    :cond_4
    new-instance v0, Lorg/bitcoinj/core/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before version handshake is complete."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_5
    :goto_0
    instance-of v1, p1, Lorg/bitcoinj/core/Ping;

    if-eqz v1, :cond_6

    .line 481
    check-cast p1, Lorg/bitcoinj/core/Ping;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->processPing(Lorg/bitcoinj/core/Ping;)V

    goto/16 :goto_1

    .line 482
    :cond_6
    instance-of v1, p1, Lorg/bitcoinj/core/Pong;

    if-eqz v1, :cond_7

    .line 483
    check-cast p1, Lorg/bitcoinj/core/Pong;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processPong(Lorg/bitcoinj/core/Pong;)V

    goto/16 :goto_1

    .line 484
    :cond_7
    instance-of v1, p1, Lorg/bitcoinj/core/NotFoundMessage;

    if-eqz v1, :cond_8

    .line 487
    check-cast p1, Lorg/bitcoinj/core/NotFoundMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processNotFoundMessage(Lorg/bitcoinj/core/NotFoundMessage;)V

    goto/16 :goto_1

    .line 488
    :cond_8
    instance-of v1, p1, Lorg/bitcoinj/core/InventoryMessage;

    if-eqz v1, :cond_9

    .line 489
    check-cast p1, Lorg/bitcoinj/core/InventoryMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processInv(Lorg/bitcoinj/core/InventoryMessage;)V

    goto/16 :goto_1

    .line 490
    :cond_9
    instance-of v1, p1, Lorg/bitcoinj/core/Block;

    if-eqz v1, :cond_a

    .line 491
    check-cast p1, Lorg/bitcoinj/core/Block;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processBlock(Lorg/bitcoinj/core/Block;)V

    goto/16 :goto_1

    .line 492
    :cond_a
    instance-of v1, p1, Lorg/bitcoinj/core/FilteredBlock;

    if-eqz v1, :cond_b

    .line 493
    check-cast p1, Lorg/bitcoinj/core/FilteredBlock;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->startFilteredBlock(Lorg/bitcoinj/core/FilteredBlock;)V

    goto/16 :goto_1

    .line 494
    :cond_b
    instance-of v1, p1, Lorg/bitcoinj/core/Transaction;

    if-eqz v1, :cond_c

    .line 495
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processTransaction(Lorg/bitcoinj/core/Transaction;)V

    goto/16 :goto_1

    .line 496
    :cond_c
    instance-of v1, p1, Lorg/bitcoinj/core/GetDataMessage;

    if-eqz v1, :cond_d

    .line 497
    check-cast p1, Lorg/bitcoinj/core/GetDataMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processGetData(Lorg/bitcoinj/core/GetDataMessage;)V

    goto :goto_1

    .line 498
    :cond_d
    instance-of v1, p1, Lorg/bitcoinj/core/AddressMessage;

    if-eqz v1, :cond_e

    .line 502
    check-cast p1, Lorg/bitcoinj/core/AddressMessage;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->processAddressMessage(Lorg/bitcoinj/core/AddressMessage;)V

    goto :goto_1

    .line 503
    :cond_e
    instance-of v1, p1, Lorg/bitcoinj/core/HeadersMessage;

    if-eqz v1, :cond_f

    .line 504
    check-cast p1, Lorg/bitcoinj/core/HeadersMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processHeaders(Lorg/bitcoinj/core/HeadersMessage;)V

    goto :goto_1

    .line 505
    :cond_f
    instance-of v1, p1, Lorg/bitcoinj/core/AlertMessage;

    if-eqz v1, :cond_10

    .line 506
    check-cast p1, Lorg/bitcoinj/core/AlertMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processAlert(Lorg/bitcoinj/core/AlertMessage;)V

    goto :goto_1

    :cond_10
    if-eqz v0, :cond_11

    .line 508
    check-cast p1, Lorg/bitcoinj/core/VersionMessage;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->processVersionMessage(Lorg/bitcoinj/core/VersionMessage;)V

    goto :goto_1

    .line 509
    :cond_11
    instance-of v0, p1, Lorg/bitcoinj/core/VersionAck;

    if-eqz v0, :cond_12

    .line 510
    check-cast p1, Lorg/bitcoinj/core/VersionAck;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->processVersionAck(Lorg/bitcoinj/core/VersionAck;)V

    goto :goto_1

    .line 511
    :cond_12
    instance-of v0, p1, Lorg/bitcoinj/core/UTXOsMessage;

    if-eqz v0, :cond_13

    .line 512
    check-cast p1, Lorg/bitcoinj/core/UTXOsMessage;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->processUTXOMessage(Lorg/bitcoinj/core/UTXOsMessage;)V

    goto :goto_1

    .line 513
    :cond_13
    instance-of v0, p1, Lorg/bitcoinj/core/RejectMessage;

    if-eqz v0, :cond_14

    .line 514
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v3

    iget-object v3, v3, Lorg/bitcoinj/core/VersionMessage;->subVer:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "{} {}: Received {}"

    invoke-interface {v0, p1, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 516
    :cond_14
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "{}: Received unhandled message: {}"

    invoke-interface {v0, v1, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected processNotFoundMessage(Lorg/bitcoinj/core/NotFoundMessage;)V
    .locals 5

    .line 638
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer$GetDataRequest;

    .line 639
    invoke-virtual {p1}, Lorg/bitcoinj/core/NotFoundMessage;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/InventoryItem;

    .line 640
    iget-object v3, v3, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    iget-object v4, v1, Lorg/bitcoinj/core/Peer$GetDataRequest;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    sget-object v2, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    iget-object v3, v1, Lorg/bitcoinj/core/Peer$GetDataRequest;->hash:Lorg/bitcoinj/core/Sha256Hash;

    const-string v4, "{}: Bottomed out dep tree at {}"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    iget-object v2, v1, Lorg/bitcoinj/core/Peer$GetDataRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 643
    iget-object v2, p0, Lorg/bitcoinj/core/Peer;->getDataFutures:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected processPong(Lorg/bitcoinj/core/Pong;)V
    .locals 7

    .line 1620
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer$PendingPing;

    .line 1621
    invoke-virtual {p1}, Lorg/bitcoinj/core/Pong;->getNonce()J

    move-result-wide v2

    iget-wide v4, v1, Lorg/bitcoinj/core/Peer$PendingPing;->nonce:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1622
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->pendingPings:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1624
    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer$PendingPing;->complete()V

    :cond_1
    return-void
.end method

.method protected processTransaction(Lorg/bitcoinj/core/Transaction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 767
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 768
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 770
    :try_start_0
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v1, "{}: Received tx {}"

    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 778
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    .line 779
    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->NETWORK:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 780
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->pendingTxDownloads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 781
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/Peer;->maybeHandleRequestedData(Lorg/bitcoinj/core/Message;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 844
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 784
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 785
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/FilteredBlock;->provideTransaction(Lorg/bitcoinj/core/Transaction;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 787
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->endFilteredBlock(Lorg/bitcoinj/core/FilteredBlock;)V

    .line 788
    iput-object v1, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Wallet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    :try_start_2
    invoke-virtual {v2, p1}, Lorg/bitcoinj/wallet/Wallet;->isPendingTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 798
    iget v3, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    if-lez v3, :cond_4

    .line 814
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->downloadDependencies(Lorg/bitcoinj/core/Transaction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v4, Lorg/bitcoinj/core/Peer$5;

    invoke-direct {v4, p0, v2, p1}, Lorg/bitcoinj/core/Peer$5;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V

    invoke-static {v3, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_1

    .line 835
    :cond_4
    invoke-virtual {v2, p1, v1}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 839
    :try_start_3
    sget-object v3, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const-string v4, "Wallet failed to verify tx"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 844
    :cond_5
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 848
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->onTransactionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 849
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/Peer$6;

    invoke-direct {v3, p0, v1, p1}, Lorg/bitcoinj/core/Peer$6;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 844
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected processUTXOMessage(Lorg/bitcoinj/core/UTXOsMessage;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getutxoFutures:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getutxoFutures:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 527
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 527
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->chainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->disconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    .line 296
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    .line 297
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    .line 298
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z

    .line 299
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    .line 300
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z

    .line 301
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    return-void
.end method

.method public removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z
    .locals 1

    .line 391
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->getDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->onTransactionEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->preMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBloomFilter(Lorg/bitcoinj/core/BloomFilter;)V
    .locals 1

    const/4 v0, 0x1

    .line 1715
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/Peer;->setBloomFilter(Lorg/bitcoinj/core/BloomFilter;Z)V

    return-void
.end method

.method public setBloomFilter(Lorg/bitcoinj/core/BloomFilter;Z)V
    .locals 3

    const-string v0, "Clearing filters is not currently supported"

    .line 1733
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->vPeerVersionMessage:Lorg/bitcoinj/core/VersionMessage;

    if-eqz v0, :cond_3

    .line 1735
    invoke-virtual {v0}, Lorg/bitcoinj/core/VersionMessage;->isBloomFilteringSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1737
    :cond_0
    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->vBloomFilter:Lorg/bitcoinj/core/BloomFilter;

    .line 1738
    sget-object v0, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    if-eqz p2, :cond_1

    const-string v1, " and querying mempool"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v2, "{}: Sending Bloom filter{}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1739
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    if-eqz p2, :cond_2

    .line 1741
    new-instance p1, Lorg/bitcoinj/core/MemoryPoolMessage;

    invoke-direct {p1}, Lorg/bitcoinj/core/MemoryPoolMessage;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    .line 1742
    :cond_2
    invoke-direct {p0}, Lorg/bitcoinj/core/Peer;->maybeRestartChainDownload()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setDownloadData(Z)V
    .locals 0

    .line 1663
    iput-boolean p1, p0, Lorg/bitcoinj/core/Peer;->vDownloadData:Z

    return-void
.end method

.method public setDownloadParameters(JZ)V
    .locals 3

    .line 1363
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 1366
    :try_start_0
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/core/Peer;->fastCatchupTimeSecs:J

    const/4 p1, 0x1

    .line 1367
    iput-boolean p1, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    goto :goto_0

    .line 1369
    :cond_0
    iput-wide p1, p0, Lorg/bitcoinj/core/Peer;->fastCatchupTimeSecs:J

    .line 1372
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->blockChain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getChainHead()Lorg/bitcoinj/core/StoredBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const/4 p1, 0x0

    .line 1373
    iput-boolean p1, p0, Lorg/bitcoinj/core/Peer;->downloadBlockBodies:Z

    .line 1375
    :cond_1
    :goto_0
    iput-boolean p3, p0, Lorg/bitcoinj/core/Peer;->useFilteredBlocks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDownloadTxDependencies(I)V
    .locals 0

    .line 1856
    iput p1, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    return-void
.end method

.method public setDownloadTxDependencies(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1847
    :goto_0
    iput p1, p0, Lorg/bitcoinj/core/Peer;->vDownloadTxDependencyDepth:I

    return-void
.end method

.method public setMinProtocolVersion(I)Z
    .locals 4

    .line 1689
    iput p1, p0, Lorg/bitcoinj/core/Peer;->vMinProtocolVersion:I

    .line 1690
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1691
    iget v2, v0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    if-ge v2, p1, :cond_0

    .line 1692
    sget-object v2, Lorg/bitcoinj/core/Peer;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const/4 p1, 0x2

    iget v0, v0, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "{}: Disconnecting due to new min protocol version {}, got: {}"

    invoke-interface {v2, p1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1693
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->close()V

    :cond_0
    return v1
.end method

.method public startBlockChainDownload()V
    .locals 5

    const/4 v0, 0x1

    .line 1493
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/Peer;->setDownloadData(Z)V

    .line 1496
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getPeerBlockHeightDifference()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1498
    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->chainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1499
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/bitcoinj/core/Peer$10;

    invoke-direct {v4, p0, v2, v0}, Lorg/bitcoinj/core/Peer$10;-><init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1507
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1509
    :try_start_0
    sget-object v0, Lorg/bitcoinj/core/Sha256Hash;->ZERO_HASH:Lorg/bitcoinj/core/Sha256Hash;

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/Peer;->blockChainDownloadLocked(Lorg/bitcoinj/core/Sha256Hash;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/Peer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method protected startFilteredBlock(Lorg/bitcoinj/core/FilteredBlock;)V
    .locals 1

    .line 621
    iput-object p1, p0, Lorg/bitcoinj/core/Peer;->currentFilteredBlock:Lorg/bitcoinj/core/FilteredBlock;

    .line 625
    iget p1, p0, Lorg/bitcoinj/core/Peer;->filteredBlocksReceived:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bitcoinj/core/Peer;->filteredBlocksReceived:I

    .line 626
    rem-int/lit16 p1, p1, 0x61a8

    const/16 v0, 0x61a7

    if-ne p1, v0, :cond_0

    .line 627
    iget-object p1, p0, Lorg/bitcoinj/core/Peer;->vBloomFilter:Lorg/bitcoinj/core/BloomFilter;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    :cond_0
    return-void
.end method

.method protected timeoutOccurred()V
    .locals 1

    .line 411
    invoke-super {p0}, Lorg/bitcoinj/core/PeerSocketHandler;->timeoutOccurred()V

    .line 412
    iget-object v0, p0, Lorg/bitcoinj/core/Peer;->connectionOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->connectionClosed()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 404
    invoke-virtual {p0}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Peer()"

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerAddress;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
