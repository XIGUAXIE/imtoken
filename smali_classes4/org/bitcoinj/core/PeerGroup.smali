.class public Lorg/bitcoinj/core/PeerGroup;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Lorg/bitcoinj/core/TransactionBroadcaster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;,
        Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;,
        Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;,
        Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;,
        Lorg/bitcoinj/core/PeerGroup$PeerListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BLOOM_FILTER_FP_RATE:D = 1.0E-5

.field public static final DEFAULT_CONNECTIONS:I = 0xc

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1388

.field private static final DEFAULT_PEER_DISCOVERY_TIMEOUT_MILLIS:J = 0x1388L

.field public static final DEFAULT_PING_INTERVAL_MSEC:J = 0x7d0L

.field public static final MAX_FP_RATE_INCREASE:D = 10.0

.field private static final TOR_TIMEOUT_SECONDS:I = 0x3c

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final backoffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/PeerAddress;",
            "Lorg/bitcoinj/utils/ExponentialBackoff;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

.field protected final chain:Lorg/bitcoinj/core/AbstractBlockChain;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private chainDownloadSpeedCalculator:Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final channels:Lorg/bitcoinj/net/ClientConnectionManager;

.field private downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private downloadPeer:Lorg/bitcoinj/core/Peer;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private downloadTxDependencyDepth:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field protected final executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field private executorStartupLatch:Ljava/util/concurrent/CountDownLatch;

.field private fastCatchupTimeSecs:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private groupBackoff:Lorg/bitcoinj/utils/ExponentialBackoff;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final inFlightRecalculations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/core/BloomFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inactives:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lorg/bitcoinj/core/PeerAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private ipv6Unreachable:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private localhostCheckState:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private maxConnections:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private minBroadcastConnections:I

.field protected final params:Lorg/bitcoinj/core/NetworkParameters;

.field private final peerBackoffParams:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

.field protected final peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final peerDisconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final peerDiscoveredEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lorg/bitcoinj/net/discovery/PeerDiscovery;",
            ">;"
        }
    .end annotation
.end field

.field private final peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/PeerFilterProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/GetDataEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

.field private final peers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private final peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation
.end field

.field private pingIntervalMsec:J
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private requiredServices:J

.field private final runningBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/TransactionBroadcast;",
            ">;"
        }
    .end annotation
.end field

.field private stallMinSpeedBytesSec:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private stallPeriodSeconds:I
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final startupListener:Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;

.field private final torClient:Lcom/subgraph/orchid/TorClient;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private triggerConnectionsJob:Ljava/lang/Runnable;

.field private useLocalhostPeerWhenPossible:Z
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private volatile vBloomFilteringEnabled:Z

.field private volatile vConnectTimeoutMillis:I

.field private volatile vMaxPeersToDiscoverCount:I

.field private volatile vMinRequiredProtocolVersion:I

.field private volatile vPeerDiscoveryTimeoutMillis:J

.field private volatile vPingTask:Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile vRunning:Z

.field private volatile vUsedUp:Z

.field private versionMessage:Lorg/bitcoinj/core/VersionMessage;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final walletCoinsReceivedEventListener:Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;

.field private final walletKeyEventListener:Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

.field private final walletScriptEventListener:Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;

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

    .line 73
    const-class v0, Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 301
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;)V
    .locals 1
    .param p2    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 314
    new-instance v0, Lorg/bitcoinj/net/NioClientManager;

    invoke-direct {v0}, Lorg/bitcoinj/net/NioClientManager;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;)V
    .locals 1
    .param p2    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V
    .locals 10
    .param p2    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/subgraph/orchid/TorClient;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lorg/bitcoinj/core/PeerGroup;->requiredServices:J

    const/16 v0, 0x64

    .line 88
    iput v0, p0, Lorg/bitcoinj/core/PeerGroup;->vMaxPeersToDiscoverCount:I

    const-wide/16 v0, 0x1388

    .line 90
    iput-wide v0, p0, Lorg/bitcoinj/core/PeerGroup;->vPeerDiscoveryTimeoutMillis:J

    const-string v0, "peergroup"

    .line 92
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 122
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 124
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 127
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoveredEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDisconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-wide/16 v0, 0x7d0

    .line 156
    iput-wide v0, p0, Lorg/bitcoinj/core/PeerGroup;->pingIntervalMsec:J

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->useLocalhostPeerWhenPossible:Z

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lorg/bitcoinj/core/PeerGroup;->ipv6Unreachable:Z

    .line 167
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$PeerListener;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/PeerGroup$PeerListener;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

    .line 169
    iput v1, p0, Lorg/bitcoinj/core/PeerGroup;->minBroadcastConnections:I

    .line 170
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$1;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/PeerGroup$1;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->walletScriptEventListener:Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;

    .line 176
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$2;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/PeerGroup$2;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->walletKeyEventListener:Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

    .line 182
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$3;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/PeerGroup$3;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->walletCoinsReceivedEventListener:Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;

    .line 220
    new-instance v2, Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3fc00000    # 1.5f

    const-wide/32 v7, 0x927c0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lorg/bitcoinj/utils/ExponentialBackoff$Params;-><init>(JFJ)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerBackoffParams:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    .line 222
    new-instance v2, Lorg/bitcoinj/utils/ExponentialBackoff;

    new-instance v9, Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    const-wide/16 v7, 0x2710

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lorg/bitcoinj/utils/ExponentialBackoff$Params;-><init>(JFJ)V

    invoke-direct {v2, v9}, Lorg/bitcoinj/utils/ExponentialBackoff;-><init>(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->groupBackoff:Lorg/bitcoinj/utils/ExponentialBackoff;

    .line 266
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$1;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->startupListener:Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;

    const/16 v2, 0x1388

    .line 285
    iput v2, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    .line 288
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vBloomFilteringEnabled:Z

    .line 443
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->executorStartupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 503
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$6;

    invoke-direct {v2, p0}, Lorg/bitcoinj/core/PeerGroup$6;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->triggerConnectionsJob:Ljava/lang/Runnable;

    .line 1092
    sget-object v2, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_TRIED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->localhostCheckState:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    .line 1331
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    const/16 v2, 0xa

    .line 1835
    iput v2, p0, Lorg/bitcoinj/core/PeerGroup;->stallPeriodSeconds:I

    const/16 v2, 0x640

    .line 1836
    iput v2, p0, Lorg/bitcoinj/core/PeerGroup;->stallMinSpeedBytesSec:I

    .line 399
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 401
    iput-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    .line 402
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getGenesisBlock()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/core/PeerGroup;->fastCatchupTimeSecs:J

    .line 403
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 404
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 405
    iput-object p4, p0, Lorg/bitcoinj/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    .line 407
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->createPrivateExecutor()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 412
    iput v1, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p2}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    .line 415
    :goto_0
    new-instance p1, Lorg/bitcoinj/core/VersionMessage;

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p1, p2, v1}, Lorg/bitcoinj/core/VersionMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;I)V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->versionMessage:Lorg/bitcoinj/core/VersionMessage;

    .line 417
    iput-boolean v0, p1, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    const p1, 0x7fffffff

    .line 419
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadTxDependencyDepth:I

    .line 421
    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lorg/bitcoinj/core/PeerGroup$4;

    invoke-direct {p2, p0}, Lorg/bitcoinj/core/PeerGroup$4;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    invoke-direct {p1, v0, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    .line 433
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    .line 434
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 435
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 436
    iput-object p3, p0, Lorg/bitcoinj/core/PeerGroup;->channels:Lorg/bitcoinj/net/ClientConnectionManager;

    .line 437
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 438
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    .line 439
    new-instance p1, Lorg/bitcoinj/net/FilterMerger;

    const-wide p2, 0x3ee4f8b588e368f1L    # 1.0E-5

    invoke-direct {p1, p2, p3}, Lorg/bitcoinj/net/FilterMerger;-><init>(D)V

    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    .line 440
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object p2, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result p1

    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->vMinRequiredProtocolVersion:I

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 1

    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;)V
    .locals 1
    .param p2    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 306
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    new-instance v0, Lorg/bitcoinj/net/NioClientManager;

    invoke-direct {v0}, Lorg/bitcoinj/net/NioClientManager;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;)V
    .locals 1
    .param p2    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 383
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->handleGetData(Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/FilterMerger;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/PriorityQueue;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/bitcoinj/core/PeerGroup;)I
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->countConnectedAndPendingPeers()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/utils/ExponentialBackoff;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->groupBackoff:Lorg/bitcoinj/utils/ExponentialBackoff;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/bitcoinj/core/PeerGroup;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/bitcoinj/core/PeerGroup;->ipv6Unreachable:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/bitcoinj/core/PeerGroup;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    return p0
.end method

.method static synthetic access$1500(Lorg/bitcoinj/core/PeerGroup;)Lcom/subgraph/orchid/TorClient;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/bitcoinj/core/PeerGroup;)Lorg/bitcoinj/net/ClientConnectionManager;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->channels:Lorg/bitcoinj/net/ClientConnectionManager;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->triggerConnections()V

    return-void
.end method

.method static synthetic access$1800(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->setupPinging()V

    return-void
.end method

.method static synthetic access$1900(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .line 72
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/bitcoinj/core/PeerGroup;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/bitcoinj/core/PeerGroup;->vBloomFilteringEnabled:Z

    return p0
.end method

.method static synthetic access$2100(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/bitcoinj/core/PeerGroup;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->vPingTask:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/bitcoinj/core/PeerGroup;Lcom/google/common/util/concurrent/ListenableScheduledFuture;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->vPingTask:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/bitcoinj/core/PeerGroup;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/bitcoinj/core/PeerGroup;->stallMinSpeedBytesSec:I

    return p0
.end method

.method static synthetic access$2600(Lorg/bitcoinj/core/PeerGroup;)I
    .locals 0

    .line 72
    iget p0, p0, Lorg/bitcoinj/core/PeerGroup;->stallPeriodSeconds:I

    return p0
.end method

.method static synthetic access$2800(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Set;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$2900(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/Map;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/bitcoinj/core/PeerGroup;->executorStartupLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$600(Lorg/bitcoinj/core/PeerGroup;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    return p0
.end method

.method static synthetic access$602(Lorg/bitcoinj/core/PeerGroup;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    return p1
.end method

.method static synthetic access$700(Lorg/bitcoinj/core/PeerGroup;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lorg/bitcoinj/core/PeerGroup;->useLocalhostPeerWhenPossible:Z

    return p0
.end method

.method static synthetic access$800(Lorg/bitcoinj/core/PeerGroup;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->maybeCheckForLocalhostPeer()Z

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lorg/bitcoinj/core/PeerGroup;I)I
    .locals 0

    .line 72
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    return p1
.end method

.method private static addDataEventListenerToPeer(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V
    .locals 0

    .line 1565
    invoke-virtual {p1, p0, p2}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 1566
    invoke-virtual {p1, p0, p2}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    .line 1567
    invoke-virtual {p1, p0, p2}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 1568
    invoke-virtual {p1, p0, p2}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method private addInactive(Lorg/bitcoinj/core/PeerAddress;)V
    .locals 3

    .line 991
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 994
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 999
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 996
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    new-instance v1, Lorg/bitcoinj/utils/ExponentialBackoff;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerBackoffParams:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-direct {v1, v2}, Lorg/bitcoinj/utils/ExponentialBackoff;-><init>(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 999
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private countConnectedAndPendingPeers()I
    .locals 2

    .line 1078
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1080
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 1082
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static getMostCommonChainHeight(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;)I"
        }
    .end annotation

    .line 2271
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2273
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2274
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer;->getBestHeight()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2275
    :cond_1
    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->maxOfMostFreq(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private handleGetData(Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/GetDataMessage;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Message;",
            ">;"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 620
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 621
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lorg/bitcoinj/core/GetDataMessage;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 622
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 623
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 624
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/InventoryItem;

    .line 626
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Wallet;

    .line 627
    iget-object v4, v1, Lorg/bitcoinj/core/InventoryItem;->hash:Lorg/bitcoinj/core/Sha256Hash;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/wallet/Wallet;->getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 629
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 636
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private maybeCheckForLocalhostPeer()Z
    .locals 5

    .line 1095
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1096
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->localhostCheckState:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    sget-object v1, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_TRIED:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1100
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1101
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v2, "127.0.0.1"

    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v3}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v3

    invoke-direct {v0, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v2, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1102
    sget-object v0, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->FOUND:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->localhostCheckState:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    .line 1110
    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 1105
    :catch_2
    :goto_0
    :try_start_3
    sget-object v1, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Localhost peer not detected."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1106
    sget-object v1, Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;->NOT_THERE:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;

    iput-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->localhostCheckState:Lorg/bitcoinj/core/PeerGroup$LocalhostCheckState;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 1110
    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1113
    :catch_3
    :cond_0
    throw v0

    :catch_4
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static newWithTor(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lorg/bitcoinj/core/PeerGroup;
    .locals 1
    .param p1    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerGroup;->newWithTor(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;Z)Lorg/bitcoinj/core/PeerGroup;

    move-result-object p0

    return-object p0
.end method

.method public static newWithTor(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;Z)Lorg/bitcoinj/core/PeerGroup;
    .locals 5
    .param p1    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 355
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-static {}, Lorg/bitcoinj/crypto/DRMWorkaround;->maybeDisableExportControls()V

    .line 357
    new-instance v0, Lorg/bitcoinj/net/BlockingClientManager;

    invoke-virtual {p2}, Lcom/subgraph/orchid/TorClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/net/BlockingClientManager;-><init>(Ljavax/net/SocketFactory;)V

    const v1, 0xea60

    .line 359
    invoke-virtual {v0, v1}, Lorg/bitcoinj/net/BlockingClientManager;->setConnectTimeoutMillis(I)V

    .line 360
    new-instance v2, Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {v2, p0, p1, v0, p2}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/net/ClientConnectionManager;Lcom/subgraph/orchid/TorClient;)V

    .line 361
    invoke-virtual {v2, v1}, Lorg/bitcoinj/core/PeerGroup;->setConnectTimeoutMillis(I)V

    if-eqz p3, :cond_2

    .line 364
    invoke-virtual {p0}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getHttpSeeds()[Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    move-result-object p1

    .line 366
    array-length p3, p1

    if-lez p3, :cond_1

    .line 368
    new-instance p3, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {p3}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 369
    invoke-virtual {p2}, Lcom/subgraph/orchid/TorClient;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/squareup/okhttp/OkHttpClient;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 370
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 371
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 372
    new-instance v4, Lorg/bitcoinj/net/discovery/HttpDiscovery;

    invoke-direct {v4, p0, v3, p3}, Lorg/bitcoinj/net/discovery/HttpDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;Lcom/squareup/okhttp/OkHttpClient;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    :cond_0
    new-instance p1, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

    invoke-direct {p1, p0, p2}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)V

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/PeerGroup;->addPeerDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)V

    goto :goto_1

    .line 375
    :cond_1
    new-instance p1, Lorg/bitcoinj/net/discovery/TorDiscovery;

    invoke-direct {p1, p0, p2}, Lorg/bitcoinj/net/discovery/TorDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lcom/subgraph/orchid/TorClient;)V

    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/PeerGroup;->addPeerDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static newWithTor(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lorg/bitcoinj/core/PeerGroup;
    .locals 0
    .param p1    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 319
    invoke-static {p0}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/bitcoinj/core/PeerGroup;->newWithTor(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object p0

    return-object p0
.end method

.method private static removeDataEventListenerFromPeer(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V
    .locals 0

    .line 1577
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    .line 1578
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    .line 1579
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    .line 1580
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    return-void
.end method

.method private setDownloadPeer(Lorg/bitcoinj/core/Peer;)V
    .locals 5
    .param p1    # Lorg/bitcoinj/core/Peer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1692
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1694
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 1714
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1696
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1697
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Unsetting download peer: {}"

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1698
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    if-eqz v0, :cond_1

    .line 1699
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    invoke-static {v0, v2}, Lorg/bitcoinj/core/PeerGroup;->removeDataEventListenerFromPeer(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    .line 1701
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Peer;->setDownloadData(Z)V

    .line 1703
    :cond_2
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    if-eqz p1, :cond_5

    .line 1705
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Setting download peer: {}"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1706
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    if-eqz v0, :cond_3

    .line 1707
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    invoke-static {v0, p1, v2}, Lorg/bitcoinj/core/PeerGroup;->addDataEventListenerToPeer(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    .line 1709
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->setDownloadData(Z)V

    .line 1710
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz p1, :cond_5

    .line 1711
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    iget-wide v2, p0, Lorg/bitcoinj/core/PeerGroup;->fastCatchupTimeSecs:J

    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    invoke-virtual {v4}, Lorg/bitcoinj/net/FilterMerger;->getLastFilter()Lorg/bitcoinj/core/BloomFilter;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v2, v3, v1}, Lorg/bitcoinj/core/Peer;->setDownloadParameters(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    :cond_5
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private setupPinging()V
    .locals 12

    .line 1664
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 1667
    :cond_0
    iget-object v5, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    new-instance v6, Lorg/bitcoinj/core/PeerGroup$12;

    invoke-direct {v6, p0}, Lorg/bitcoinj/core/PeerGroup$12;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    .line 1688
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPingIntervalMsec()J

    move-result-wide v9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1667
    invoke-interface/range {v5 .. v11}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->vPingTask:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    return-void
.end method

.method private startBlockChainDownloadFromPeer(Lorg/bitcoinj/core/Peer;)V
    .locals 8

    .line 1977
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1979
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->setDownloadPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1981
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chainDownloadSpeedCalculator:Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;

    if-nez v0, :cond_0

    .line 1983
    new-instance v2, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$1;)V

    iput-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->chainDownloadSpeedCalculator:Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;

    .line 1984
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    .line 1986
    :cond_0
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->chainDownloadSpeedCalculator:Lorg/bitcoinj/core/PeerGroup$ChainDownloadSpeedCalculator;

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 1989
    invoke-virtual {p1}, Lorg/bitcoinj/core/Peer;->startBlockChainDownload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private triggerConnections()V
    .locals 2

    .line 601
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->triggerConnectionsJob:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateVersionMessageRelayTxesBeforeFilter(Lorg/bitcoinj/core/VersionMessage;)V
    .locals 3

    .line 691
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 693
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vBloomFilteringEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 695
    :goto_2
    iput-boolean v1, p1, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method


# virtual methods
.method public addAddress(Ljava/net/InetAddress;)V
    .locals 3

    .line 1021
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerGroup;->addAddress(Lorg/bitcoinj/core/PeerAddress;)V

    return-void
.end method

.method public addAddress(Lorg/bitcoinj/core/PeerAddress;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 982
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->addInactive(Lorg/bitcoinj/core/PeerAddress;)V

    .line 983
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    .line 985
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 987
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->setMaxConnections(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 985
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V
    .locals 3

    .line 748
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 750
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 752
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V
    .locals 1

    .line 739
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    return-void
.end method

.method public addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V
    .locals 3

    .line 765
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 767
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 769
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V
    .locals 1

    .line 757
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    return-void
.end method

.method public addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V
    .locals 3

    .line 782
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 784
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 786
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V
    .locals 1

    .line 774
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    return-void
.end method

.method public addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V
    .locals 3

    .line 799
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDisconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 800
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 801
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 803
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V
    .locals 1

    .line 791
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    return-void
.end method

.method public addDiscoveredEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)V
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoveredEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDiscoveredEventListener(Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)V
    .locals 1

    .line 808
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addDiscoveredEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 728
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    .line 729
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    .line 730
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    .line 731
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addDiscoveredEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)V

    .line 732
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 733
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    .line 734
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 714
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 715
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    .line 716
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    .line 717
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    .line 718
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addDiscoveredEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)V

    .line 719
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 720
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    .line 721
    sget-object p2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/core/PeerGroup;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V
    .locals 3

    .line 826
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 828
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 830
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)V
    .locals 1

    .line 821
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    return-void
.end method

.method public addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V
    .locals 3

    .line 840
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 842
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 844
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V
    .locals 1

    .line 835
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    return-void
.end method

.method public addPeerDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    .line 1032
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerGroup;->setMaxConnections(I)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addPeerFilterProvider(Lorg/bitcoinj/core/PeerFilterProvider;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/PeerFilterProvider;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/BloomFilter;",
            ">;"
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1272
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1282
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 1288
    sget-object p1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 1289
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bitcoinj/core/PeerGroup;->updateVersionMessageRelayTxesBeforeFilter(Lorg/bitcoinj/core/VersionMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V
    .locals 3

    .line 854
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 856
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 858
    invoke-virtual {v1, p1, p2}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public addPreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V
    .locals 1

    .line 849
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/core/PeerGroup;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V

    return-void
.end method

.method public addWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2

    .line 1238
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1240
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1242
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    invoke-virtual {p1, p0}, Lorg/bitcoinj/wallet/Wallet;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 1244
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->walletCoinsReceivedEventListener:Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V

    .line 1245
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->walletKeyEventListener:Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addKeyChainEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V

    .line 1246
    sget-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->walletScriptEventListener:Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;

    invoke-virtual {p1, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addScriptChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V

    .line 1247
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->addPeerFilterProvider(Lorg/bitcoinj/core/PeerFilterProvider;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1248
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 1249
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Peer;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1252
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public awaitRunning()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1169
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->waitForJobQueue()V

    return-void
.end method

.method public awaitTerminated()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1215
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1217
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;
    .locals 2

    .line 2139
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMinBroadcastConnections()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/PeerGroup;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;I)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object p1

    return-object p1
.end method

.method public broadcastTransaction(Lorg/bitcoinj/core/Transaction;I)Lorg/bitcoinj/core/TransactionBroadcast;
    .locals 3

    .line 2163
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Transaction source unknown, setting to SELF: {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2165
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 2167
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/TransactionBroadcast;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/Transaction;)V

    .line 2168
    invoke-virtual {v0, p2}, Lorg/bitcoinj/core/TransactionBroadcast;->setMinConnections(I)V

    .line 2170
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance p2, Lorg/bitcoinj/core/PeerGroup$16;

    invoke-direct {p2, p0, v0}, Lorg/bitcoinj/core/PeerGroup$16;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/TransactionBroadcast;)V

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 2201
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->runningBroadcasts:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2202
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionBroadcast;->broadcast()Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public connectTo(Ljava/net/InetSocketAddress;)Lorg/bitcoinj/core/Peer;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1445
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1447
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/PeerAddress;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetSocketAddress;)V

    .line 1448
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    new-instance v1, Lorg/bitcoinj/utils/ExponentialBackoff;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerBackoffParams:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-direct {v1, v2}, Lorg/bitcoinj/utils/ExponentialBackoff;-><init>(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1449
    iget v1, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    invoke-virtual {p0, v0, p1, v1}, Lorg/bitcoinj/core/PeerGroup;->connectTo(Lorg/bitcoinj/core/PeerAddress;ZI)Lorg/bitcoinj/core/Peer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected connectTo(Lorg/bitcoinj/core/PeerAddress;ZI)Lorg/bitcoinj/core/Peer;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 1480
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1481
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/VersionMessage;->duplicate()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v0

    .line 1482
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v1

    int-to-long v1, v1

    :goto_0
    iput-wide v1, v0, Lorg/bitcoinj/core/VersionMessage;->bestHeight:J

    .line 1483
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/bitcoinj/core/VersionMessage;->time:J

    .line 1485
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/core/PeerGroup;->createPeer(Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/VersionMessage;)Lorg/bitcoinj/core/Peer;

    move-result-object v0

    .line 1486
    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->startupListener:Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    .line 1487
    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->startupListener:Lorg/bitcoinj/core/PeerGroup$PeerStartupListener;

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/Peer;->addDisconnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)V

    .line 1488
    iget v1, p0, Lorg/bitcoinj/core/PeerGroup;->vMinRequiredProtocolVersion:I

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Peer;->setMinProtocolVersion(I)Z

    .line 1489
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1492
    :try_start_0
    sget-object v1, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Attempting connection to {}     ({} connected, {} pending, {} max)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1493
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1492
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1494
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->channels:Lorg/bitcoinj/net/ClientConnectionManager;

    invoke-virtual {p1}, Lorg/bitcoinj/core/PeerAddress;->toSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/bitcoinj/net/ClientConnectionManager;->openConnection(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 1495
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1496
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1503
    :cond_1
    invoke-virtual {v0, p3}, Lorg/bitcoinj/core/Peer;->setSocketTimeout(I)V

    if-eqz p2, :cond_2

    .line 1509
    iget p1, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    add-int/2addr p1, v5

    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    :cond_2
    return-object v0

    :catch_0
    move-exception p2

    .line 1498
    invoke-static {p2}, Lcom/google/common/base/Throwables;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    .line 1499
    sget-object p3, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p0, v0, p2}, Lorg/bitcoinj/core/PeerGroup;->handlePeerDeath(Lorg/bitcoinj/core/Peer;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public connectToLocalHost()Lorg/bitcoinj/core/Peer;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1460
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1462
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerAddress;->localhost(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/PeerAddress;

    move-result-object v0

    .line 1463
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    new-instance v2, Lorg/bitcoinj/utils/ExponentialBackoff;

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->peerBackoffParams:Lorg/bitcoinj/utils/ExponentialBackoff$Params;

    invoke-direct {v2, v3}, Lorg/bitcoinj/utils/ExponentialBackoff;-><init>(Lorg/bitcoinj/utils/ExponentialBackoff$Params;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 1464
    iget v2, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/bitcoinj/core/PeerGroup;->connectTo(Lorg/bitcoinj/core/PeerAddress;ZI)Lorg/bitcoinj/core/Peer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1466
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected createPeer(Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/VersionMessage;)Lorg/bitcoinj/core/Peer;
    .locals 7
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation

    .line 1517
    new-instance v6, Lorg/bitcoinj/core/Peer;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    iget v5, p0, Lorg/bitcoinj/core/PeerGroup;->downloadTxDependencyDepth:I

    move-object v0, v6

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/Peer;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/VersionMessage;Lorg/bitcoinj/core/PeerAddress;Lorg/bitcoinj/core/AbstractBlockChain;I)V

    return-object v6
.end method

.method protected createPrivateExecutor()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
    .locals 3

    .line 446
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const-string v2, "PeerGroup Thread"

    invoke-direct {v1, v2}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    move-result-object v0

    .line 451
    new-instance v1, Lorg/bitcoinj/core/PeerGroup$5;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/PeerGroup$5;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected discoverPeers()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1043
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->vMaxPeersToDiscoverCount:I

    .line 1044
    iget-wide v7, p0, Lorg/bitcoinj/core/PeerGroup;->vPeerDiscoveryTimeoutMillis:J

    .line 1045
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v9

    .line 1046
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v10

    .line 1047
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/net/discovery/PeerDiscovery;

    .line 1049
    iget-wide v2, p0, Lorg/bitcoinj/core/PeerGroup;->requiredServices:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lorg/bitcoinj/net/discovery/PeerDiscovery;->getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 1050
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    new-instance v5, Lorg/bitcoinj/core/PeerAddress;

    iget-object v6, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v5, v6, v4}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetSocketAddress;)V

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1051
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 1053
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1054
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/PeerAddress;

    .line 1055
    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->addInactive(Lorg/bitcoinj/core/PeerAddress;)V

    goto :goto_1

    .line 1057
    :cond_3
    invoke-static {v10}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1058
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoveredEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1059
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/bitcoinj/core/PeerGroup$7;

    invoke-direct {v4, p0, v2, v0}, Lorg/bitcoinj/core/PeerGroup$7;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lcom/google/common/collect/ImmutableSet;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1067
    :cond_4
    invoke-virtual {v9}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 1068
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Peer discovery took {} and returned {} items"

    invoke-interface {v0, v2, v9, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1069
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public downloadBlockChain()V
    .locals 2

    .line 1590
    new-instance v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    invoke-direct {v0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;-><init>()V

    .line 1591
    invoke-virtual {p0, v0}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownload(Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    .line 1593
    :try_start_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1595
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public findPeersOfAtLeastVersion(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 2039
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2041
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2042
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 2043
    invoke-virtual {v2}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v3

    iget v3, v3, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-ltz v5, :cond_0

    .line 2044
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2047
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findPeersWithServiceMask(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2088
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2089
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 2090
    invoke-virtual {v2}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v3

    iget-wide v3, v3, Lorg/bitcoinj/core/VersionMessage;->localServices:J

    int-to-long v5, p1

    and-long/2addr v3, v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 2091
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2094
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getConnectedPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 952
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 954
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getDownloadPeer()Lorg/bitcoinj/core/Peer;
    .locals 2

    .line 2322
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2324
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getFastCatchupTimeSecs()J
    .locals 3

    .line 1749
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1751
    :try_start_0
    iget-wide v0, p0, Lorg/bitcoinj/core/PeerGroup;->fastCatchupTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxConnections()I
    .locals 2

    .line 607
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMaxPeersToDiscoverCount()I
    .locals 1

    .line 2344
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->vMaxPeersToDiscoverCount:I

    return v0
.end method

.method public getMemoryPool()Lorg/bitcoinj/core/TxConfidenceTable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1721
    invoke-static {}, Lorg/bitcoinj/core/Context;->get()Lorg/bitcoinj/core/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Context;->getConfidenceTable()Lorg/bitcoinj/core/TxConfidenceTable;

    move-result-object v0

    return-object v0
.end method

.method public getMinBroadcastConnections()I
    .locals 4

    .line 2106
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2108
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->minBroadcastConnections:I

    if-nez v0, :cond_1

    .line 2109
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2117
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 2113
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v0

    .line 2117
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 2115
    :cond_1
    :try_start_2
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->minBroadcastConnections:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2117
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getMinRequiredProtocolVersion()I
    .locals 1

    .line 2250
    iget v0, p0, Lorg/bitcoinj/core/PeerGroup;->vMinRequiredProtocolVersion:I

    return v0
.end method

.method public getMostCommonChainHeight()I
    .locals 2

    .line 2258
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2260
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->getMostCommonChainHeight(Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2262
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPendingPeers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 966
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPingIntervalMsec()J
    .locals 3

    .line 2212
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2214
    :try_start_0
    iget-wide v0, p0, Lorg/bitcoinj/core/PeerGroup;->pingIntervalMsec:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTorClient()Lcom/subgraph/orchid/TorClient;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2335
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->torClient:Lcom/subgraph/orchid/TorClient;

    return-object v0
.end method

.method public getUseLocalhostPeerWhenPossible()Z
    .locals 2

    .line 2358
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2360
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->useLocalhostPeerWhenPossible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVersionMessage()Lorg/bitcoinj/core/VersionMessage;
    .locals 2

    .line 662
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 664
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->versionMessage:Lorg/bitcoinj/core/VersionMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected handleNewPeer(Lorg/bitcoinj/core/Peer;)V
    .locals 8

    .line 1601
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1603
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->groupBackoff:Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v0}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackSuccess()V

    .line 1604
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v0}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackSuccess()V

    .line 1607
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1608
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 1610
    sget-object v1, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "{}: New peer      ({} connected, {} pending, {} max)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    iget-object v7, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    const/4 v5, 0x3

    iget v7, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1614
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    invoke-virtual {v1}, Lorg/bitcoinj/net/FilterMerger;->getLastFilter()Lorg/bitcoinj/core/BloomFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    invoke-virtual {v1}, Lorg/bitcoinj/net/FilterMerger;->getLastFilter()Lorg/bitcoinj/core/BloomFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bitcoinj/core/Peer;->setBloomFilter(Lorg/bitcoinj/core/BloomFilter;)V

    .line 1615
    :cond_0
    invoke-virtual {p1, v4}, Lorg/bitcoinj/core/Peer;->setDownloadData(Z)V

    .line 1617
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/wallet/Wallet;

    .line 1618
    invoke-virtual {p1, v2}, Lorg/bitcoinj/core/Peer;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V

    goto :goto_0

    .line 1619
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    if-nez v1, :cond_3

    .line 1621
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->selectDownloadPeer(Ljava/util/List;)Lorg/bitcoinj/core/Peer;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->setDownloadPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1622
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 1624
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownloadFromPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1628
    :cond_3
    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

    invoke-virtual {p1, v1, v2}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    .line 1629
    sget-object v1, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

    invoke-virtual {p1, v1, v2}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    .line 1632
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1633
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addBlocksDownloadedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)V

    goto :goto_1

    .line 1634
    :cond_4
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1635
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addChainDownloadStartedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)V

    goto :goto_2

    .line 1636
    :cond_5
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1637
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addConnectedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    goto :goto_3

    .line 1639
    :cond_6
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1640
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/GetDataEventListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addGetDataEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/GetDataEventListener;)V

    goto :goto_4

    .line 1641
    :cond_7
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1642
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addOnTransactionBroadcastListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)V

    goto :goto_5

    .line 1643
    :cond_8
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1644
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, v2, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v2, Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    invoke-virtual {p1, v3, v2}, Lorg/bitcoinj/core/Peer;->addPreMessageReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 1646
    :cond_9
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1650
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1651
    iget-object v3, v2, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v4, Lorg/bitcoinj/core/PeerGroup$11;

    invoke-direct {v4, p0, v2, p1, v0}, Lorg/bitcoinj/core/PeerGroup$11;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Peer;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 1646
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected handlePeerDeath(Lorg/bitcoinj/core/Peer;Ljava/lang/Throwable;)V
    .locals 7
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1759
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1763
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1765
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1766
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1768
    invoke-virtual {p1}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v0

    .line 1770
    sget-object v1, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "{}: Peer died      ({} connected, {} pending, {} max)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v4, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1771
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    if-ne p1, v1, :cond_1

    .line 1772
    sget-object v1, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v2, "Download peer died. Picking a new one."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1773
    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->setDownloadPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1775
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->selectDownloadPeer(Ljava/util/List;)Lorg/bitcoinj/core/Peer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1777
    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->setDownloadPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1778
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    if-eqz v2, :cond_1

    .line 1779
    invoke-direct {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownloadFromPeer(Lorg/bitcoinj/core/Peer;)V

    .line 1783
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->pendingPeers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1784
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 1786
    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->groupBackoff:Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {v3}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackFailure()V

    .line 1788
    instance-of p2, p2, Ljava/net/NoRouteToHostException;

    if-eqz p2, :cond_2

    .line 1789
    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerAddress;->getAddr()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lorg/bitcoinj/core/PeerGroup;->ipv6Unreachable:Z

    if-nez p2, :cond_3

    .line 1790
    iput-boolean v5, p0, Lorg/bitcoinj/core/PeerGroup;->ipv6Unreachable:Z

    .line 1791
    sget-object p2, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v0, "IPv6 peer connect failed due to routing failure, ignoring IPv6 addresses from now on"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1794
    :cond_2
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->backoffMap:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/utils/ExponentialBackoff;

    invoke-virtual {p2}, Lorg/bitcoinj/utils/ExponentialBackoff;->trackFailure()V

    .line 1796
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->inactives:Ljava/util/PriorityQueue;

    invoke-virtual {p2, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 1799
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getMaxConnections()I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 1800
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->triggerConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    :cond_4
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1806
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    .line 1807
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peerListener:Lorg/bitcoinj/core/PeerGroup$PeerListener;

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    .line 1808
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Wallet;

    .line 1809
    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeWallet(Lorg/bitcoinj/wallet/Wallet;)V

    goto :goto_1

    .line 1814
    :cond_5
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1815
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    goto :goto_2

    .line 1816
    :cond_6
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1817
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    goto :goto_3

    .line 1818
    :cond_7
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1819
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/GetDataEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    goto :goto_4

    .line 1820
    :cond_8
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1821
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    goto :goto_5

    .line 1822
    :cond_9
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1823
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z

    goto :goto_6

    .line 1824
    :cond_a
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->peerDisconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 1825
    iget-object v1, v0, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/core/PeerGroup$13;

    invoke-direct {v3, p0, v0, p1, v2}, Lorg/bitcoinj/core/PeerGroup$13;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Peer;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1831
    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/Peer;->removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z

    goto :goto_7

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    .line 1803
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isBloomFilteringEnabled()Z
    .locals 1

    .line 2395
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vBloomFilteringEnabled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 2381
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    return v0
.end method

.method public numConnectedPeers()I
    .locals 1

    .line 1431
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/BloomFilter;",
            ">;"
        }
    .end annotation

    .line 1342
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 1343
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    monitor-enter v1

    .line 1344
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1345
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    monitor-exit v1

    return-object p1

    .line 1346
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/core/PeerGroup;->inFlightRecalculations:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    new-instance v1, Lorg/bitcoinj/core/PeerGroup$10;

    invoke-direct {v1, p0, p1, v0}, Lorg/bitcoinj/core/PeerGroup$10;-><init>(Lorg/bitcoinj/core/PeerGroup;Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 1400
    :try_start_1
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p1

    .line 1347
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z
    .locals 3

    .line 875
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersBlocksDownloadedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 876
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 877
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    goto :goto_0

    .line 878
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 879
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z
    .locals 3

    .line 884
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersChainDownloadStartedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 885
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 886
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    goto :goto_0

    .line 887
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 888
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z
    .locals 3

    .line 894
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerConnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 895
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 896
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 898
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z
    .locals 3

    .line 904
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDisconnectedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 905
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 906
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 908
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeDiscoveredEventListener(Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)Z
    .locals 1

    .line 914
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoveredEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeEventListener(Lorg/bitcoinj/core/listeners/AbstractPeerEventListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 864
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeBlocksDownloadedEventListener(Lorg/bitcoinj/core/listeners/BlocksDownloadedEventListener;)Z

    .line 865
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeChainDownloadStartedEventListener(Lorg/bitcoinj/core/listeners/ChainDownloadStartedEventListener;)Z

    .line 866
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)Z

    .line 867
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeDisconnectedEventListener(Lorg/bitcoinj/core/listeners/PeerDisconnectedEventListener;)Z

    .line 868
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeDiscoveredEventListener(Lorg/bitcoinj/core/listeners/PeerDiscoveredEventListener;)Z

    .line 869
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    .line 870
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z

    .line 871
    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    return-void
.end method

.method public removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z
    .locals 3

    .line 920
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerGetDataEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 921
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 922
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    goto :goto_0

    .line 923
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 924
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeGetDataEventListener(Lorg/bitcoinj/core/listeners/GetDataEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z
    .locals 3

    .line 930
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersTransactionBroadastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 931
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 932
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z

    goto :goto_0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 934
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removeOnTransactionBroadcastListener(Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removePeerFilterProvider(Lorg/bitcoinj/core/PeerFilterProvider;)V
    .locals 1

    .line 1301
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1303
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z
    .locals 3

    .line 939
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peersPreMessageReceivedEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v0

    .line 940
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getConnectedPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 941
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->getPendingPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 943
    invoke-virtual {v2, p1}, Lorg/bitcoinj/core/Peer;->removePreMessageReceivedEventListener(Lorg/bitcoinj/core/listeners/PreMessageReceivedEventListener;)Z

    goto :goto_1

    :cond_1
    return v0
.end method

.method public removeWallet(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 2

    .line 1314
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->wallets:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1315
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerFilterProviders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1316
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->walletCoinsReceivedEventListener:Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->removeCoinsReceivedEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)Z

    .line 1317
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->walletKeyEventListener:Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->removeKeyChainEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    .line 1318
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->walletScriptEventListener:Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->removeScriptChangeEventListener(Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)Z

    const/4 v0, 0x0

    .line 1319
    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 1320
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 1321
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Peer;->removeWallet(Lorg/bitcoinj/wallet/Wallet;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected selectDownloadPeer(Ljava/util/List;)Lorg/bitcoinj/core/Peer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;)",
            "Lorg/bitcoinj/core/Peer;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2288
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2291
    :cond_0
    invoke-static {p1}, Lorg/bitcoinj/core/PeerGroup;->getMostCommonChainHeight(Ljava/util/List;)I

    move-result v0

    .line 2292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Peer;

    .line 2294
    invoke-virtual {v2}, Lorg/bitcoinj/core/Peer;->getBestHeight()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2302
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    sget-object v0, Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;->BLOOM_FILTER:Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/core/NetworkParameters;->getProtocolVersionNum(Lorg/bitcoinj/core/NetworkParameters$ProtocolVersion;)I

    move-result p1

    .line 2303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Peer;

    .line 2304
    invoke-virtual {v3}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v3

    iget v3, v3, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2305
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    .line 2307
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2308
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Peer;

    .line 2309
    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer;->getPeerVersionMessage()Lorg/bitcoinj/core/VersionMessage;

    move-result-object v2

    iget v2, v2, Lorg/bitcoinj/core/VersionMessage;->clientVersion:I

    if-lt v2, v3, :cond_4

    .line 2310
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2313
    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 2314
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Peer;

    return-object p1
.end method

.method public setBloomFilterFalsePositiveRate(D)V
    .locals 1

    .line 1417
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1419
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/net/FilterMerger;->setBloomFilterFPRate(D)V

    .line 1420
    sget-object p1, Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;->SEND_IF_CHANGED:Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->recalculateFastCatchupAndFilter(Lorg/bitcoinj/core/PeerGroup$FilterRecalculateMode;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setBloomFilteringEnabled(Z)V
    .locals 0

    .line 2390
    iput-boolean p1, p0, Lorg/bitcoinj/core/PeerGroup;->vBloomFilteringEnabled:Z

    return-void
.end method

.method public setConnectTimeoutMillis(I)V
    .locals 0

    .line 1525
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->vConnectTimeoutMillis:I

    return-void
.end method

.method public setDownloadTxDependencies(I)V
    .locals 1

    .line 495
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 497
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadTxDependencyDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setFastCatchupTimeSecs(J)V
    .locals 4

    .line 1730
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1732
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->shouldVerifyTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Fast catchup is incompatible with fully verifying"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1733
    iput-wide p1, p0, Lorg/bitcoinj/core/PeerGroup;->fastCatchupTimeSecs:J

    .line 1734
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    if-eqz v0, :cond_3

    .line 1735
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->bloomFilterMerger:Lorg/bitcoinj/net/FilterMerger;

    invoke-virtual {v3}, Lorg/bitcoinj/net/FilterMerger;->getLastFilter()Lorg/bitcoinj/core/BloomFilter;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v0, p1, p2, v1}, Lorg/bitcoinj/core/Peer;->setDownloadParameters(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setMaxConnections(I)V
    .locals 1

    .line 474
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 476
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->maxConnections:I

    .line 477
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 479
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 482
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->channels:Lorg/bitcoinj/net/ClientConnectionManager;

    invoke-interface {v0}, Lorg/bitcoinj/net/ClientConnectionManager;->getConnectedClientCount()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_1

    .line 484
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->triggerConnections()V

    :cond_1
    if-gez p1, :cond_2

    .line 487
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->channels:Lorg/bitcoinj/net/ClientConnectionManager;

    neg-int p1, p1

    invoke-interface {v0, p1}, Lorg/bitcoinj/net/ClientConnectionManager;->closeConnections(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 479
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setMaxPeersToDiscoverCount(I)V
    .locals 0

    .line 2353
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->vMaxPeersToDiscoverCount:I

    return-void
.end method

.method public setMinBroadcastConnections(I)V
    .locals 1

    .line 2125
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2127
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->minBroadcastConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setMinRequiredProtocolVersion(I)V
    .locals 0

    .line 2245
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->vMinRequiredProtocolVersion:I

    return-void
.end method

.method public setPeerDiscoveryTimeoutMillis(J)V
    .locals 0

    .line 464
    iput-wide p1, p0, Lorg/bitcoinj/core/PeerGroup;->vPeerDiscoveryTimeoutMillis:J

    return-void
.end method

.method public setPingIntervalMsec(J)V
    .locals 1

    .line 2228
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2230
    :try_start_0
    iput-wide p1, p0, Lorg/bitcoinj/core/PeerGroup;->pingIntervalMsec:J

    .line 2231
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->vPingTask:Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2233
    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/ListenableScheduledFuture;->cancel(Z)Z

    .line 2234
    :cond_0
    invoke-direct {p0}, Lorg/bitcoinj/core/PeerGroup;->setupPinging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRequiredServices(J)V
    .locals 1

    .line 1009
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1011
    :try_start_0
    iput-wide p1, p0, Lorg/bitcoinj/core/PeerGroup;->requiredServices:J

    .line 1012
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->peerDiscoverers:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 1013
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v0, p1, p2}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->forServices(Lorg/bitcoinj/core/NetworkParameters;J)Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->addPeerDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setStallThreshold(II)V
    .locals 1

    .line 1850
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1852
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/core/PeerGroup;->stallPeriodSeconds:I

    .line 1853
    iput p2, p0, Lorg/bitcoinj/core/PeerGroup;->stallMinSpeedBytesSec:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setUseLocalhostPeerWhenPossible(Z)V
    .locals 1

    .line 2372
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2374
    :try_start_0
    iput-boolean p1, p0, Lorg/bitcoinj/core/PeerGroup;->useLocalhostPeerWhenPossible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2376
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, p1, p2, v0}, Lorg/bitcoinj/core/PeerGroup;->setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 678
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bitcoinj/core/AbstractBlockChain;->getBestChainHeight()I

    move-result v0

    .line 679
    :goto_0
    new-instance v2, Lorg/bitcoinj/core/VersionMessage;

    iget-object v3, p0, Lorg/bitcoinj/core/PeerGroup;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v2, v3, v0}, Lorg/bitcoinj/core/VersionMessage;-><init>(Lorg/bitcoinj/core/NetworkParameters;I)V

    .line 680
    iput-boolean v1, v2, Lorg/bitcoinj/core/VersionMessage;->relayTxesBeforeFilter:Z

    .line 681
    invoke-direct {p0, v2}, Lorg/bitcoinj/core/PeerGroup;->updateVersionMessageRelayTxesBeforeFilter(Lorg/bitcoinj/core/VersionMessage;)V

    .line 682
    invoke-virtual {v2, p1, p2, p3}, Lorg/bitcoinj/core/VersionMessage;->appendToSubVer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0, v2}, Lorg/bitcoinj/core/PeerGroup;->setVersionMessage(Lorg/bitcoinj/core/VersionMessage;)V

    return-void
.end method

.method public setVersionMessage(Lorg/bitcoinj/core/VersionMessage;)V
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 652
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->versionMessage:Lorg/bitcoinj/core/VersionMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public start()V
    .locals 1

    .line 1163
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->startAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public startAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1126
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->chain:Lorg/bitcoinj/core/AbstractBlockChain;

    if-nez v0, :cond_0

    .line 1128
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "Starting up with no attached block chain. Did you forget to pass one to the constructor?"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1130
    :cond_0
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vUsedUp:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Cannot start a peer group twice"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1131
    iput-boolean v1, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    .line 1132
    iput-boolean v1, p0, Lorg/bitcoinj/core/PeerGroup;->vUsedUp:Z

    .line 1133
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executorStartupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1135
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    new-instance v1, Lorg/bitcoinj/core/PeerGroup$8;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/PeerGroup$8;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public startBlockChainDownload(Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V
    .locals 2

    .line 1537
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1539
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    invoke-static {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->removeDataEventListenerFromPeer(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1544
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadPeer:Lorg/bitcoinj/core/Peer;

    invoke-static {v0, v1, p1}, Lorg/bitcoinj/core/PeerGroup;->addDataEventListenerToPeer(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    .line 1547
    :cond_1
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->downloadListener:Lorg/bitcoinj/core/listeners/PeerDataEventListener;

    .line 1551
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1552
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->peers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Peer;

    invoke-direct {p0, p1}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownloadFromPeer(Lorg/bitcoinj/core/Peer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public stop()V
    .locals 4

    .line 1203
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/core/PeerGroup;->stopAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1204
    sget-object v0, Lorg/bitcoinj/core/PeerGroup;->log:Lorg/slf4j/Logger;

    const-string v1, "Awaiting PeerGroup shutdown ..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1207
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1173
    iget-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x0

    .line 1174
    iput-boolean v0, p0, Lorg/bitcoinj/core/PeerGroup;->vRunning:Z

    .line 1175
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    new-instance v1, Lorg/bitcoinj/core/PeerGroup$9;

    invoke-direct {v1, p0}, Lorg/bitcoinj/core/PeerGroup$9;-><init>(Lorg/bitcoinj/core/PeerGroup;)V

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->shutdown()V

    return-object v0
.end method

.method waitForJobQueue()V
    .locals 2

    .line 1074
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->executor:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-static {}, Lcom/google/common/util/concurrent/Runnables;->doNothing()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;->submit(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public waitForPeers(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 2005
    invoke-virtual {p0, p1, v0, v1}, Lorg/bitcoinj/core/PeerGroup;->waitForPeersOfVersion(IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public waitForPeersOfVersion(IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;>;"
        }
    .end annotation

    .line 2017
    invoke-virtual {p0, p2, p3}, Lorg/bitcoinj/core/PeerGroup;->findPeersOfAtLeastVersion(J)Ljava/util/List;

    move-result-object v0

    .line 2018
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2019
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 2021
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 2022
    new-instance v7, Lorg/bitcoinj/core/PeerGroup$14;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p2

    move v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/bitcoinj/core/PeerGroup$14;-><init>(Lorg/bitcoinj/core/PeerGroup;JILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, v7}, Lorg/bitcoinj/core/PeerGroup;->addConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V

    return-object v6
.end method

.method public waitForPeersWithServiceMask(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Peer;",
            ">;>;"
        }
    .end annotation

    .line 2060
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2062
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/PeerGroup;->findPeersWithServiceMask(I)Ljava/util/List;

    move-result-object v0

    .line 2063
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2064
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2078
    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2065
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 2066
    new-instance v1, Lorg/bitcoinj/core/PeerGroup$15;

    invoke-direct {v1, p0, p2, p1, v0}, Lorg/bitcoinj/core/PeerGroup$15;-><init>(Lorg/bitcoinj/core/PeerGroup;IILcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {p0, v1}, Lorg/bitcoinj/core/PeerGroup;->addConnectedEventListener(Lorg/bitcoinj/core/listeners/PeerConnectedEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2078
    iget-object p1, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/core/PeerGroup;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
