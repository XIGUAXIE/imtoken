.class public Lorg/bitcoinj/wallet/Wallet;
.super Lorg/bitcoinj/utils/BaseTaggableObject;
.source "Wallet.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/NewBestBlockListener;
.implements Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;
.implements Lorg/bitcoinj/core/PeerFilterProvider;
.implements Lorg/bitcoinj/wallet/KeyBag;
.implements Lorg/bitcoinj/core/TransactionBag;
.implements Lorg/bitcoinj/core/listeners/ReorganizeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Wallet$FeeCalculation;,
        Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;,
        Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;,
        Lorg/bitcoinj/wallet/Wallet$ExceededMaxTransactionSize;,
        Lorg/bitcoinj/wallet/Wallet$CouldNotAdjustDownwards;,
        Lorg/bitcoinj/wallet/Wallet$MultipleOpReturnRequested;,
        Lorg/bitcoinj/wallet/Wallet$DustySendRequested;,
        Lorg/bitcoinj/wallet/Wallet$CompletionException;,
        Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;,
        Lorg/bitcoinj/wallet/Wallet$SendResult;,
        Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;,
        Lorg/bitcoinj/wallet/Wallet$BalanceType;
    }
.end annotation


# static fields
.field private static final MINIMUM_BLOOM_DATA_LENGTH:I = 0x8

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private acceptRiskyTransactions:Z

.field private balanceFutureRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final bloomFilterGuard:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final bloomOutPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/bitcoinj/core/TransactionOutPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

.field private final coinsReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final coinsSentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private confidenceChanged:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Transaction;",
            "Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Lorg/bitcoinj/core/Context;

.field private final dead:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private final extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/bitcoinj/wallet/WalletExtension;",
            ">;"
        }
    .end annotation
.end field

.field private hardSaveOnNextBlock:Z

.field private ignoreNextNewBlock:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            ">;"
        }
    .end annotation
.end field

.field private insideReorg:Z

.field private keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation
.end field

.field protected final keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private lastBlockSeenHash:Lorg/bitcoinj/core/Sha256Hash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private lastBlockSeenHeight:I

.field private lastBlockSeenTimeSecs:J

.field protected final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected final myUnspents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private onWalletChangedSuppressions:I

.field protected final params:Lorg/bitcoinj/core/NetworkParameters;

.field private final pending:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private riskAnalyzer:Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;

.field private final riskDropped:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final scriptChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private signers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/signers/TransactionSigner;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final spent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionConfidenceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/bitcoinj/utils/ListenerRegistration<",
            "Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final transactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private txConfidenceListener:Lorg/bitcoinj/core/TransactionConfidence$Listener;

.field private final unspent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

.field private volatile vKeyRotationTimestamp:J

.field protected volatile vTransactionBroadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

.field private volatile vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private version:I

.field private watchedScripts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bitcoinj/script/Script;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 127
    const-class v0, Lorg/bitcoinj/wallet/Wallet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;)V
    .locals 2

    .line 267
    new-instance v0, Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-void
.end method

.method private constructor <init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/KeyChainGroup;)V
    .locals 2

    .line 310
    invoke-direct {p0}, Lorg/bitcoinj/utils/BaseTaggableObject;-><init>()V

    const-string v0, "wallet"

    .line 132
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    const-string v0, "wallet-keychaingroup"

    .line 133
    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    .line 173
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$1;

    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/Wallet$1;-><init>(Lorg/bitcoinj/wallet/Wallet;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->riskDropped:Ljava/util/LinkedHashMap;

    .line 194
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 196
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 198
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsSentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 202
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->scriptChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 204
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactionConfidenceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 219
    sget-object v0, Lorg/bitcoinj/wallet/DefaultRiskAnalysis;->FACTORY:Lorg/bitcoinj/wallet/DefaultRiskAnalysis$Analyzer;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->riskAnalyzer:Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;

    .line 234
    new-instance v0, Lorg/bitcoinj/wallet/DefaultCoinSelector;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/DefaultCoinSelector;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    const/4 v0, 0x0

    .line 1890
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->hardSaveOnNextBlock:Z

    .line 3535
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->balanceFutureRequests:Ljava/util/List;

    .line 4544
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    .line 4546
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->bloomFilterGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 311
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->context:Lorg/bitcoinj/core/Context;

    .line 312
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 313
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/KeyChainGroup;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    .line 314
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "org.bitcoinj.unittest"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 315
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lorg/bitcoinj/wallet/KeyChainGroup;->setLookaheadSize(I)V

    .line 319
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->numKeys()I

    move-result p1

    if-nez p1, :cond_1

    .line 320
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->createAndActivateNewHDChain()V

    .line 321
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    .line 322
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    .line 323
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    .line 324
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    .line 325
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    .line 326
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    .line 327
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    .line 329
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    .line 330
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->signers:Ljava/util/List;

    .line 331
    new-instance p1, Lorg/bitcoinj/signers/LocalTransactionSigner;

    invoke-direct {p1}, Lorg/bitcoinj/signers/LocalTransactionSigner;-><init>()V

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->addTransactionSigner(Lorg/bitcoinj/signers/TransactionSigner;)V

    .line 332
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->createTransientState()V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;)V
    .locals 0

    .line 258
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/Context;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V
    .locals 0

    .line 307
    invoke-static {p1}, Lorg/bitcoinj/core/Context;->getOrCreate(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/Context;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Coin;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->queueOnTransactionConfidenceChanged(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method static synthetic access$400()Lorg/slf4j/Logger;
    .locals 1

    .line 125
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V
    .locals 4

    .line 2865
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2866
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2867
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$11;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 2878
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 2881
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown wallet transaction type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2875
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 2872
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 2869
    :cond_6
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2883
    :goto_0
    sget-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    if-eq p1, v0, :cond_8

    sget-object v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    if-ne p1, v0, :cond_a

    .line 2884
    :cond_8
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionOutput;

    .line 2885
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2886
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2891
    :cond_a
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    sget-object p2, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->txConfidenceListener:Lorg/bitcoinj/core/TransactionConfidence$Listener;

    invoke-virtual {p1, p2, v0}, Lorg/bitcoinj/core/TransactionConfidence;->addEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/TransactionConfidence$Listener;)V

    return-void
.end method

.method private static addWalletTransactionsToSet(Ljava/util/Set;Lorg/bitcoinj/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/wallet/WalletTransaction;",
            ">;",
            "Lorg/bitcoinj/wallet/WalletTransaction$Pool;",
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 2842
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 2843
    new-instance v1, Lorg/bitcoinj/wallet/WalletTransaction;

    invoke-direct {v1, p1, v0}, Lorg/bitcoinj/wallet/WalletTransaction;-><init>(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adjustOutputDownwardsForFee(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/wallet/CoinSelection;Lorg/bitcoinj/core/Coin;Z)Z
    .locals 2

    .line 4082
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    invoke-direct {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->estimateBytesForSigning(Lorg/bitcoinj/wallet/CoinSelection;)I

    move-result p2

    add-int/2addr v0, p2

    int-to-long v0, v0

    .line 4083
    invoke-virtual {p3, v0, v1}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    if-eqz p4, :cond_0

    .line 4084
    sget-object p3, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p2, p3}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result p3

    if-gez p3, :cond_0

    .line 4085
    sget-object p2, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    :cond_0
    const-wide/16 p3, 0x0

    .line 4086
    invoke-virtual {p1, p3, p4}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p1

    .line 4087
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/TransactionOutput;->setValue(Lorg/bitcoinj/core/Coin;)V

    .line 4088
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->isDust()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private calcBloomOutPointsLocked()V
    .locals 4

    .line 4560
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4561
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4562
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4563
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4564
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4565
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 4566
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 4568
    :try_start_0
    invoke-direct {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->isTxOutputBloomFilterable(Lorg/bitcoinj/core/TransactionOutput;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4569
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getOutPointFor()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4572
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    return-void
.end method

.method private checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V
    .locals 4
    .param p1    # Lorg/bitcoinj/core/Coin;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 3578
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3579
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->balanceFutureRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 3580
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3581
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;

    .line 3582
    iget-object v1, v0, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->type:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v1}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 3583
    iget-object v2, v0, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->value:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 3585
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    .line 3588
    sget-object v2, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/Wallet$9;

    invoke-direct {v3, p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet$9;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;Lorg/bitcoinj/core/Coin;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkNoDeterministicKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    .line 711
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/ECKey;

    .line 712
    instance-of v0, v0, Lorg/bitcoinj/crypto/DeterministicKey;

    if-nez v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot import HD keys back into the wallet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private clearTransactions()V
    .locals 1

    .line 3005
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3006
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3007
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3008
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3009
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3010
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private createTransientState()V
    .locals 1

    .line 336
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    .line 337
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$2;

    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/Wallet$2;-><init>(Lorg/bitcoinj/wallet/Wallet;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->txConfidenceListener:Lorg/bitcoinj/core/TransactionConfidence$Listener;

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->acceptRiskyTransactions:Z

    return-void
.end method

.method private estimateBytesForSigning(Lorg/bitcoinj/wallet/CoinSelection;)I
    .locals 6

    .line 4991
    iget-object p1, p1, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 4993
    :try_start_0
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v1

    .line 4996
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v2
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Coin selection includes unspendable outputs"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4997
    :try_start_1
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v2

    .line 4998
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    move-object v4, v2

    move-object v2, v5

    goto :goto_1

    .line 4999
    :cond_0
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5000
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v2

    iget-object v2, v2, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    .line 5001
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 5003
    :goto_1
    invoke-virtual {v1, v4, v2}, Lorg/bitcoinj/script/Script;->getNumberOfBytesRequiredToSpend(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)I

    move-result v1
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5007
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    return v0
.end method

.method private findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 1809
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1810
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    return-object p1

    .line 1812
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1813
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionInput;

    .line 1814
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1817
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object p1

    .line 1818
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 1819
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    .line 1822
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v3

    .line 1823
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1825
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p1
.end method

.method public static fromKeys(Lorg/bitcoinj/core/NetworkParameters;Ljava/util/List;)Lorg/bitcoinj/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/NetworkParameters;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)",
            "Lorg/bitcoinj/wallet/Wallet;"
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/ECKey;

    .line 299
    instance-of v1, v1, Lorg/bitcoinj/crypto/DeterministicKey;

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    goto :goto_0

    .line 301
    :cond_0
    new-instance v0, Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-direct {v0, p0}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 302
    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->importKeys(Ljava/util/List;)I

    .line 303
    new-instance p1, Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {p1, p0, v0}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-object p1
.end method

.method public static fromSeed(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/wallet/Wallet;
    .locals 2

    .line 271
    new-instance v0, Lorg/bitcoinj/wallet/Wallet;

    new-instance v1, Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-direct {v1, p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/DeterministicSeed;)V

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-object v0
.end method

.method public static fromWatchingKey(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/Wallet;
    .locals 2

    .line 279
    new-instance v0, Lorg/bitcoinj/wallet/Wallet;

    new-instance v1, Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-direct {v1, p0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/crypto/DeterministicKey;)V

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-object v0
.end method

.method public static fromWatchingKeyB58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;J)Lorg/bitcoinj/wallet/Wallet;
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-static {v0, p1, p0}, Lorg/bitcoinj/crypto/DeterministicKey;->deserializeB58(Lorg/bitcoinj/crypto/DeterministicKey;Ljava/lang/String;Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1

    .line 290
    invoke-virtual {p1, p2, p3}, Lorg/bitcoinj/crypto/DeterministicKey;->setCreationTimeSeconds(J)V

    .line 291
    invoke-static {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->fromWatchingKey(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/crypto/DeterministicKey;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p0

    return-object p0
.end method

.method private informConfidenceListenersIfNotReorganizing()V
    .locals 4

    .line 2081
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    if-eqz v0, :cond_0

    return-void

    .line 2083
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2084
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 2085
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-virtual {v3, v1}, Lorg/bitcoinj/core/TransactionConfidence;->queueListeners(Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V

    .line 2086
    invoke-direct {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->queueOnTransactionConfidenceChanged(Lorg/bitcoinj/core/Transaction;)V

    goto :goto_0

    .line 2088
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private isNotSpendingTxnsInConfidenceType(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)Z
    .locals 1

    .line 2035
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 2036
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2037
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isTxOutputBloomFilterable(Lorg/bitcoinj/core/TransactionOutput;)Z
    .locals 4

    .line 4672
    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v0

    .line 4673
    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 4674
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private killTxns(Ljava/util/Set;Lorg/bitcoinj/core/Transaction;)V
    .locals 9
    .param p2    # Lorg/bitcoinj/core/Transaction;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/Transaction;",
            ")V"
        }
    .end annotation

    .line 2314
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2315
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    const-string v1, "kill"

    if-nez p1, :cond_7

    .line 2316
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Transaction;

    .line 2317
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2318
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    const-string v5, "TX {} killed{}"

    .line 2317
    invoke-interface {v2, v5, v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2319
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Disconnecting each input and moving connected transactions."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2321
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2322
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2324
    sget-object v2, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v2, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 2325
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    .line 2326
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 2328
    :cond_2
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-eq v5, v6, :cond_3

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bitcoinj/core/TransactionInput;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2329
    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2330
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    const-string v8, "Added to UNSPENTS: {} in {}"

    invoke-interface {v5, v8, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2332
    :cond_3
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->disconnect()Z

    .line 2333
    invoke-direct {p0, v4, v1}, Lorg/bitcoinj/wallet/Wallet;->maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V

    goto :goto_1

    .line 2335
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bitcoinj/core/TransactionConfidence;->setOverridingTransaction(Lorg/bitcoinj/core/Transaction;)V

    .line 2336
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2338
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    .line 2339
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2340
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "XX Removed from UNSPENTS: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2341
    :cond_5
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    .line 2343
    :cond_6
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    .line 2344
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    const-string v4, "This death invalidated dependent tx {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2345
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez p2, :cond_8

    return-void

    .line 2350
    :cond_8
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v0, "Now attempting to connect the inputs of the overriding transaction."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2351
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/TransactionInput;

    .line 2352
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    sget-object v2, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {p2, v0, v2}, Lorg/bitcoinj/core/TransactionInput;->connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v0

    .line 2353
    sget-object v2, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    const-string v3, "Removing from UNSPENTS: {}"

    if-ne v0, v2, :cond_a

    .line 2354
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V

    .line 2355
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2356
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 2358
    :cond_a
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    sget-object v2, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->DISCONNECT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {p2, v0, v2}, Lorg/bitcoinj/core/TransactionInput;->connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v0

    .line 2359
    sget-object v2, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v0, v2, :cond_9

    .line 2360
    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V

    .line 2361
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2362
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object p2

    invoke-interface {v0, v3, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static varargs loadFromFile(Ljava/io/File;[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;
    .locals 2
    .param p1    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1507
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1508
    :try_start_1
    invoke-static {v1, p1}, Lorg/bitcoinj/wallet/Wallet;->loadFromFileStream(Ljava/io/InputStream;[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1510
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_0
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 1513
    new-instance p1, Lorg/bitcoinj/wallet/UnreadableWalletException;

    const-string v0, "Could not open file"

    invoke-direct {p1, v0, p0}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static varargs loadFromFileStream(Ljava/io/InputStream;[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;
    .locals 1
    .param p1    # [Lorg/bitcoinj/wallet/WalletExtension;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/UnreadableWalletException;
        }
    .end annotation

    .line 1602
    new-instance v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readWallet(Ljava/io/InputStream;[Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p0

    .line 1603
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1604
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v0, "Loaded an inconsistent wallet"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private markKeysAsUsed(Lorg/bitcoinj/core/Transaction;)V
    .locals 4

    .line 1061
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1063
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    :try_start_1
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1067
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object v1

    .line 1068
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v2, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->markPubKeyAsUsed([B)V

    goto :goto_0

    .line 1069
    :cond_1
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1070
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object v1

    .line 1071
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v2, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->markPubKeyHashAsUsed([B)V

    goto :goto_0

    .line 1072
    :cond_2
    invoke-virtual {v1}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1073
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bitcoinj/core/Address;->fromP2SHScript(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/Address;

    move-result-object v1

    .line 1074
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v2, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->markP2SHAddressAsUsed(Lorg/bitcoinj/core/Address;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1078
    :try_start_2
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Could not parse tx output script: {}"

    invoke-virtual {v1}, Lorg/bitcoinj/core/ScriptException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1082
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V
    .locals 3

    .line 2373
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2374
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->isEveryOwnedOutputSpent(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2376
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2377
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "  {} {} <-unspent ->spent"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2380
    :cond_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2383
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2384
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2385
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "  {} {} <-spent ->unspent"

    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2387
    :cond_2
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeRotateKeys(Lorg/spongycastle/crypto/params/KeyParameter;Z)Ljava/util/List;
    .locals 9
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation

    .line 5175
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 5176
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 5177
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 5179
    iget-wide v7, p0, Lorg/bitcoinj/wallet/Wallet;->vKeyRotationTimestamp:J

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 5184
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/KeyChainGroup;->getDeterministicKeyChains()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 5185
    invoke-virtual {v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getEarliestKeyCreationTime()J

    move-result-wide v3

    cmp-long v5, v3, v7

    if-ltz v5, :cond_1

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_4

    .line 5192
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->getImportedKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5193
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "All HD chains are currently rotating and we have no random keys, creating fresh HD chain ..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 5194
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->createAndActivateNewHDChain()V

    goto :goto_0

    .line 5196
    :cond_3
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "All HD chains are currently rotating, attempting to create a new one from the next oldest non-rotating key material ..."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 5197
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v1, v7, v8, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->upgradeToDeterministic(JLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;

    .line 5198
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, " ... upgraded to HD again, based on next best oldest key."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/bitcoinj/wallet/AllRandomKeysRotating; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5201
    :catch_0
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, " ... no non-rotating random keys available, generating entirely new HD tree: backup required after this."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 5202
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->createAndActivateNewHDChain()V

    .line 5204
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    :cond_4
    move-object v1, p0

    move-wide v2, v7

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    .line 5212
    invoke-direct/range {v1 .. v6}, Lorg/bitcoinj/wallet/Wallet;->rekeyOneBatch(JLorg/spongycastle/crypto/params/KeyParameter;Ljava/util/List;Z)Lorg/bitcoinj/core/Transaction;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v1, :cond_6

    .line 5214
    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x258

    if-eq v1, v2, :cond_4

    :cond_6
    return-object v0
.end method

.method private maybeUpgradeToHD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD(Lorg/spongycastle/crypto/params/KeyParameter;)V

    return-void
.end method

.method private maybeUpgradeToHD(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 2
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation

    .line 577
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 578
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->isDeterministicUpgradeRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Upgrade to HD wallets is required, attempting to do so."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 581
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->upgradeToDeterministic(Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catch Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 583
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to auto upgrade due to encryption. You should call wallet.upgradeToDeterministic with the users AES key to avoid this error."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 585
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private processTxFromBestChain(Lorg/bitcoinj/core/Transaction;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 2157
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2158
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2163
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2172
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    .line 2173
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "  coinbase tx <-dead: confidence {}"

    .line 2172
    invoke-interface {v0, v5, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2174
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    :cond_1
    invoke-direct {p0, p1, v1}, Lorg/bitcoinj/wallet/Wallet;->updateForSpends(Lorg/bitcoinj/core/Transaction;Z)V

    .line 2183
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 2186
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->isEveryOwnedOutputSpent(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2187
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  tx {} ->spent (by pending)"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2188
    sget-object p2, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_2

    .line 2190
    :cond_3
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  tx {} ->unspent"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2191
    sget-object p2, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_2

    .line 2193
    :cond_4
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-lez v0, :cond_5

    .line 2195
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  tx {} ->spent"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2196
    sget-object p2, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 2199
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "  tx {} ->spent (manually added)"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2200
    sget-object p2, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 2204
    :cond_6
    :goto_2
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;

    move-result-object p2

    .line 2205
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2207
    invoke-direct {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->killTxns(Ljava/util/Set;Lorg/bitcoinj/core/Transaction;)V

    :cond_7
    return-void
.end method

.method private queueOnTransactionConfidenceChanged(Lorg/bitcoinj/core/Transaction;)V
    .locals 4

    .line 2719
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2720
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactionConfidenceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2721
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    sget-object v3, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    if-ne v2, v3, :cond_0

    .line 2722
    iget-object v1, v1, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v1, Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;

    invoke-interface {v1, p0, p1}, Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;->onTransactionConfidenceChanged(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_0

    .line 2724
    :cond_0
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/Wallet$3;

    invoke-direct {v3, p0, v1, p1}, Lorg/bitcoinj/wallet/Wallet$3;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private receive(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1895
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1897
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBalance()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 1898
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    .line 1899
    sget-object v2, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1900
    :goto_0
    sget-object v5, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->SIDE_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    if-ne p3, v5, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 1902
    :goto_1
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    .line 1903
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v6

    .line 1904
    invoke-virtual {v6, v5}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    .line 1906
    sget-object v6, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz p3, :cond_2

    const-string v8, " on a side chain"

    goto :goto_2

    :cond_2
    const-string v8, ""

    :goto_2
    aput-object v8, v7, v3

    .line 1907
    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    if-eqz p2, :cond_3

    .line 1908
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v9

    goto :goto_3

    :cond_3
    const-string v9, "(unit test)"

    :goto_3
    aput-object v9, v7, v8

    const-string v8, "Received tx{} for {}: {} [{}] in block {}"

    .line 1906
    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1912
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->markKeysAsUsed(Lorg/bitcoinj/core/Transaction;)V

    .line 1914
    iget v6, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    .line 1919
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bitcoinj/core/Transaction;

    if-eqz v6, :cond_4

    move-object p1, v6

    .line 1924
    :cond_4
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_6

    .line 1926
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "  <-pending"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_d

    .line 1929
    iget-object p3, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_5

    :cond_7
    const/4 p3, 0x0

    :goto_5
    if-eqz p3, :cond_8

    .line 1931
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "  <-dead"

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_8
    if-eqz v6, :cond_a

    .line 1935
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bitcoinj/core/TransactionOutput;

    .line 1936
    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 1938
    iget-object v10, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1939
    invoke-virtual {v9}, Lorg/bitcoinj/core/TransactionInput;->disconnect()Z

    goto :goto_6

    :cond_a
    if-nez v6, :cond_c

    if-eqz p3, :cond_b

    goto :goto_7

    :cond_b
    const/4 p3, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 p3, 0x1

    .line 1943
    :goto_8
    invoke-direct {p0, p1, p3}, Lorg/bitcoinj/wallet/Wallet;->processTxFromBestChain(Lorg/bitcoinj/core/Transaction;Z)V

    goto :goto_9

    .line 1945
    :cond_d
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz v6, :cond_e

    .line 1951
    sget-object p3, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, p3, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 1952
    sget-object p3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v7, "  ->pending"

    invoke-interface {p3, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_9

    .line 1956
    :cond_e
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p3

    .line 1957
    iget-object v7, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    iget-object v7, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v7, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_f

    .line 1960
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->commitTx(Lorg/bitcoinj/core/Transaction;)V

    :cond_f
    :goto_9
    if-eqz p2, :cond_11

    .line 1968
    invoke-virtual {p1, p2, v2, p4}, Lorg/bitcoinj/core/Transaction;->setBlockAppearance(Lorg/bitcoinj/core/StoredBlock;ZI)V

    if-eqz v2, :cond_11

    .line 1973
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-array p2, v4, [Lorg/bitcoinj/core/Transaction;

    aput-object p1, p2, v3

    .line 1978
    invoke-static {p2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p2

    .line 1979
    invoke-virtual {p0, v4}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lorg/bitcoinj/wallet/Wallet;->addTransactionsDependingOn(Ljava/util/Set;Ljava/util/Set;)V

    .line 1980
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1981
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->sortTxnsByDependency(Ljava/util/Set;)Ljava/util/List;

    move-result-object p2

    .line 1982
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/core/Transaction;

    .line 1983
    invoke-virtual {p3}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p4

    invoke-virtual {p4}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object p4

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p4, v1}, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 1984
    sget-object p4, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-direct {p0, p3, p4}, Lorg/bitcoinj/wallet/Wallet;->isNotSpendingTxnsInConfidenceType(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 1985
    invoke-virtual {p3}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p4

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {p4, v1}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 1986
    iget-object p4, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {p4, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 1993
    :cond_11
    iget p2, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    sub-int/2addr p2, v4

    iput p2, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    if-eqz v2, :cond_12

    .line 1998
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object p3, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 2000
    :cond_12
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V

    .line 2010
    :goto_b
    iget-boolean p2, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    if-nez p2, :cond_15

    if-eqz v2, :cond_15

    .line 2011
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBalance()Lorg/bitcoinj/core/Coin;

    move-result-object p2

    .line 2012
    sget-object p3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Balance is now: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-nez v6, :cond_14

    .line 2014
    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result p3

    if-lez p3, :cond_13

    .line 2018
    invoke-virtual {p0, p1, v0, p2}, Lorg/bitcoinj/wallet/Wallet;->queueOnCoinsReceived(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    goto :goto_c

    :cond_13
    if-gez p3, :cond_14

    .line 2020
    invoke-virtual {p0, p1, v0, p2}, Lorg/bitcoinj/wallet/Wallet;->queueOnCoinsSent(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    .line 2023
    :cond_14
    :goto_c
    invoke-direct {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V

    .line 2026
    :cond_15
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 2027
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistentOrThrow()V

    .line 2029
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V

    .line 2030
    iput-boolean v4, p0, Lorg/bitcoinj/wallet/Wallet;->hardSaveOnNextBlock:Z

    return-void
.end method

.method private rekeyOneBatch(JLorg/spongycastle/crypto/params/KeyParameter;Ljava/util/List;Z)Lorg/bitcoinj/core/Transaction;
    .locals 3
    .param p3    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;Z)",
            "Lorg/bitcoinj/core/Transaction;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5220
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5230
    :try_start_0
    new-instance v0, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/bitcoinj/wallet/KeyTimeCoinSelector;-><init>(Lorg/bitcoinj/wallet/Wallet;JZ)V

    .line 5231
    new-instance p1, Lorg/bitcoinj/wallet/FilteringCoinSelector;

    invoke-direct {p1, v0}, Lorg/bitcoinj/wallet/FilteringCoinSelector;-><init>(Lorg/bitcoinj/wallet/CoinSelector;)V

    .line 5232
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/core/Transaction;

    .line 5233
    invoke-virtual {p1, p4}, Lorg/bitcoinj/wallet/FilteringCoinSelector;->excludeOutputsSpentBy(Lorg/bitcoinj/core/Transaction;)V

    goto :goto_0

    .line 5235
    :cond_0
    sget-object p2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates()Ljava/util/List;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Lorg/bitcoinj/wallet/FilteringCoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object p1

    .line 5236
    iget-object p2, p1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    sget-object p4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {p2, p4}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 5260
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p4

    .line 5237
    :cond_1
    :try_start_1
    invoke-direct {p0, p3}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD(Lorg/spongycastle/crypto/params/KeyParameter;)V

    .line 5238
    new-instance p2, Lorg/bitcoinj/core/Transaction;

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {p2, v0}, Lorg/bitcoinj/core/Transaction;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 5239
    iget-object v0, p1, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 5240
    invoke-virtual {p2, v2}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_2

    .line 5243
    :cond_2
    iget-object v0, p1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->freshReceiveAddress()Lorg/bitcoinj/core/Address;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->currentReceiveAddress()Lorg/bitcoinj/core/Address;

    move-result-object v2

    :goto_3
    invoke-virtual {p2, v0, v2}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/core/TransactionOutput;

    .line 5244
    sget-object v0, Lorg/bitcoinj/core/Transaction;->DEFAULT_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->adjustOutputDownwardsForFee(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/wallet/CoinSelection;Lorg/bitcoinj/core/Coin;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 5245
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string p2, "Failed to adjust rekey tx for fees."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 5248
    :cond_4
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p1

    sget-object p4, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p1, p4}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 5249
    sget-object p1, Lorg/bitcoinj/core/Transaction$Purpose;->KEY_ROTATION:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {p2, p1}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    .line 5250
    invoke-static {p2}, Lorg/bitcoinj/wallet/SendRequest;->forTx(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p1

    .line 5251
    iput-object p3, p1, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz p5, :cond_5

    .line 5253
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->signTransaction(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 5255
    :cond_5
    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object p1

    array-length p1, p1

    const p3, 0x186a0

    if-ge p1, p3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_1
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5260
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 5258
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5260
    :goto_5
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private resetTxInputs(Lorg/bitcoinj/wallet/SendRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/SendRequest;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionInput;",
            ">;)V"
        }
    .end annotation

    .line 4984
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->clearInputs()V

    .line 4985
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 4986
    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionInput;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private subtractDepth(ILjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 4530
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 4531
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v1

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v1, v2, :cond_0

    .line 4532
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lorg/bitcoinj/core/TransactionConfidence;->setDepthInBlocks(I)V

    .line 4533
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lorg/bitcoinj/core/AbstractBlockChain;Ljava/util/Comparator;)V
    .locals 1
    .param p3    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Lorg/bitcoinj/core/AbstractBlockChain;",
            "Ljava/util/Comparator<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 3250
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-eqz p4, :cond_0

    .line 3254
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 3255
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3257
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3260
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/core/Transaction;

    .line 3262
    :try_start_0
    invoke-virtual {p4, p0}, Lorg/bitcoinj/core/Transaction;->getValue(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total value (sends "

    .line 3263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3264
    invoke-virtual {p4, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and receives "

    .line 3265
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3266
    invoke-virtual {p4, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    .line 3267
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 3271
    :goto_2
    invoke-virtual {p4}, Lorg/bitcoinj/core/Transaction;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "  confidence: "

    .line 3272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3273
    :cond_1
    invoke-virtual {p4, p3}, Lorg/bitcoinj/core/Transaction;->toString(Lorg/bitcoinj/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateForSpends(Lorg/bitcoinj/core/Transaction;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 2230
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2232
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2233
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionInput;

    .line 2234
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/core/TransactionInput;->connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v3

    .line 2235
    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v3, v4, :cond_2

    .line 2237
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/core/TransactionInput;->connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v3

    .line 2238
    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v3, v4, :cond_2

    .line 2240
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {v2, v3, v4}, Lorg/bitcoinj/core/TransactionInput;->connect(Ljava/util/Map;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v3

    .line 2241
    sget-object v4, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->NO_SUCH_TX:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 2248
    :cond_2
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 2249
    sget-object v5, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v3, v5, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    .line 2261
    :cond_3
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "Saw two pending transactions double spend each other"

    invoke-interface {v3, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2262
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "  offending input is input {}"

    invoke-interface {v3, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2263
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    sget-object v5, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v5

    const-string v6, "{}: {}"

    invoke-interface {v2, v6, v3, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2264
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v2

    .line 2265
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    sget-object v5, Lorg/bitcoinj/core/Utils;->HEX:Lcom/google/common/io/BaseEncoding;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2267
    :cond_4
    sget-object v5, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v3, v5, :cond_1

    .line 2271
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getConnectedTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Transaction;

    .line 2272
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "  marked {} as spent by {}"

    invoke-interface {v5, v7, v2, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "prevtx"

    .line 2273
    invoke-direct {p0, v3, v2}, Lorg/bitcoinj/wallet/Wallet;->maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v4, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2276
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_0

    .line 2286
    :cond_5
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 2287
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionInput;

    .line 2288
    sget-object v5, Lorg/bitcoinj/core/TransactionInput$ConnectMode;->ABORT_ON_CONFLICT:Lorg/bitcoinj/core/TransactionInput$ConnectMode;

    invoke-virtual {v4, p1, v5}, Lorg/bitcoinj/core/TransactionInput;->connect(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionInput$ConnectMode;)Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    move-result-object v5

    if-eqz p2, :cond_9

    .line 2292
    sget-object v6, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->ALREADY_SPENT:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-eq v5, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2294
    :cond_9
    sget-object v6, Lorg/bitcoinj/core/TransactionInput$ConnectionResult;->SUCCESS:Lorg/bitcoinj/core/TransactionInput$ConnectionResult;

    if-ne v5, v6, :cond_7

    .line 2295
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    .line 2296
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Connected pending tx input {}:{}"

    .line 2295
    invoke-interface {v5, v8, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2299
    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2300
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    const-string v6, "Removed from UNSPENTS: {}"

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    const-string p2, "pendingtx"

    .line 2305
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->maybeMovePool(Lorg/bitcoinj/core/Transaction;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addAndActivateHDChain(Lorg/bitcoinj/wallet/DeterministicKeyChain;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 752
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->addAndActivateHDChain(Lorg/bitcoinj/wallet/DeterministicKeyChain;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)V
    .locals 2

    .line 2543
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChangeEventListener(Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)V
    .locals 1

    .line 2534
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)V

    return-void
.end method

.method public addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V
    .locals 2

    .line 2560
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCoinsReceivedEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V
    .locals 1

    .line 2551
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V

    return-void
.end method

.method public addCoinsSentEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)V
    .locals 2

    .line 2577
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsSentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCoinsSentEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)V
    .locals 1

    .line 2568
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsSentEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/WalletEventListener;)V
    .locals 1

    .line 2508
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)V

    .line 2509
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V

    .line 2510
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsSentEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)V

    .line 2511
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addKeyChainEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V

    .line 2512
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addReorganizeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)V

    .line 2513
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addScriptChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V

    .line 2514
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addTransactionConfidenceEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)V

    return-void
.end method

.method public addEventListener(Lorg/bitcoinj/wallet/listeners/WalletEventListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2520
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsReceivedEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)V

    .line 2521
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addCoinsSentEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)V

    .line 2522
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)V

    .line 2523
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addKeyChainEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V

    .line 2524
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addReorganizeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)V

    .line 2525
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addScriptChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V

    .line 2526
    invoke-virtual {p0, p2, p1}, Lorg/bitcoinj/wallet/Wallet;->addTransactionConfidenceEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)V

    return-void
.end method

.method public addExtension(Lorg/bitcoinj/wallet/WalletExtension;)V
    .locals 3

    .line 4712
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/WalletExtension;

    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 4713
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4715
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4717
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4718
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4720
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 4716
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot add two extensions with the same ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 4720
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->importKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result p1

    return p1
.end method

.method public addKeyChainEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
    .locals 1

    .line 2593
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p2, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addKeyChainEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)V
    .locals 2

    .line 2585
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    sget-object v1, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->addEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public addKeys(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->importKeys(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public addOrGetExistingExtension(Lorg/bitcoinj/wallet/WalletExtension;)Lorg/bitcoinj/wallet/WalletExtension;
    .locals 2

    .line 4728
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/WalletExtension;

    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 4729
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4731
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/WalletExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4738
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 4734
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4735
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4738
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addOrUpdateExtension(Lorg/bitcoinj/wallet/WalletExtension;)V
    .locals 2

    .line 4748
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/WalletExtension;

    invoke-interface {v0}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    .line 4749
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4751
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4752
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4754
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addReorganizeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)V
    .locals 2

    .line 2610
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addReorganizeEventListener(Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)V
    .locals 1

    .line 2601
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addReorganizeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)V

    return-void
.end method

.method public addScriptChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V
    .locals 2

    .line 2627
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->scriptChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScriptsChangeEventListener(Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V
    .locals 1

    .line 2618
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addScriptChangeEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)V

    return-void
.end method

.method public addTransactionConfidenceEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)V
    .locals 2

    .line 2644
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactionConfidenceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {v1, p2, p1}, Lorg/bitcoinj/utils/ListenerRegistration;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransactionConfidenceEventListener(Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)V
    .locals 1

    .line 2635
    sget-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addTransactionConfidenceEventListener(Ljava/util/concurrent/Executor;Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)V

    return-void
.end method

.method public final addTransactionSigner(Lorg/bitcoinj/signers/TransactionSigner;)V
    .locals 3

    .line 380
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 382
    :try_start_0
    invoke-interface {p1}, Lorg/bitcoinj/signers/TransactionSigner;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->signers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 385
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signer instance is not ready to be added into Wallet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 387
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method addTransactionsDependingOn(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 1837
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1838
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 1839
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1841
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1842
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 1843
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Transaction;

    .line 1844
    invoke-virtual {v3, v1}, Lorg/bitcoinj/core/Transaction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1845
    :cond_2
    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionInput;

    .line 1846
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1847
    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1848
    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction;)V
    .locals 1

    .line 2853
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2855
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction;->getPool()Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction;->getTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2857
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public addWatchedAddress(Lorg/bitcoinj/core/Address;)Z
    .locals 5

    .line 845
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/bitcoinj/core/Address;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 846
    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->addWatchedAddresses(Ljava/util/List;J)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public addWatchedAddress(Lorg/bitcoinj/core/Address;J)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bitcoinj/core/Address;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 856
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bitcoinj/wallet/Wallet;->addWatchedAddresses(Ljava/util/List;J)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addWatchedAddresses(Ljava/util/List;J)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;J)I"
        }
    .end annotation

    .line 866
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 868
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Address;

    .line 869
    invoke-static {v1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v1

    .line 870
    invoke-virtual {v1, p2, p3}, Lorg/bitcoinj/script/Script;->setCreationTimeSeconds(J)V

    .line 871
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->addWatchedScripts(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public addWatchedScripts(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;)I"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 890
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/Script;

    .line 893
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 895
    :cond_0
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->getCreationTimeSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 896
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Adding a script to the wallet with a creation time of zero, this will disable the checkpointing optimization!    {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    :cond_1
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 901
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 904
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;->queueOnScriptsChanged(Ljava/util/List;Z)V

    .line 905
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    :cond_3
    return v1

    :catchall_0
    move-exception p1

    .line 901
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public allowSpendingUnconfirmedTransactions()V
    .locals 1

    .line 4264
    invoke-static {}, Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;->get()Lorg/bitcoinj/wallet/AllowUnconfirmedCoinSelector;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->setCoinSelector(Lorg/bitcoinj/wallet/CoinSelector;)V

    return-void
.end method

.method public autosaveToFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Lorg/bitcoinj/wallet/WalletFiles$Listener;)Lorg/bitcoinj/wallet/WalletFiles;
    .locals 8
    .param p5    # Lorg/bitcoinj/wallet/WalletFiles$Listener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1418
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1420
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already auto saving this wallet."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1421
    new-instance v0, Lorg/bitcoinj/wallet/WalletFiles;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/wallet/WalletFiles;-><init>(Lorg/bitcoinj/wallet/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V

    if-eqz p5, :cond_1

    .line 1423
    invoke-virtual {v0, p5}, Lorg/bitcoinj/wallet/WalletFiles;->setListener(Lorg/bitcoinj/wallet/WalletFiles$Listener;)V

    .line 1424
    :cond_1
    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public beginBloomFilterCalculation()V
    .locals 2

    .line 4550
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->bloomFilterGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return-void

    .line 4552
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4553
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4555
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->calcBloomOutPointsLocked()V

    return-void
.end method

.method public calculateAllSpendCandidates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4096
    invoke-virtual {p0, v0, v0}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public calculateAllSpendCandidates(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 4102
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public calculateAllSpendCandidates(ZZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 4114
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4117
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;

    if-nez v0, :cond_2

    .line 4118
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4119
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    if-eqz p2, :cond_0

    .line 4120
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bitcoinj/wallet/Wallet;->canSignFor(Lorg/bitcoinj/script/Script;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4121
    :cond_0
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getParentTransaction()Lorg/bitcoinj/core/Transaction;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Transaction;

    if-eqz p1, :cond_1

    .line 4122
    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->isMature()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 4124
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4127
    :cond_2
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidatesFromUTXOProvider(Z)Ljava/util/LinkedList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4131
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected calculateAllSpendCandidatesFromUTXOProvider(Z)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 4178
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4179
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;

    const-string v1, "No UTXO provider has been set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/UTXOProvider;

    .line 4180
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 4182
    :try_start_0
    invoke-interface {v0}, Lorg/bitcoinj/core/UTXOProvider;->getChainHeadHeight()I

    move-result v0

    .line 4183
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getStoredOutputsFromUTXOProvider()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/UTXO;

    .line 4184
    invoke-virtual {v3}, Lorg/bitcoinj/core/UTXO;->isCoinbase()Z

    move-result v4

    .line 4185
    invoke-virtual {v3}, Lorg/bitcoinj/core/UTXO;->getHeight()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v5, v5, 0x1

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 4187
    iget-object v4, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/NetworkParameters;->getSpendableCoinbaseDepth()I

    move-result v4

    if-lt v5, v4, :cond_0

    .line 4188
    :cond_1
    new-instance v4, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;

    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v4, p0, v5, v3, v0}, Lorg/bitcoinj/wallet/Wallet$FreeStandingTransactionOutput;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/UTXO;I)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bitcoinj/core/UTXOProviderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4195
    :cond_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 4197
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionInput;

    .line 4198
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4199
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    .line 4203
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->isMature()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4204
    :cond_6
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionOutput;

    .line 4205
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4206
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-object v1

    :catch_0
    move-exception p1

    .line 4192
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UTXO provider error"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public calculateFee(Lorg/bitcoinj/wallet/SendRequest;Lorg/bitcoinj/core/Coin;Ljava/util/List;ZLjava/util/List;)Lorg/bitcoinj/wallet/Wallet$FeeCalculation;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/SendRequest;",
            "Lorg/bitcoinj/core/Coin;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionInput;",
            ">;Z",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;)",
            "Lorg/bitcoinj/wallet/Wallet$FeeCalculation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 4809
    iget-object v3, v0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 4827
    :goto_0
    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->resetTxInputs(Lorg/bitcoinj/wallet/SendRequest;Ljava/util/List;)V

    .line 4829
    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    int-to-long v13, v5

    invoke-virtual {v12, v13, v14}, Lorg/bitcoinj/core/Coin;->multiply(J)Lorg/bitcoinj/core/Coin;

    move-result-object v12

    const-wide/16 v13, 0x3e8

    invoke-virtual {v12, v13, v14}, Lorg/bitcoinj/core/Coin;->divide(J)Lorg/bitcoinj/core/Coin;

    move-result-object v12

    if-eqz p4, :cond_0

    .line 4830
    sget-object v13, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v12, v13}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v13

    if-gez v13, :cond_0

    .line 4831
    sget-object v12, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    :cond_0
    move-object/from16 v13, p2

    .line 4833
    invoke-virtual {v13, v12}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    if-eqz v6, :cond_1

    .line 4835
    invoke-virtual {v14, v6}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    .line 4839
    :cond_1
    iget-object v15, v1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    if-nez v15, :cond_2

    iget-object v15, v0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    goto :goto_1

    :cond_2
    iget-object v15, v1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    .line 4841
    :goto_1
    new-instance v4, Ljava/util/LinkedList;

    move-object/from16 v3, p5

    invoke-direct {v4, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v15, v14, v4}, Lorg/bitcoinj/wallet/CoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object v4

    .line 4843
    iget-object v15, v4, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v15, v14}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v15

    if-gez v15, :cond_3

    .line 4844
    iget-object v3, v4, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v14, v3}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto/16 :goto_f

    .line 4847
    :cond_3
    iget-object v15, v4, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    const/16 v17, 0x1

    if-gtz v15, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_4

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v15, 0x1

    :goto_3
    invoke-static {v15}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4858
    iget-object v15, v4, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v15, v14}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    if-eqz v6, :cond_6

    .line 4860
    invoke-virtual {v14, v6}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    .line 4863
    :cond_6
    iget-boolean v15, v1, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    if-eqz v15, :cond_7

    sget-object v15, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v14, v15}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    sget-object v15, Lorg/bitcoinj/core/Coin;->CENT:Lorg/bitcoinj/core/Coin;

    .line 4864
    invoke-virtual {v14, v15}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v15

    if-gez v15, :cond_7

    sget-object v15, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v12, v15}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v15

    if-gez v15, :cond_7

    .line 4867
    sget-object v15, Lorg/bitcoinj/core/Coin;->CENT:Lorg/bitcoinj/core/Coin;

    .line 4869
    sget-object v3, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v12}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v14

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move-object v15, v6

    const/4 v3, 0x0

    .line 4874
    :goto_4
    invoke-virtual {v14}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v12

    if-lez v12, :cond_a

    .line 4878
    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->changeAddress:Lorg/bitcoinj/core/Address;

    if-nez v12, :cond_8

    .line 4880
    invoke-virtual/range {p0 .. p0}, Lorg/bitcoinj/wallet/Wallet;->currentChangeAddress()Lorg/bitcoinj/core/Address;

    move-result-object v12

    :cond_8
    move-object/from16 v18, v10

    .line 4881
    new-instance v10, Lorg/bitcoinj/core/TransactionOutput;

    move-object/from16 v19, v11

    iget-object v11, v0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v13, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-direct {v10, v11, v13, v14, v12}, Lorg/bitcoinj/core/TransactionOutput;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Address;)V

    .line 4883
    iget-boolean v11, v1, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->isDust()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 4886
    sget-object v11, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    .line 4887
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getMinNonDustValue()Lorg/bitcoinj/core/Coin;

    move-result-object v12

    sget-object v13, Lorg/bitcoinj/core/Coin;->SATOSHI:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v12, v13}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v12

    .line 4886
    invoke-virtual {v11, v12}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v11

    move-object v15, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_5

    .line 4889
    :cond_9
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->unsafeBitcoinSerialize()[B

    move-result-object v11

    array-length v11, v11

    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v12}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    int-to-long v12, v12

    invoke-static {v12, v13}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v12}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    int-to-long v12, v12

    invoke-static {v12, v13}, Lorg/bitcoinj/core/VarInt;->sizeOf(J)I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    add-int/2addr v11, v12

    const/4 v13, 0x0

    if-nez v3, :cond_c

    const/4 v15, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    const/4 v12, 0x0

    if-eqz v3, :cond_b

    .line 4898
    sget-object v10, Lorg/bitcoinj/core/Transaction;->REFERENCE_DEFAULT_MIN_TX_FEE:Lorg/bitcoinj/core/Coin;

    sget-object v11, Lorg/bitcoinj/core/Coin;->SATOSHI:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v10, v11}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v10

    move-object v15, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_5
    const/4 v13, 0x1

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 4903
    :cond_c
    :goto_6
    iget-object v14, v4, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/bitcoinj/core/TransactionOutput;

    move-object/from16 v16, v14

    .line 4904
    iget-object v14, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v14, v12}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v12

    .line 4906
    invoke-virtual {v12}, Lorg/bitcoinj/core/TransactionInput;->getScriptBytes()[B

    move-result-object v12

    array-length v12, v12

    if-nez v12, :cond_d

    const/4 v12, 0x1

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move-object/from16 v14, v16

    const/4 v12, 0x0

    goto :goto_7

    .line 4911
    :cond_e
    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v12}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v12

    array-length v12, v12

    add-int/2addr v11, v12

    .line 4912
    invoke-direct {v0, v4}, Lorg/bitcoinj/wallet/Wallet;->estimateBytesForSigning(Lorg/bitcoinj/wallet/CoinSelection;)I

    move-result v12

    add-int/2addr v11, v12

    if-le v11, v5, :cond_f

    .line 4913
    iget-object v12, v1, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v12}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v12

    if-lez v12, :cond_f

    move v5, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_0

    :cond_f
    if-eqz v13, :cond_11

    if-nez v7, :cond_10

    move-object v7, v4

    :cond_10
    move-object/from16 v10, v18

    :goto_9
    move-object/from16 v11, v19

    goto :goto_d

    :cond_11
    if-eqz v3, :cond_13

    if-nez v9, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    .line 4926
    :goto_a
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4927
    sget-object v3, Lorg/bitcoinj/core/Coin;->CENT:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v15, v3}, Lorg/bitcoinj/core/Coin;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4929
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionOutput;

    move-object v10, v3

    move-object v9, v4

    goto :goto_9

    :cond_13
    if-nez v8, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    .line 4932
    :goto_b
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    if-nez v15, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    .line 4933
    :goto_c
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move-object v8, v4

    move-object v11, v10

    move-object/from16 v10, v18

    :goto_d
    if-eqz v15, :cond_18

    if-eqz v6, :cond_17

    .line 4940
    invoke-virtual {v15, v6}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v3

    if-lez v3, :cond_16

    goto :goto_e

    :cond_16
    const/16 v17, 0x0

    :goto_e
    invoke-static/range {v17 .. v17}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    :cond_17
    move-object v6, v15

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x0

    .line 4946
    :goto_f
    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->resetTxInputs(Lorg/bitcoinj/wallet/SendRequest;Ljava/util/List;)V

    if-nez v7, :cond_1a

    if-nez v9, :cond_1a

    if-eqz v8, :cond_19

    goto :goto_10

    .line 4949
    :cond_19
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4950
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Insufficient value in wallet for send: needed {} more"

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4951
    new-instance v1, Lorg/bitcoinj/core/InsufficientMoneyException;

    invoke-direct {v1, v3}, Lorg/bitcoinj/core/InsufficientMoneyException;-><init>(Lorg/bitcoinj/core/Coin;)V

    throw v1

    .line 4955
    :cond_1a
    :goto_10
    new-instance v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;-><init>(Lorg/bitcoinj/wallet/Wallet$1;)V

    if-eqz v8, :cond_1c

    if-eqz v11, :cond_1b

    .line 4958
    iget-object v2, v8, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v11}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    goto :goto_11

    .line 4960
    :cond_1b
    iget-object v2, v8, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    .line 4961
    :goto_11
    iput-object v8, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestCoinSelection:Lorg/bitcoinj/wallet/CoinSelection;

    .line 4962
    iput-object v11, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestChangeOutput:Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    :goto_12
    if-eqz v9, :cond_1e

    .line 4966
    iget-object v3, v9, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-static {v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    if-eqz v2, :cond_1d

    .line 4967
    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v4

    if-gez v4, :cond_1e

    .line 4969
    :cond_1d
    iput-object v9, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestCoinSelection:Lorg/bitcoinj/wallet/CoinSelection;

    .line 4970
    iput-object v10, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestChangeOutput:Lorg/bitcoinj/core/TransactionOutput;

    move-object v2, v3

    :cond_1e
    if-eqz v7, :cond_20

    if-eqz v2, :cond_1f

    .line 4975
    iget-object v3, v7, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v2}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v2

    if-gez v2, :cond_20

    .line 4976
    :cond_1f
    iput-object v7, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestCoinSelection:Lorg/bitcoinj/wallet/CoinSelection;

    const/4 v2, 0x0

    .line 4977
    iput-object v2, v1, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestChangeOutput:Lorg/bitcoinj/core/TransactionOutput;

    :cond_20
    return-object v1
.end method

.method public canSignFor(Lorg/bitcoinj/script/Script;)Z
    .locals 5

    .line 4140
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToRawPubKey()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4141
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKey()[B

    move-result-object p1

    .line 4142
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4143
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 4144
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4145
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4146
    iget-object p1, p1, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->canSignFor(Lorg/bitcoinj/script/Script;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    .line 4147
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4148
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 4149
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    return v1

    .line 4150
    :cond_7
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToMultiSig()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4151
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/ECKey;

    .line 4152
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 4153
    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_9
    return v2

    .line 4156
    :cond_a
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isSentToCLTVPaymentChannel()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4158
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getCLTVPaymentChannelSenderPubKey()[B

    move-result-object v0

    .line 4159
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 4160
    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    return v2

    .line 4163
    :cond_c
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getCLTVPaymentChannelRecipientPubKey()[B

    .line 4164
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 4165
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->hasPrivKey()Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    return v2

    :cond_e
    return v1
.end method

.method public changeEncryptionKey(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 1

    .line 1262
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1264
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V

    .line 1265
    invoke-virtual {p0, p1, p3}, Lorg/bitcoinj/wallet/Wallet;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public changeEncryptionPassword(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1251
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1253
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->decrypt(Ljava/lang/CharSequence;)V

    .line 1254
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->encrypt(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z
    .locals 1

    .line 1204
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1206
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->checkAESKey(Lorg/spongycastle/crypto/params/KeyParameter;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public checkForFilterExhaustion(Lorg/bitcoinj/core/FilteredBlock;)Z
    .locals 4

    .line 4683
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4685
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getCombinedKeyLookaheadEpochs()I

    move-result v0

    .line 4686
    invoke-virtual {p1}, Lorg/bitcoinj/core/FilteredBlock;->getAssociatedTransactions()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 4687
    invoke-direct {p0, v1}, Lorg/bitcoinj/wallet/Wallet;->markKeysAsUsed(Lorg/bitcoinj/core/Transaction;)V

    goto :goto_0

    .line 4689
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->getCombinedKeyLookaheadEpochs()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 4690
    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 4696
    :goto_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public checkPassword(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1190
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1192
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->checkPassword(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public cleanup()V
    .locals 6

    .line 3048
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 3051
    :try_start_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3052
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    const/4 v3, 0x0

    .line 3053
    invoke-virtual {p0, v2, v3}, Lorg/bitcoinj/wallet/Wallet;->isTransactionRisky(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lorg/bitcoinj/wallet/Wallet;->acceptRiskyTransactions:Z

    if-nez v3, :cond_0

    .line 3054
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Found risky transaction {} in wallet during cleanup."

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3055
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->isAnyOutputSpent()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3057
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionInput;

    .line 3058
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 3060
    :cond_1
    invoke-virtual {v4, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3061
    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3062
    :cond_2
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionInput;->disconnect()Z

    goto :goto_1

    .line 3064
    :cond_3
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionOutput;

    .line 3065
    iget-object v4, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3067
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3068
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3070
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Removed transaction {} from pending pool during cleanup."

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3072
    :cond_5
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Cannot remove transaction {} from pending pool during cleanup, as it\'s already spent partially."

    .line 3074
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    .line 3072
    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 3079
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistentOrThrow()V

    .line 3080
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V

    .line 3081
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3082
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Estimated balance is now: {}"

    sget-object v2, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3085
    :cond_7
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clearTransactions(I)V
    .locals 1

    .line 2991
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez p1, :cond_0

    .line 2994
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->clearTransactions()V

    .line 2995
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3000
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 2997
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 3000
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public commitTx(Lorg/bitcoinj/core/Transaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 2494
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->maybeCommitTx(Lorg/bitcoinj/core/Transaction;)Z

    move-result p1

    const-string v0, "commitTx called on the same transaction twice"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method public completeTx(Lorg/bitcoinj/wallet/SendRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3918
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3920
    :try_start_0
    iget-boolean v0, p1, Lorg/bitcoinj/wallet/SendRequest;->completed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Given SendRequest has already been completed."

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3922
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3923
    iget-object v3, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 3924
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_1

    .line 3927
    :cond_1
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "Completing send tx with {} outputs totalling {} and a fee of {}/kB"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 3928
    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    iget-object v7, p1, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v7}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3927
    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3931
    sget-object v3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3932
    iget-object v4, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionInput;

    .line 3933
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3934
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto :goto_2

    .line 3936
    :cond_2
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v6, "SendRequest transaction already has inputs but we don\'t know how much they are worth - they will be added to fee."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 3937
    :cond_3
    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v5

    .line 3939
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3942
    iget-boolean v0, p1, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p1, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    if-nez v0, :cond_8

    .line 3944
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 3945
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->isDust()Z

    move-result v7

    if-nez v7, :cond_5

    .line 3947
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/script/Script;->isOpReturn()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3946
    :cond_5
    new-instance p1, Lorg/bitcoinj/wallet/Wallet$DustySendRequested;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/Wallet$DustySendRequested;-><init>()V

    throw p1

    :cond_6
    if-gt v3, v2, :cond_7

    goto :goto_4

    .line 3951
    :cond_7
    new-instance p1, Lorg/bitcoinj/wallet/Wallet$MultipleOpReturnRequested;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/Wallet$MultipleOpReturnRequested;-><init>()V

    throw p1

    .line 3958
    :cond_8
    :goto_4
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    sget-object v3, Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;->THROW:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v2, v0}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object v8

    const/4 v0, 0x0

    .line 3962
    iget-boolean v3, p1, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    if-nez v3, :cond_a

    .line 3964
    iget-boolean v7, p1, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/bitcoinj/wallet/Wallet;->calculateFee(Lorg/bitcoinj/wallet/SendRequest;Lorg/bitcoinj/core/Coin;Ljava/util/List;ZLjava/util/List;)Lorg/bitcoinj/wallet/Wallet$FeeCalculation;

    move-result-object v0

    .line 3965
    iget-object v1, v0, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestCoinSelection:Lorg/bitcoinj/wallet/CoinSelection;

    .line 3966
    iget-object v0, v0, Lorg/bitcoinj/wallet/Wallet$FeeCalculation;->bestChangeOutput:Lorg/bitcoinj/core/TransactionOutput;

    goto :goto_7

    .line 3970
    :cond_a
    iget-object v3, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    const-string v3, "Empty wallet TX must have a single output only."

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3971
    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    goto :goto_6

    :cond_c
    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    .line 3972
    :goto_6
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v3}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-interface {v1, v3, v8}, Lorg/bitcoinj/wallet/CoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object v1

    .line 3974
    iget-object v3, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/bitcoinj/core/Transaction;->getOutput(J)Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v3

    iget-object v4, v1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/TransactionOutput;->setValue(Lorg/bitcoinj/core/Coin;)V

    .line 3975
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "  emptying {}"

    iget-object v5, v1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    invoke-virtual {v5}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3978
    :goto_7
    iget-object v3, v1, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 3979
    iget-object v5, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v5, v4}, Lorg/bitcoinj/core/Transaction;->addInput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionInput;

    goto :goto_8

    .line 3981
    :cond_d
    iget-boolean v3, p1, Lorg/bitcoinj/wallet/SendRequest;->emptyWallet:Z

    if-eqz v3, :cond_10

    .line 3982
    iget-object v3, p1, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    if-nez v3, :cond_e

    sget-object v3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    goto :goto_9

    :cond_e
    iget-object v3, p1, Lorg/bitcoinj/wallet/SendRequest;->feePerKb:Lorg/bitcoinj/core/Coin;

    .line 3983
    :goto_9
    iget-object v4, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    iget-boolean v5, p1, Lorg/bitcoinj/wallet/SendRequest;->ensureMinRequiredFee:Z

    invoke-direct {p0, v4, v1, v3, v5}, Lorg/bitcoinj/wallet/Wallet;->adjustOutputDownwardsForFee(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/wallet/CoinSelection;Lorg/bitcoinj/core/Coin;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_a

    .line 3984
    :cond_f
    new-instance p1, Lorg/bitcoinj/wallet/Wallet$CouldNotAdjustDownwards;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/Wallet$CouldNotAdjustDownwards;-><init>()V

    throw p1

    :cond_10
    :goto_a
    if-eqz v0, :cond_11

    .line 3988
    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/Transaction;->addOutput(Lorg/bitcoinj/core/TransactionOutput;)Lorg/bitcoinj/core/TransactionOutput;

    .line 3989
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "  with {} change"

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3993
    :cond_11
    iget-boolean v0, p1, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    if-eqz v0, :cond_12

    .line 3994
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->shuffleOutputs()V

    .line 3997
    :cond_12
    iget-boolean v0, p1, Lorg/bitcoinj/wallet/SendRequest;->signInputs:Z

    if-eqz v0, :cond_13

    .line 3998
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->signTransaction(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 4001
    :cond_13
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->unsafeBitcoinSerialize()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0x186a0

    if-gt v0, v1, :cond_14

    .line 4008
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/core/TransactionConfidence$Source;->SELF:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/TransactionConfidence;->setSource(Lorg/bitcoinj/core/TransactionConfidence$Source;)V

    .line 4012
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    sget-object v1, Lorg/bitcoinj/core/Transaction$Purpose;->USER_PAYMENT:Lorg/bitcoinj/core/Transaction$Purpose;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->setPurpose(Lorg/bitcoinj/core/Transaction$Purpose;)V

    .line 4014
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->exchangeRate:Lorg/bitcoinj/utils/ExchangeRate;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->setExchangeRate(Lorg/bitcoinj/utils/ExchangeRate;)V

    .line 4015
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    iget-object v1, p1, Lorg/bitcoinj/wallet/SendRequest;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Transaction;->setMemo(Ljava/lang/String;)V

    .line 4016
    iput-boolean v2, p1, Lorg/bitcoinj/wallet/SendRequest;->completed:Z

    .line 4017
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "  completed: {}"

    iget-object p1, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4019
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 4003
    :cond_14
    :try_start_1
    new-instance p1, Lorg/bitcoinj/wallet/Wallet$ExceededMaxTransactionSize;

    invoke-direct {p1}, Lorg/bitcoinj/wallet/Wallet$ExceededMaxTransactionSize;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 4019
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public createSend(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3738
    invoke-static {p1, p2}, Lorg/bitcoinj/wallet/SendRequest;->to(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p1

    .line 3739
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {p2}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "org.bitcoinj.unittest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3740
    iput-boolean p2, p1, Lorg/bitcoinj/wallet/SendRequest;->shuffleOutputs:Z

    .line 3741
    :cond_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 3742
    iget-object p1, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    return-object p1
.end method

.method public currentAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 435
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 436
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->currentAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public currentChangeAddress()Lorg/bitcoinj/core/Address;
    .locals 1

    .line 652
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->CHANGE:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->currentAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public currentKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 414
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 415
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->currentKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public currentReceiveAddress()Lorg/bitcoinj/core/Address;
    .locals 1

    .line 447
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->currentAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public currentReceiveKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 426
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->currentKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1155
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1157
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Not encrypted"

    .line 1158
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1159
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-interface {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1163
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void

    :catchall_0
    move-exception p1

    .line 1161
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 1

    .line 1173
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1175
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->decrypt(Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1179
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void

    :catchall_0
    move-exception p1

    .line 1177
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public deserializeExtension(Lorg/bitcoinj/wallet/WalletExtension;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4774
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4775
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4778
    :try_start_0
    invoke-interface {p1, p0, p2}, Lorg/bitcoinj/wallet/WalletExtension;->deserializeWalletExtension(Lorg/bitcoinj/wallet/Wallet;[B)V

    .line 4779
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4785
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4786
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 4781
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Error during extension deserialization"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4782
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/bitcoinj/wallet/WalletExtension;->getWalletExtensionID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4783
    invoke-static {p2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 4785
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4786
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public doMaintenance(Lorg/spongycastle/crypto/params/KeyParameter;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    .line 5137
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5138
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5140
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->maybeRotateKeys(Lorg/spongycastle/crypto/params/KeyParameter;Z)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_0

    .line 5142
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5144
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5145
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 5144
    :cond_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5145
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5147
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 5148
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5149
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vTransactionBroadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    .line 5150
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Transaction;

    .line 5152
    :try_start_1
    invoke-interface {v0, v1}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 5153
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5154
    new-instance v2, Lorg/bitcoinj/wallet/Wallet$10;

    invoke-direct {v2, p0}, Lorg/bitcoinj/wallet/Wallet$10;-><init>(Lorg/bitcoinj/wallet/Wallet;)V

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5166
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed to broadcast rekey tx"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5169
    :cond_1
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 5144
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5145
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public encrypt(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1122
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1124
    :try_start_0
    new-instance v0, Lorg/bitcoinj/crypto/KeyCrypterScrypt;

    invoke-direct {v0}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;-><init>()V

    .line 1125
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/crypto/KeyCrypterScrypt;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1129
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void

    :catchall_0
    move-exception p1

    .line 1127
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 1

    .line 1141
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1143
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/KeyChainGroup;->encrypt(Lorg/bitcoinj/crypto/KeyCrypter;Lorg/spongycastle/crypto/params/KeyParameter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1147
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void

    :catchall_0
    move-exception p1

    .line 1145
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public endBloomFilterCalculation()V
    .locals 1
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation

    .line 4580
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->bloomFilterGuard:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 4582
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4583
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4584
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 983
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 985
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1023
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1025
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1043
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1045
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1047
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 500
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 504
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 502
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    const/4 v0, 0x1

    .line 459
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;->freshKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/crypto/DeterministicKey;

    return-object p1
.end method

.method public freshKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;",
            "I)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/DeterministicKey;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 474
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 475
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/KeyChainGroup;->freshKeys(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 481
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 477
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public freshReceiveAddress()Lorg/bitcoinj/core/Address;
    .locals 1

    .line 513
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->freshAddress(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public freshReceiveKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 1

    .line 490
    sget-object v0, Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;->RECEIVE_FUNDS:Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->freshKey(Lorg/bitcoinj/wallet/KeyChain$KeyPurpose;)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0

    return-object v0
.end method

.method public getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;
    .locals 1

    .line 370
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    return-object v0
.end method

.method public getBalance()Lorg/bitcoinj/core/Coin;
    .locals 1

    .line 3487
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    return-object v0
.end method

.method public getBalance(Lorg/bitcoinj/wallet/CoinSelector;)Lorg/bitcoinj/core/Coin;
    .locals 2

    .line 3519
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3521
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3522
    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object v0

    .line 3523
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getMaxMoney()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lorg/bitcoinj/wallet/CoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object p1

    .line 3524
    iget-object p1, p1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3526
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;
    .locals 3

    .line 3494
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3496
    :try_start_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    if-ne p1, v0, :cond_0

    goto :goto_3

    .line 3500
    :cond_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 3506
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unknown balance type"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3501
    :cond_2
    :goto_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object p1

    .line 3502
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3503
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/TransactionOutput;

    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 3509
    :cond_4
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 3497
    :cond_5
    :goto_3
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    if-ne p1, v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-virtual {p0, v2, v1}, Lorg/bitcoinj/wallet/Wallet;->calculateAllSpendCandidates(ZZ)Ljava/util/List;

    move-result-object p1

    .line 3498
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;

    sget-object v1, Lorg/bitcoinj/core/NetworkParameters;->MAX_MONEY:Lorg/bitcoinj/core/Coin;

    invoke-interface {v0, v1, p1}, Lorg/bitcoinj/wallet/CoinSelector;->select(Lorg/bitcoinj/core/Coin;Ljava/util/List;)Lorg/bitcoinj/wallet/CoinSelection;

    move-result-object p1

    .line 3499
    iget-object p1, p1, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3509
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getBalanceFuture(Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lorg/bitcoinj/wallet/Wallet$BalanceType;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Coin;",
            ">;"
        }
    .end annotation

    .line 3552
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3554
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 3555
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 3556
    invoke-virtual {v1, p1}, Lorg/bitcoinj/core/Coin;->compareTo(Lorg/bitcoinj/core/Coin;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 3558
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3563
    :cond_0
    new-instance v1, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;-><init>(Lorg/bitcoinj/wallet/Wallet$1;)V

    .line 3564
    iput-object v0, v1, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3565
    iput-object p1, v1, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->value:Lorg/bitcoinj/core/Coin;

    .line 3566
    iput-object p2, v1, Lorg/bitcoinj/wallet/Wallet$BalanceFutureRequest;->type:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    .line 3567
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->balanceFutureRequests:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3571
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getBloomFilter(D)Lorg/bitcoinj/core/BloomFilter;
    .locals 6

    .line 4628
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->beginBloomFilterCalculation()V

    .line 4630
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBloomFilterElementCount()I

    move-result v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    mul-double v2, v2, v4

    double-to-long v4, v2

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/wallet/Wallet;->getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4632
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    throw p1
.end method

.method public getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;
    .locals 6
    .annotation runtime Lnet/jcip/annotations/GuardedBy;
        value = "keyChainGroupLock"
    .end annotation

    .line 4649
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->beginBloomFilterCalculation()V

    .line 4651
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/wallet/KeyChainGroup;->getBloomFilter(IDJ)Lorg/bitcoinj/core/BloomFilter;

    move-result-object p1

    .line 4652
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/script/Script;

    .line 4653
    invoke-virtual {p3}, Lorg/bitcoinj/script/Script;->getChunks()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bitcoinj/script/ScriptChunk;

    .line 4657
    invoke-virtual {p4}, Lorg/bitcoinj/script/ScriptChunk;->isOpCode()Z

    move-result p5

    if-nez p5, :cond_1

    iget-object p5, p4, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    array-length p5, p5

    const/16 v0, 0x8

    if-lt p5, v0, :cond_1

    .line 4658
    iget-object p4, p4, Lorg/bitcoinj/script/ScriptChunk;->data:[B

    invoke-virtual {p1, p4}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V

    goto :goto_0

    .line 4662
    :cond_2
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bitcoinj/core/TransactionOutPoint;

    .line 4663
    invoke-virtual {p3}, Lorg/bitcoinj/core/TransactionOutPoint;->unsafeBitcoinSerialize()[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/bitcoinj/core/BloomFilter;->insert([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4666
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    throw p1
.end method

.method public getBloomFilterElementCount()I
    .locals 2

    .line 4593
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->beginBloomFilterCalculation()V

    .line 4595
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->bloomOutPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4596
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v1}, Lorg/bitcoinj/wallet/KeyChainGroup;->getBloomFilterElementCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 4599
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    .line 4602
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->endBloomFilterCalculation()V

    throw v0
.end method

.method public getChangeAddress()Lorg/bitcoinj/core/Address;
    .locals 1

    .line 658
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->currentChangeAddress()Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSelector()Lorg/bitcoinj/wallet/CoinSelector;
    .locals 2

    .line 4235
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4237
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4239
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method getContainingPools(Lorg/bitcoinj/core/Transaction;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            ")",
            "Ljava/util/EnumSet<",
            "Lorg/bitcoinj/wallet/WalletTransaction$Pool;",
            ">;"
        }
    .end annotation

    .line 3090
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3092
    :try_start_0
    const-class v0, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 3093
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    .line 3094
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3095
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 3097
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3098
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 3100
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3101
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 3103
    :cond_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3104
    sget-object p1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3108
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getContext()Lorg/bitcoinj/core/Context;
    .locals 1

    .line 1493
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->context:Lorg/bitcoinj/core/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 3427
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEarliestKeyCreationTime()J
    .locals 5

    .line 3303
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3305
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getEarliestKeyCreationTime()J

    move-result-wide v0

    .line 3306
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/script/Script;

    .line 3307
    invoke-virtual {v3}, Lorg/bitcoinj/script/Script;->getCreationTimeSeconds()J

    move-result-wide v3

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3309
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    .locals 2

    .line 1232
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1234
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-interface {v0}, Lorg/bitcoinj/crypto/KeyCrypter;->getUnderstoodEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1238
    :cond_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1240
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/bitcoinj/wallet/WalletExtension;",
            ">;"
        }
    .end annotation

    .line 4760
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4762
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4764
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getImportedKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 644
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getImportedKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getIssuedReceiveAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getIssuedReceiveKeys()Ljava/util/List;

    move-result-object v0

    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 536
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/ECKey;

    .line 537
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bitcoinj/core/ECKey;->toAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getIssuedReceiveKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 523
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getIssuedReceiveKeys()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyByPath(Ljava/util/List;)Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/crypto/ChildNumber;",
            ">;)",
            "Lorg/bitcoinj/crypto/DeterministicKey;"
        }
    .end annotation

    .line 1107
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1109
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 1110
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getKeyByPath(Ljava/util/List;Z)Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getKeyChainGroupCombinedKeyLookaheadEpochs()I
    .locals 2

    .line 630
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 632
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getCombinedKeyLookaheadEpochs()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyChainGroupLookaheadSize()I
    .locals 2

    .line 770
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 772
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getLookaheadSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyChainGroupLookaheadThreshold()I
    .locals 2

    .line 791
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 793
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 794
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getLookaheadThreshold()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyChainGroupSize()I
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 622
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->numKeys()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyChainSeed()Lorg/bitcoinj/wallet/DeterministicSeed;
    .locals 2

    .line 1091
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1093
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getSeed()Lorg/bitcoinj/wallet/DeterministicSeed;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1095
    :cond_0
    :try_start_1
    new-instance v0, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;

    invoke-direct {v0}, Lorg/bitcoinj/core/ECKey$MissingPrivateKeyException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 1098
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1218
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1220
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getKeyRotationTime()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 5085
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Wallet;->vKeyRotationTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5087
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3319
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3321
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHash:Lorg/bitcoinj/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLastBlockSeenHeight()I
    .locals 2

    .line 3391
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3393
    :try_start_0
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3395
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getLastBlockSeenTime()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3379
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTimeSecs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3383
    :cond_0
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public getLastBlockSeenTimeSecs()J
    .locals 3

    .line 3362
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3364
    :try_start_0
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3366
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getNetworkParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public getParams()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 1488
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public getPendingTransactions()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 3281
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3283
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3285
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getPoolSize(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)I
    .locals 1

    .line 3114
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3116
    :try_start_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$11;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3124
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3128
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 3126
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unreachable"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3122
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    goto :goto_0

    .line 3120
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    goto :goto_0

    .line 3118
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3128
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getRecentTransactions(IZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 2910
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2912
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 2914
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move p1, v0

    .line 2918
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2920
    sget-object p2, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2921
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_3

    .line 2928
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 2924
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 2928
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getRiskAnalyzer()Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;
    .locals 2

    .line 1386
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1388
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->riskAnalyzer:Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected getStoredOutputsFromUTXOProvider()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/UTXO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/UTXOProviderException;
        }
    .end annotation

    .line 4220
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;

    const-string v1, "No UTXO provider has been set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/UTXOProvider;

    .line 4221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4222
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getImportedKeys()Ljava/util/List;

    move-result-object v2

    .line 4223
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getLeafKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/ECKey;

    .line 4226
    new-instance v5, Lorg/bitcoinj/core/Address;

    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v4}, Lorg/bitcoinj/core/ECKey;->getPubKeyHash()[B

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;[B)V

    .line 4227
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4229
    :cond_0
    invoke-interface {v0, v3}, Lorg/bitcoinj/core/UTXOProvider;->getOpenTransactionOutputs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public getTotalReceived()Lorg/bitcoinj/core/Coin;
    .locals 7

    .line 3603
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3607
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 3608
    sget-object v3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3609
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionOutput;

    .line 3610
    invoke-virtual {v5, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3611
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto :goto_1

    .line 3614
    :cond_2
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionInput;

    .line 3615
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 3616
    invoke-virtual {v4, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3617
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto :goto_2

    .line 3620
    :cond_4
    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->isPositive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3621
    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getTotalSent()Lorg/bitcoinj/core/Coin;
    .locals 8

    .line 3636
    sget-object v0, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3638
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 3640
    sget-object v3, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3641
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/TransactionOutput;

    .line 3642
    invoke-virtual {v5, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3643
    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    goto :goto_1

    .line 3648
    :cond_1
    sget-object v4, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 3649
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bitcoinj/core/TransactionInput;

    .line 3650
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3651
    invoke-virtual {v6, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMine(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3652
    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    goto :goto_2

    .line 3657
    :cond_3
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getInputSum()Lorg/bitcoinj/core/Coin;

    move-result-object v2

    if-eq v4, v2, :cond_4

    .line 3661
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 3662
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Coin;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 3663
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 3664
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bitcoinj/core/Coin;->valueOf(J)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    .line 3666
    :cond_4
    invoke-virtual {v0, v3}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method

.method public getTransaction(Lorg/bitcoinj/core/Sha256Hash;)Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2937
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2939
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getTransactionPool(Lorg/bitcoinj/wallet/WalletTransaction$Pool;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/wallet/WalletTransaction$Pool;",
            ")",
            "Ljava/util/Map<",
            "Lorg/bitcoinj/core/Sha256Hash;",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 2947
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2949
    :try_start_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$11;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2957
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2962
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 2959
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wallet transaction type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2955
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    goto :goto_0

    .line 2953
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    goto :goto_0

    .line 2951
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2962
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getTransactionSigners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/signers/TransactionSigner;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 394
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->signers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getTransactions(Z)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 2809
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2811
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2812
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2813
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2814
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz p1, :cond_0

    .line 2816
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2819
    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getTransactionsByTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2898
    invoke-virtual {p0, v0, v0}, Lorg/bitcoinj/wallet/Wallet;->getRecentTransactions(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUTXOProvider()Lorg/bitcoinj/core/UTXOProvider;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 4272
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4274
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4276
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getUnspents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 3154
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3156
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getVersion()I
    .locals 1

    .line 3405
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->version:I

    return v0
.end method

.method public getWalletTransactions()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/bitcoinj/wallet/WalletTransaction;",
            ">;"
        }
    .end annotation

    .line 2827
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2829
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2830
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->UNSPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lorg/bitcoinj/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 2831
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->SPENT:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lorg/bitcoinj/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 2832
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lorg/bitcoinj/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V

    .line 2833
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransactionsToSet(Ljava/util/Set;Lorg/bitcoinj/wallet/WalletTransaction$Pool;Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2836
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getWatchedAddresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;"
        }
    .end annotation

    .line 962
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 964
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 965
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/Script;

    .line 966
    invoke-virtual {v2}, Lorg/bitcoinj/script/Script;->isSentToAddress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 967
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v2, v3}, Lorg/bitcoinj/script/Script;->getToAddress(Lorg/bitcoinj/core/NetworkParameters;)Lorg/bitcoinj/core/Address;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 970
    :cond_1
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getWatchedBalance()Lorg/bitcoinj/core/Coin;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3473
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBalance()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    return-object v0
.end method

.method public getWatchedBalance(Lorg/bitcoinj/wallet/CoinSelector;)Lorg/bitcoinj/core/Coin;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3479
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/CoinSelector;)Lorg/bitcoinj/core/Coin;

    move-result-object p1

    return-object p1
.end method

.method public getWatchedOutputs(Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 3019
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3020
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3022
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 3023
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    if-eqz p1, :cond_1

    .line 3024
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->isMature()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 3025
    :cond_1
    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/TransactionOutput;

    .line 3026
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    goto :goto_1

    .line 3028
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v4

    .line 3029
    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 3030
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3038
    :cond_4
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3039
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 3038
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3039
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public getWatchedScripts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 596
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;
    .locals 2

    .line 807
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 809
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 810
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->getActiveKeyChain()Lorg/bitcoinj/wallet/DeterministicKeyChain;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/DeterministicKeyChain;->getWatchingKey()Lorg/bitcoinj/crypto/DeterministicKey;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 1

    .line 993
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 995
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->hasKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public importKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bitcoinj/core/ECKey;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 679
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->importKeys(Ljava/util/List;)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public importKeys(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)I"
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->checkNoDeterministicKeys(Ljava/util/List;)V

    .line 699
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 701
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->importKeys(Ljava/util/List;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 705
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return p1

    :catchall_0
    move-exception p1

    .line 703
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public importKeysAndEncrypt(Ljava/util/List;Ljava/lang/CharSequence;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")I"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 720
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    const-string v1, "Wallet is not encrypted"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/bitcoinj/crypto/KeyCrypter;->deriveKey(Ljava/lang/CharSequence;)Lorg/spongycastle/crypto/params/KeyParameter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->importKeysAndEncrypt(Ljava/util/List;Lorg/spongycastle/crypto/params/KeyParameter;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public importKeysAndEncrypt(Ljava/util/List;Lorg/spongycastle/crypto/params/KeyParameter;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            ")I"
        }
    .end annotation

    .line 729
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 731
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->checkNoDeterministicKeys(Ljava/util/List;)V

    .line 732
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1, p2}, Lorg/bitcoinj/wallet/KeyChainGroup;->importKeysAndEncrypt(Ljava/util/List;Lorg/spongycastle/crypto/params/KeyParameter;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isAcceptRiskyTransactions()Z
    .locals 2

    .line 1360
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1362
    :try_start_0
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->acceptRiskyTransactions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isAddressWatched(Lorg/bitcoinj/core/Address;)Z
    .locals 0

    .line 837
    invoke-static {p1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object p1

    .line 838
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->isWatchedScript(Lorg/bitcoinj/script/Script;)Z

    move-result p1

    return p1
.end method

.method public isConsistent()Z
    .locals 3

    .line 1523
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistentOrThrow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 1526
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1528
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1530
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "Printing inconsistent wallet failed"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConsistentOrThrow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    .line 1543
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v1

    .line 1545
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1546
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 1547
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1550
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 1551
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1555
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    .line 1560
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    const/4 v3, 0x0

    .line 1561
    invoke-virtual {p0, v2, v3}, Lorg/bitcoinj/wallet/Wallet;->isTxConsistent(Lorg/bitcoinj/core/Transaction;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1562
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent unspent tx: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1566
    :cond_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/Transaction;

    .line 1567
    invoke-virtual {p0, v2, v0}, Lorg/bitcoinj/wallet/Wallet;->isTxConsistent(Lorg/bitcoinj/core/Transaction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 1568
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent spent tx: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    :cond_4
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1557
    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent wallet sizes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1552
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Two transactions with same hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 1572
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isDeterministicUpgradeRequired()Z
    .locals 2

    .line 563
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 565
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->isDeterministicUpgradeRequired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isEncrypted()Z
    .locals 2

    .line 1246
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getEncryptionType()Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    move-result-object v0

    sget-object v1, Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;->UNENCRYPTED:Lorg/bitcoinj/wallet/Protos$Wallet$EncryptionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyRotating(Lorg/bitcoinj/core/ECKey;)Z
    .locals 5

    .line 5111
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Wallet;->vKeyRotationTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 5112
    invoke-virtual {p1}, Lorg/bitcoinj/core/ECKey;->getCreationTimeSeconds()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPayToScriptHashMine([B)Z
    .locals 0

    .line 1053
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findRedeemDataFromScriptHash([B)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPendingTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1761
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1765
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->getContainingPools(Lorg/bitcoinj/core/Transaction;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1766
    const-class v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1767
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received tx we already saw in a block or created ourselves: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1780
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 1774
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->isTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1775
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v0, "Received tx that isn\'t relevant to this wallet, discarding."

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1780
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isPubKeyHashMine([B)Z
    .locals 0

    .line 1003
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubHash([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPubKeyMine([B)Z
    .locals 0

    .line 1033
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->findKeyFromPubKey([B)Lorg/bitcoinj/core/ECKey;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRequiringUpdateAllBloomFilter()Z
    .locals 2

    .line 4615
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4617
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    .line 4619
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public isTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/ScriptException;
        }
    .end annotation

    .line 1793
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1795
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1796
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    .line 1797
    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;->findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1799
    :goto_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isTransactionRisky(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Z
    .locals 2
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)Z"
        }
    .end annotation

    .line 1723
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-nez p2, :cond_0

    .line 1726
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    .line 1727
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->riskAnalyzer:Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;

    invoke-interface {v0, p0, p1, p2}, Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;->create(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Lorg/bitcoinj/wallet/RiskAnalysis;

    move-result-object p2

    .line 1728
    invoke-interface {p2}, Lorg/bitcoinj/wallet/RiskAnalysis;->analyze()Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    move-result-object v0

    .line 1729
    sget-object v1, Lorg/bitcoinj/wallet/RiskAnalysis$Result;->OK:Lorg/bitcoinj/wallet/RiskAnalysis$Result;

    if-eq v0, v1, :cond_1

    .line 1730
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Pending transaction was considered risky: {}\n{}"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 1735
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method isTxConsistent(Lorg/bitcoinj/core/Transaction;Z)Z
    .locals 6

    .line 1583
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/core/TransactionOutput;

    .line 1584
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->isAvailableForSpending()Z

    move-result v4

    const-string v5, "isAvailableForSpending != spentBy"

    if-eqz v4, :cond_2

    .line 1585
    invoke-virtual {v2, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 1586
    :cond_1
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1587
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v3

    .line 1591
    :cond_2
    invoke-virtual {v2}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1592
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return v3

    :cond_3
    if-ne v1, p2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWatchedScript(Lorg/bitcoinj/script/Script;)Z
    .locals 1

    .line 1008
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1010
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public isWatching()Z
    .locals 2

    .line 824
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 826
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 827
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->isWatching()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public maybeCommitTx(Lorg/bitcoinj/core/Transaction;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 2398
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 2399
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2401
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2477
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    .line 2403
    :cond_0
    :try_start_1
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "commitTx of {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2404
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBalance()Lorg/bitcoinj/core/Coin;

    move-result-object v0

    .line 2405
    invoke-static {}, Lorg/bitcoinj/core/Utils;->now()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/bitcoinj/core/Transaction;->setUpdateTime(Ljava/util/Date;)V

    .line 2407
    sget-object v2, Lorg/bitcoinj/core/Coin;->ZERO:Lorg/bitcoinj/core/Coin;

    .line 2408
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/TransactionOutput;

    .line 2409
    invoke-virtual {v4, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 2410
    :cond_1
    invoke-virtual {v4}, Lorg/bitcoinj/core/TransactionOutput;->getValue()Lorg/bitcoinj/core/Coin;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    goto :goto_0

    .line 2415
    :cond_2
    invoke-direct {p0, p1, v1}, Lorg/bitcoinj/wallet/Wallet;->updateForSpends(Lorg/bitcoinj/core/Transaction;Z)V

    .line 2417
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Lorg/bitcoinj/wallet/Wallet;->findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 2418
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-direct {p0, p1, v3}, Lorg/bitcoinj/wallet/Wallet;->findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 2419
    iget-object v4, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-direct {p0, p1, v4}, Lorg/bitcoinj/wallet/Wallet;->findDoubleSpendsAgainst(Lorg/bitcoinj/core/Transaction;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    .line 2421
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_6

    .line 2422
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 2423
    invoke-direct {p0, p1, v3}, Lorg/bitcoinj/wallet/Wallet;->isNotSpendingTxnsInConfidenceType(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 2430
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    .line 2431
    invoke-direct {p0, p1, v3}, Lorg/bitcoinj/wallet/Wallet;->isNotSpendingTxnsInConfidenceType(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 2446
    :cond_4
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "->pending: {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2447
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 2448
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v1, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_4

    .line 2435
    :cond_5
    :goto_1
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v4, "->pending (IN_CONFLICT): {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2436
    sget-object v3, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v3, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 2437
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2438
    invoke-virtual {p0, v5}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/bitcoinj/wallet/Wallet;->addTransactionsDependingOn(Ljava/util/Set;Ljava/util/Set;)V

    .line 2439
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/core/Transaction;

    .line 2440
    invoke-virtual {v3}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v4

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v4, v6}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 2441
    iget-object v4, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2426
    :cond_6
    :goto_3
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "->dead: {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2427
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->DEAD:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v1, v3}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 2428
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2429
    sget-object v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->DEAD:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v1, p1}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 2451
    :cond_7
    :goto_4
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2452
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Estimated balance is now: {}"

    sget-object v4, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v4}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2456
    :cond_8
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->markKeysAsUsed(Lorg/bitcoinj/core/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2458
    :try_start_2
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object v1

    .line 2459
    invoke-virtual {v0, v2}, Lorg/bitcoinj/core/Coin;->add(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bitcoinj/core/Coin;->subtract(Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    .line 2460
    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    .line 2461
    invoke-direct {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V

    .line 2462
    invoke-virtual {p0, p1, v0, v3}, Lorg/bitcoinj/wallet/Wallet;->queueOnCoinsReceived(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    .line 2464
    :cond_9
    invoke-virtual {v1}, Lorg/bitcoinj/core/Coin;->signum()I

    move-result v1

    if-lez v1, :cond_a

    .line 2465
    invoke-virtual {p0, p1, v0, v3}, Lorg/bitcoinj/wallet/Wallet;->queueOnCoinsSent(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    .line 2467
    :cond_a
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V
    :try_end_2
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2473
    :try_start_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistentOrThrow()V

    .line 2474
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 2475
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2477
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :catch_0
    move-exception p1

    .line 2470
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 2477
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public maybeDoMaintenance(Lorg/spongycastle/crypto/params/KeyParameter;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            "Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5118
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->doMaintenance(Lorg/spongycastle/crypto/params/KeyParameter;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method protected maybeQueueOnWalletChanged()V
    .locals 4

    .line 2737
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2738
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2739
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    if-lez v0, :cond_1

    return-void

    .line 2740
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2741
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/Wallet$4;

    invoke-direct {v3, p0, v1}, Lorg/bitcoinj/wallet/Wallet$4;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 2103
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    .line 2104
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2106
    :cond_0
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2109
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 2110
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHeight(I)V

    .line 2111
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenTimeSecs(J)V

    const/4 p1, 0x1

    .line 2114
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object p1

    .line 2115
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    .line 2116
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2119
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->ignoreNextNewBlock:Ljava/util/HashSet;

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2121
    :cond_2
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v1

    .line 2122
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v2

    sget-object v3, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->BUILDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v2, v3, :cond_1

    .line 2130
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->incrementDepthInBlocks()I

    move-result v2

    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->context:Lorg/bitcoinj/core/Context;

    invoke-virtual {v3}, Lorg/bitcoinj/core/Context;->getEventHorizon()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 2131
    invoke-virtual {v1}, Lorg/bitcoinj/core/TransactionConfidence;->clearBroadcastBy()V

    .line 2132
    :cond_3
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v2, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->DEPTH:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2137
    :cond_4
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 2138
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V

    .line 2140
    iget-boolean p1, p0, Lorg/bitcoinj/wallet/Wallet;->hardSaveOnNextBlock:Z

    if-eqz p1, :cond_5

    .line 2141
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    const/4 p1, 0x0

    .line 2142
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Wallet;->hardSaveOnNextBlock:Z

    goto :goto_1

    .line 2145
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    :goto_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public notifyTransactionIsInBlock(Lorg/bitcoinj/core/Sha256Hash;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1637
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1639
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    if-nez v0, :cond_1

    .line 1641
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->riskDropped:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/bitcoinj/core/Transaction;

    if-eqz v0, :cond_0

    .line 1644
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v1, "Risk analysis dropped tx {} but was included in block anyway"

    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 1653
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 1650
    :cond_1
    :goto_1
    :try_start_1
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bitcoinj/wallet/Wallet;->receive(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1653
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public poolContainsTxHash(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Sha256Hash;)Z
    .locals 1

    .line 3134
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3136
    :try_start_0
    sget-object v0, Lorg/bitcoinj/wallet/Wallet$11;->$SwitchMap$org$bitcoinj$wallet$WalletTransaction$Pool:[I

    invoke-virtual {p1}, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3144
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3148
    :goto_0
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 3146
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3142
    :cond_1
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3140
    :cond_2
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 3138
    :cond_3
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3148
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method protected queueOnCoinsReceived(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 9

    .line 2751
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2752
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2753
    iget-object v1, v4, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v8, Lorg/bitcoinj/wallet/Wallet$5;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/wallet/Wallet$5;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected queueOnCoinsSent(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V
    .locals 9

    .line 2763
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2764
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsSentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2765
    iget-object v1, v4, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v8, Lorg/bitcoinj/wallet/Wallet$6;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/bitcoinj/wallet/Wallet$6;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Coin;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected queueOnReorganize()V
    .locals 4

    .line 2775
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2776
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2777
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2778
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/Wallet$7;

    invoke-direct {v3, p0, v1}, Lorg/bitcoinj/wallet/Wallet$7;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected queueOnScriptsChanged(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;Z)V"
        }
    .end annotation

    .line 2788
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->scriptChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/utils/ListenerRegistration;

    .line 2789
    iget-object v2, v1, Lorg/bitcoinj/utils/ListenerRegistration;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, Lorg/bitcoinj/wallet/Wallet$8;

    invoke-direct {v3, p0, v1, p1, p2}, Lorg/bitcoinj/wallet/Wallet$8;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/utils/ListenerRegistration;Ljava/util/List;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public receiveFromBlock(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1879
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1881
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->isTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1885
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 1883
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bitcoinj/wallet/Wallet;->receive(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1751
    invoke-virtual {p0, p1, p2, v0}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Z)V

    return-void
.end method

.method public receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;Z)V
    .locals 6
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Transaction;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1676
    :try_start_0
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->verify()V

    .line 1679
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->getContainingPools(Lorg/bitcoinj/core/Transaction;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1680
    const-class v1, Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received tx we already saw in a block or created ourselves: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1709
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 1686
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->isPendingTransactionRelevant(Lorg/bitcoinj/core/Transaction;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 1688
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->isTransactionRisky(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lorg/bitcoinj/wallet/Wallet;->acceptRiskyTransactions:Z

    if-nez p2, :cond_2

    .line 1690
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->riskDropped:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string p2, "There are now {} risk dropped transactions being kept in memory"

    iget-object p3, p0, Lorg/bitcoinj/wallet/Wallet;->riskDropped:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1694
    :cond_2
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentToMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object p2

    .line 1695
    invoke-virtual {p1, p0}, Lorg/bitcoinj/core/Transaction;->getValueSentFromMe(Lorg/bitcoinj/core/TransactionBag;)Lorg/bitcoinj/core/Coin;

    move-result-object p3

    .line 1696
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1697
    sget-object v0, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Received a pending transaction %s that spends %s from our own wallet, and sends us %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1698
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p3}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v4

    const/4 p3, 0x2

    .line 1699
    invoke-virtual {p2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p3

    .line 1697
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 1701
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionConfidence;->getSource()Lorg/bitcoinj/core/TransactionConfidence$Source;

    move-result-object p2

    sget-object p3, Lorg/bitcoinj/core/TransactionConfidence$Source;->UNKNOWN:Lorg/bitcoinj/core/TransactionConfidence$Source;

    invoke-virtual {p2, p3}, Lorg/bitcoinj/core/TransactionConfidence$Source;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1702
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string p3, "Wallet received transaction with an unknown source. Consider tagging it!"

    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1707
    :cond_4
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->commitTx(Lorg/bitcoinj/core/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1709
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeChangeEventListener(Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)Z
    .locals 1

    .line 2667
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->changeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeCoinsReceivedEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)Z
    .locals 1

    .line 2675
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsReceivedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeCoinsSentEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)Z
    .locals 1

    .line 2683
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->coinsSentListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeEventListener(Lorg/bitcoinj/wallet/listeners/WalletEventListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2654
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeChangeEventListener(Lorg/bitcoinj/wallet/listeners/WalletChangeEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2655
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeCoinsReceivedEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsReceivedEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2656
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeCoinsSentEventListener(Lorg/bitcoinj/wallet/listeners/WalletCoinsSentEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2657
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeKeyChainEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2658
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeReorganizeEventListener(Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2659
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeTransactionConfidenceEventListener(Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public removeKey(Lorg/bitcoinj/core/ECKey;)Z
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 610
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->removeImportedKey(Lorg/bitcoinj/core/ECKey;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeKeyChainEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z
    .locals 1

    .line 2691
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->removeEventListener(Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;)Z

    move-result p1

    return p1
.end method

.method public removeReorganizeEventListener(Lorg/bitcoinj/wallet/listeners/WalletReorganizeEventListener;)Z
    .locals 1

    .line 2699
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->reorganizeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeScriptChangeEventListener(Lorg/bitcoinj/wallet/listeners/ScriptsChangeEventListener;)Z
    .locals 1

    .line 2707
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->scriptChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeTransactionConfidenceEventListener(Lorg/bitcoinj/core/listeners/TransactionConfidenceEventListener;)Z
    .locals 1

    .line 2715
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->transactionConfidenceListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1, v0}, Lorg/bitcoinj/utils/ListenerRegistration;->removeFromList(Ljava/lang/Object;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeWatchedAddress(Lorg/bitcoinj/core/Address;)Z
    .locals 0

    .line 916
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->removeWatchedAddresses(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeWatchedAddresses(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Address;",
            ">;)Z"
        }
    .end annotation

    .line 925
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 927
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/Address;

    .line 928
    invoke-static {v1}, Lorg/bitcoinj/script/ScriptBuilder;->createOutputScript(Lorg/bitcoinj/core/Address;)Lorg/bitcoinj/script/Script;

    move-result-object v1

    .line 929
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->removeWatchedScripts(Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public removeWatchedScripts(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/script/Script;",
            ">;)Z"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 943
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/script/Script;

    .line 944
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 950
    invoke-virtual {p0, p1, v0}, Lorg/bitcoinj/wallet/Wallet;->queueOnScriptsChanged(Ljava/util/List;Z)V

    .line 951
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 954
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 4381
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4397
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4398
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4399
    iput-boolean v2, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    .line 4400
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4401
    iget v0, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    .line 4405
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object v0

    .line 4406
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->getTransactions(Z)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 4407
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getAppearsInHashes()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 4409
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4410
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v4, v6}, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;-><init>(Lorg/bitcoinj/core/Transaction;I)V

    invoke-virtual {v0, v7, v8}, Lcom/google/common/collect/ArrayListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    .line 4412
    :cond_5
    invoke-virtual {v0}, Lcom/google/common/collect/ArrayListMultimap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Sha256Hash;

    .line 4413
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_5

    .line 4415
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 4416
    sget-object v4, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "Old part of chain (top to bottom):"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4417
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "  {}"

    if-eqz v5, :cond_7

    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/StoredBlock;

    .line 4418
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4419
    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4421
    :cond_7
    sget-object v4, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "New part of chain (top to bottom):"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4422
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/StoredBlock;

    .line 4423
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v5}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v6, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 4426
    :cond_8
    invoke-static {p3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4429
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v4

    .line 4430
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Sha256Hash;

    .line 4431
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;

    .line 4432
    iget-object v6, v6, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->tx:Lorg/bitcoinj/core/Transaction;

    .line 4433
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    .line 4434
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 4443
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v8, "Coinbase killed by re-org: {}"

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4444
    invoke-static {v6}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lorg/bitcoinj/wallet/Wallet;->killTxns(Ljava/util/Set;Lorg/bitcoinj/core/Transaction;)V

    goto :goto_8

    .line 4446
    :cond_a
    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bitcoinj/core/TransactionOutput;

    .line 4447
    invoke-virtual {v9}, Lorg/bitcoinj/core/TransactionOutput;->getSpentBy()Lorg/bitcoinj/core/TransactionInput;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 4449
    invoke-virtual {v9, p0}, Lorg/bitcoinj/core/TransactionOutput;->isMineOrWatched(Lorg/bitcoinj/core/TransactionBag;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4450
    iget-object v11, p0, Lorg/bitcoinj/wallet/Wallet;->myUnspents:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4451
    :cond_c
    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionInput;->disconnect()Z

    goto :goto_9

    .line 4454
    :cond_d
    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4455
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4456
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4457
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    :goto_a
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4458
    iget-object v6, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    :goto_b
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto/16 :goto_8

    .line 4464
    :cond_10
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bitcoinj/core/Transaction;

    .line 4467
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->isCoinBase()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_c

    .line 4468
    :cond_11
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v6, "  ->pending {}"

    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4470
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v5

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    invoke-virtual {v5, v6}, Lorg/bitcoinj/core/TransactionConfidence;->setConfidenceType(Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;)V

    .line 4471
    iget-object v5, p0, Lorg/bitcoinj/wallet/Wallet;->confidenceChanged:Ljava/util/Map;

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;->TYPE:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4472
    sget-object v5, Lorg/bitcoinj/wallet/WalletTransaction$Pool;->PENDING:Lorg/bitcoinj/wallet/WalletTransaction$Pool;

    invoke-direct {p0, v5, v4}, Lorg/bitcoinj/wallet/Wallet;->addWalletTransaction(Lorg/bitcoinj/wallet/WalletTransaction$Pool;Lorg/bitcoinj/core/Transaction;)V

    .line 4473
    invoke-direct {p0, v4, v1}, Lorg/bitcoinj/wallet/Wallet;->updateForSpends(Lorg/bitcoinj/core/Transaction;Z)V

    goto :goto_c

    .line 4484
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 4485
    sget-object v3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "depthToSubtract = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 4487
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lorg/bitcoinj/wallet/Wallet;->subtractDepth(ILjava/util/Collection;)V

    .line 4488
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lorg/bitcoinj/wallet/Wallet;->subtractDepth(ILjava/util/Collection;)V

    .line 4489
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lorg/bitcoinj/wallet/Wallet;->subtractDepth(ILjava/util/Collection;)V

    .line 4492
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V

    .line 4498
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/core/StoredBlock;

    .line 4499
    sget-object p3, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Replaying block {}"

    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bitcoinj/core/Block;->getHashAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4500
    invoke-virtual {p2}, Lorg/bitcoinj/core/StoredBlock;->getHeader()Lorg/bitcoinj/core/Block;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bitcoinj/core/Block;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/common/collect/ArrayListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;

    .line 4501
    sget-object v4, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "  tx {}"

    iget-object v6, v3, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v6}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4503
    :try_start_2
    iget-object v4, v3, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->tx:Lorg/bitcoinj/core/Transaction;

    sget-object v5, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    iget v3, v3, Lorg/bitcoinj/wallet/Wallet$TxOffsetPair;->offset:I

    invoke-direct {p0, v4, p2, v5, v3}, Lorg/bitcoinj/wallet/Wallet;->receive(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;I)V
    :try_end_2
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_e

    :catch_0
    move-exception p1

    .line 4505
    :try_start_3
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 4508
    :cond_13
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V

    goto :goto_d

    .line 4510
    :cond_14
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isConsistentOrThrow()V

    .line 4511
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getBalance()Lorg/bitcoinj/core/Coin;

    move-result-object p1

    .line 4512
    sget-object p2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string p3, "post-reorg balance is {}"

    invoke-virtual {p1}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4514
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->queueOnReorganize()V

    .line 4515
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/Wallet;->insideReorg:Z

    .line 4516
    iget p2, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    sub-int/2addr p2, v2

    iput p2, p0, Lorg/bitcoinj/wallet/Wallet;->onWalletChangedSuppressions:I

    .line 4517
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V

    .line 4518
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->checkBalanceFuturesLocked(Lorg/bitcoinj/core/Coin;)V

    .line 4519
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->informConfidenceListenersIfNotReorganizing()V

    .line 4520
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4522
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public reset()V
    .locals 2

    .line 2972
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2974
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->clearTransactions()V

    const/4 v0, 0x0

    .line 2975
    iput-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHash:Lorg/bitcoinj/core/Sha256Hash;

    const/4 v0, -0x1

    .line 2976
    iput v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHeight:I

    const-wide/16 v0, 0x0

    .line 2977
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenTimeSecs:J

    .line 2978
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveLater()V

    .line 2979
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeQueueOnWalletChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2981
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected saveLater()V
    .locals 1

    .line 1452
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

    if-eqz v0, :cond_0

    .line 1454
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/WalletFiles;->saveLater()V

    :cond_0
    return-void
.end method

.method protected saveNow()V
    .locals 3

    .line 1459
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

    if-eqz v0, :cond_0

    .line 1462
    :try_start_0
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/WalletFiles;->saveNow()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1465
    sget-object v1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed to save wallet to disk!"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1466
    sget-object v1, Lorg/bitcoinj/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 1468
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveToFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "wallet"

    const/4 v2, 0x0

    .line 1333
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1334
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->saveToFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public saveToFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Temp file still exists after failed save."

    .line 1291
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    .line 1293
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1294
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->saveToFileStream(Ljava/io/OutputStream;)V

    .line 1297
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 1298
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 1299
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    :try_start_2
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isWindows()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, " to "

    const-string v4, "Failed to rename "

    if-eqz v2, :cond_4

    .line 1303
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p2

    .line 1304
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1305
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v2, "Failed to delete canonical wallet file for replacement with autosave"

    invoke-direct {p2, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1306
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    .line 1316
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1320
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1321
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1308
    :cond_3
    :try_start_4
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1309
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_6

    .line 1316
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1320
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1321
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5
    return-void

    .line 1310
    :cond_6
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception p2

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1313
    :goto_1
    :try_start_6
    sget-object v2, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed whilst saving wallet"

    invoke-interface {v2, v3, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1314
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1316
    :goto_2
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v1, :cond_7

    .line 1318
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1320
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1321
    sget-object p1, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_8
    throw p2
.end method

.method public saveToFileStream(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1480
    :try_start_0
    new-instance v0, Lorg/bitcoinj/wallet/WalletProtobufSerializer;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->writeWallet(Lorg/bitcoinj/wallet/Wallet;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public sendCoins(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/core/Transaction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3877
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->sendCoinsOffline(Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/core/Transaction;

    move-result-object p2

    .line 3878
    invoke-virtual {p1, p2}, Lorg/bitcoinj/core/Peer;->sendMessage(Lorg/bitcoinj/core/Message;)V

    return-object p2
.end method

.method public sendCoins(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/Wallet$SendResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3797
    invoke-static {p2, p3}, Lorg/bitcoinj/wallet/SendRequest;->to(Lorg/bitcoinj/core/Address;Lorg/bitcoinj/core/Coin;)Lorg/bitcoinj/wallet/SendRequest;

    move-result-object p2

    .line 3798
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Wallet;->sendCoins(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/wallet/Wallet$SendResult;

    move-result-object p1

    return-object p1
.end method

.method public sendCoins(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/wallet/Wallet$SendResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3825
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 3829
    invoke-virtual {p0, p2}, Lorg/bitcoinj/wallet/Wallet;->sendCoinsOffline(Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/core/Transaction;

    move-result-object p2

    .line 3830
    new-instance v0, Lorg/bitcoinj/wallet/Wallet$SendResult;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Wallet$SendResult;-><init>()V

    .line 3831
    iput-object p2, v0, Lorg/bitcoinj/wallet/Wallet$SendResult;->tx:Lorg/bitcoinj/core/Transaction;

    .line 3837
    invoke-interface {p1, p2}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    move-result-object p1

    iput-object p1, v0, Lorg/bitcoinj/wallet/Wallet$SendResult;->broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

    .line 3838
    iget-object p1, v0, Lorg/bitcoinj/wallet/Wallet$SendResult;->broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

    invoke-virtual {p1}, Lorg/bitcoinj/core/TransactionBroadcast;->future()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, v0, Lorg/bitcoinj/wallet/Wallet$SendResult;->broadcastComplete:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public sendCoins(Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/wallet/Wallet$SendResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3857
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vTransactionBroadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "No transaction broadcaster is configured"

    .line 3858
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 3859
    invoke-virtual {p0, v0, p1}, Lorg/bitcoinj/wallet/Wallet;->sendCoins(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/wallet/Wallet$SendResult;

    move-result-object p1

    return-object p1
.end method

.method public sendCoinsOffline(Lorg/bitcoinj/wallet/SendRequest;)Lorg/bitcoinj/core/Transaction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/InsufficientMoneyException;
        }
    .end annotation

    .line 3760
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3762
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet;->completeTx(Lorg/bitcoinj/wallet/SendRequest;)V

    .line 3763
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Wallet;->commitTx(Lorg/bitcoinj/core/Transaction;)V

    .line 3764
    iget-object p1, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3766
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public serializeKeyChainGroupToProtobuf()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/Protos$Key;",
            ">;"
        }
    .end annotation

    .line 1280
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1282
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/KeyChainGroup;->serializeToProtobuf()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setAcceptRiskyTransactions(Z)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1350
    :try_start_0
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Wallet;->acceptRiskyTransactions:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setCoinSelector(Lorg/bitcoinj/wallet/CoinSelector;)V
    .locals 1

    .line 4250
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4252
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/CoinSelector;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->coinSelector:Lorg/bitcoinj/wallet/CoinSelector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4254
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 3420
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->description:Ljava/lang/String;

    return-void
.end method

.method public setKeyChainGroupLookaheadSize(I)V
    .locals 1

    .line 760
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 762
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->setLookaheadSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setKeyChainGroupLookaheadThreshold(I)V
    .locals 1

    .line 780
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 782
    :try_start_0
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet;->maybeUpgradeToHD()V

    .line 783
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->setLookaheadThreshold(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setKeyRotationTime(J)V
    .locals 6

    .line 5103
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, p1

    .line 5104
    invoke-static {v4, v5}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Given time (%s) cannot be in the future."

    .line 5103
    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5105
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Wallet;->vKeyRotationTimestamp:J

    .line 5106
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void
.end method

.method public setKeyRotationTime(Ljava/util/Date;)V
    .locals 4

    .line 5077
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Wallet;->setKeyRotationTime(J)V

    return-void
.end method

.method public setLastBlockSeenHash(Lorg/bitcoinj/core/Sha256Hash;)V
    .locals 1
    .param p1    # Lorg/bitcoinj/core/Sha256Hash;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 3328
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3330
    :try_start_0
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHash:Lorg/bitcoinj/core/Sha256Hash;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3332
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLastBlockSeenHeight(I)V
    .locals 1

    .line 3337
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3339
    :try_start_0
    iput p1, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3341
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setLastBlockSeenTimeSecs(J)V
    .locals 1

    .line 3346
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3348
    :try_start_0
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Wallet;->lastBlockSeenTimeSecs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3350
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setRiskAnalyzer(Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;)V
    .locals 1

    .line 1374
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1376
    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->riskAnalyzer:Lorg/bitcoinj/wallet/RiskAnalysis$Analyzer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setTag(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4792
    invoke-super {p0, p1, p2}, Lorg/bitcoinj/utils/BaseTaggableObject;->setTag(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V

    .line 4793
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->saveNow()V

    return-void
.end method

.method public setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 8
    .param p1    # Lorg/bitcoinj/core/TransactionBroadcaster;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/bitcoinj/core/Transaction;

    .line 5041
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 5043
    :try_start_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->vTransactionBroadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 5050
    :goto_0
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 5045
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->vTransactionBroadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    if-nez p1, :cond_1

    goto :goto_0

    .line 5048
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bitcoinj/core/Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5050
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 5055
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 5056
    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getConfidence()Lorg/bitcoinj/core/TransactionConfidence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bitcoinj/core/TransactionConfidence;->getConfidenceType()Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    move-result-object v5

    .line 5057
    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->PENDING:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    sget-object v6, Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;->IN_CONFLICT:Lorg/bitcoinj/core/TransactionConfidence$ConfidenceType;

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v6, 0x1

    :goto_3
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v0

    const-string v5, "Expected PENDING or IN_CONFLICT, was %s."

    invoke-static {v6, v5, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5063
    sget-object v5, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    const-string v7, "New broadcaster so uploading waiting tx {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5064
    invoke-interface {p1, v4}, Lorg/bitcoinj/core/TransactionBroadcaster;->broadcastTransaction(Lorg/bitcoinj/core/Transaction;)Lorg/bitcoinj/core/TransactionBroadcast;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 5050
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setUTXOProvider(Lorg/bitcoinj/core/UTXOProvider;)V
    .locals 2
    .param p1    # Lorg/bitcoinj/core/UTXOProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 4290
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    if-eqz p1, :cond_1

    .line 4292
    :try_start_0
    invoke-interface {p1}, Lorg/bitcoinj/core/UTXOProvider;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/NetworkParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 4293
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->vUTXOProvider:Lorg/bitcoinj/core/UTXOProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4295
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public setVersion(I)V
    .locals 0

    .line 3412
    iput p1, p0, Lorg/bitcoinj/wallet/Wallet;->version:I

    return-void
.end method

.method public shutdownAutosaveAndWait()V
    .locals 3

    .line 1439
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1441
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

    const/4 v1, 0x0

    .line 1442
    iput-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->vFileManager:Lorg/bitcoinj/wallet/WalletFiles;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Auto saving not enabled."

    .line 1443
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1444
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/WalletFiles;->shutdownAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public signTransaction(Lorg/bitcoinj/wallet/SendRequest;)V
    .locals 12

    .line 4030
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4032
    :try_start_0
    iget-object v0, p1, Lorg/bitcoinj/wallet/SendRequest;->tx:Lorg/bitcoinj/core/Transaction;

    .line 4033
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v1

    .line 4034
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getOutputs()Ljava/util/List;

    move-result-object v2

    .line 4035
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4036
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 4038
    new-instance v1, Lorg/bitcoinj/wallet/DecryptingKeyBag;

    iget-object v2, p1, Lorg/bitcoinj/wallet/SendRequest;->aesKey:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p0, v2}, Lorg/bitcoinj/wallet/DecryptingKeyBag;-><init>(Lorg/bitcoinj/wallet/KeyBag;Lorg/spongycastle/crypto/params/KeyParameter;)V

    .line 4040
    invoke-virtual {v0}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v2, :cond_3

    int-to-long v6, v5

    .line 4042
    invoke-virtual {v0, v6, v7}, Lorg/bitcoinj/core/Transaction;->getInput(J)Lorg/bitcoinj/core/TransactionInput;

    move-result-object v8

    .line 4043
    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    goto :goto_3

    .line 4052
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionInput;->getScriptSig()Lorg/bitcoinj/script/Script;

    move-result-object v9

    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v10

    invoke-virtual {v9, v0, v6, v7, v10}, Lorg/bitcoinj/script/Script;->correctlySpends(Lorg/bitcoinj/core/Transaction;JLorg/bitcoinj/script/Script;)V

    .line 4053
    sget-object v6, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v7, "Input {} already correctly spends output, assuming SIGHASH type used will be safe and skipping signing."

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/bitcoinj/core/ScriptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 4056
    :try_start_2
    sget-object v7, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v9, "Input contained an incorrect signature"

    invoke-interface {v7, v9, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4060
    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionInput;->getConnectedOutput()Lorg/bitcoinj/core/TransactionOutput;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bitcoinj/core/TransactionOutput;->getScriptPubKey()Lorg/bitcoinj/script/Script;

    move-result-object v6

    .line 4061
    invoke-virtual {v8, v1}, Lorg/bitcoinj/core/TransactionInput;->getConnectedRedeemData(Lorg/bitcoinj/wallet/KeyBag;)Lorg/bitcoinj/wallet/RedeemData;

    move-result-object v7

    const-string v9, "Transaction exists in wallet that we cannot redeem: %s"

    new-array v10, v3, [Ljava/lang/Object;

    .line 4062
    invoke-virtual {v8}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v7, v9, v10}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4063
    iget-object v9, v7, Lorg/bitcoinj/wallet/RedeemData;->keys:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bitcoinj/core/ECKey;

    iget-object v7, v7, Lorg/bitcoinj/wallet/RedeemData;->redeemScript:Lorg/bitcoinj/script/Script;

    invoke-virtual {v6, v9, v7}, Lorg/bitcoinj/script/Script;->createEmptyInputScript(Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/script/Script;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/bitcoinj/core/TransactionInput;->setScriptSig(Lorg/bitcoinj/script/Script;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4066
    :cond_3
    new-instance v2, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;

    invoke-direct {v2, v0}, Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;-><init>(Lorg/bitcoinj/core/Transaction;)V

    .line 4067
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bitcoinj/signers/TransactionSigner;

    .line 4068
    invoke-interface {v3, v2, v1}, Lorg/bitcoinj/signers/TransactionSigner;->signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 4069
    sget-object v4, Lorg/bitcoinj/wallet/Wallet;->log:Lorg/slf4j/Logger;

    const-string v5, "{} returned false for the tx"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 4073
    :cond_5
    new-instance v0, Lorg/bitcoinj/signers/MissingSigResolutionSigner;

    iget-object p1, p1, Lorg/bitcoinj/wallet/SendRequest;->missingSigsMode:Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;

    invoke-direct {v0, p1}, Lorg/bitcoinj/signers/MissingSigResolutionSigner;-><init>(Lorg/bitcoinj/wallet/Wallet$MissingSigsMode;)V

    invoke-virtual {v0, v2, v1}, Lorg/bitcoinj/signers/MissingSigResolutionSigner;->signInputs(Lorg/bitcoinj/signers/TransactionSigner$ProposedTransaction;Lorg/bitcoinj/wallet/KeyBag;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4075
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method sortTxnsByDependency(Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation

    .line 2052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2053
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    :cond_0
    add-int/lit8 v2, v1, 0x1

    move v4, v2

    .line 2057
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2058
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, v5, v6}, Lorg/bitcoinj/wallet/Wallet;->spends(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2059
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bitcoinj/core/Transaction;

    .line 2060
    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method spends(Lorg/bitcoinj/core/Transaction;Lorg/bitcoinj/core/Transaction;)Z
    .locals 2

    .line 2072
    invoke-virtual {p1}, Lorg/bitcoinj/core/Transaction;->getInputs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/TransactionInput;

    .line 2073
    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionInput;->getOutpoint()Lorg/bitcoinj/core/TransactionOutPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/core/TransactionOutPoint;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/Sha256Hash;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3164
    invoke-virtual {p0, v1, v0, v0, v2}, Lorg/bitcoinj/wallet/Wallet;->toString(ZZZLorg/bitcoinj/core/AbstractBlockChain;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZZZLorg/bitcoinj/core/AbstractBlockChain;)Ljava/lang/String;
    .locals 7
    .param p4    # Lorg/bitcoinj/core/AbstractBlockChain;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "  "

    .line 3178
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3179
    iget-object v1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3181
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3182
    sget-object v2, Lorg/bitcoinj/wallet/Wallet$BalanceType;->ESTIMATED:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v2}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v2

    .line 3183
    sget-object v3, Lorg/bitcoinj/wallet/Wallet$BalanceType;->AVAILABLE_SPENDABLE:Lorg/bitcoinj/wallet/Wallet$BalanceType;

    invoke-virtual {p0, v3}, Lorg/bitcoinj/wallet/Wallet;->getBalance(Lorg/bitcoinj/wallet/Wallet$BalanceType;)Lorg/bitcoinj/core/Coin;

    move-result-object v3

    const-string v4, "Wallet containing "

    .line 3184
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (spendable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3185
    invoke-virtual {v3}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") in:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3186
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending transactions\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unspent transactions\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3188
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spent transactions\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dead transactions\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3190
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTime()Ljava/util/Date;

    move-result-object v2

    const-string v3, "Last seen best block: "

    .line 3191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_0

    const-string v2, "time unknown"

    goto :goto_0

    .line 3192
    :cond_0
    invoke-static {v2}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    .line 3193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3194
    iget-object v3, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v3}, Lorg/bitcoinj/wallet/KeyChainGroup;->getKeyCrypter()Lorg/bitcoinj/crypto/KeyCrypter;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Encryption: "

    .line 3196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3197
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->isWatching()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Wallet is watching.\n"

    .line 3198
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "\nKeys:\n"

    .line 3201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Earliest creation time: "

    .line 3202
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getEarliestKeyCreationTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3204
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Wallet;->getKeyRotationTime()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "Key rotation time:      "

    .line 3206
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3207
    :cond_3
    iget-object v2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    invoke-virtual {v2, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3209
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "\nWatched scripts:\n"

    .line 3210
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3211
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->watchedScripts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoinj/script/Script;

    .line 3212
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_8

    .line 3218
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_5

    const-string p1, "\n>>> PENDING:\n"

    .line 3219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3220
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->pending:Ljava/util/Map;

    sget-object p2, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    invoke-direct {p0, v1, p1, p4, p2}, Lorg/bitcoinj/wallet/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lorg/bitcoinj/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 3222
    :cond_5
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_6

    const-string p1, "\n>>> UNSPENT:\n"

    .line 3223
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3224
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->unspent:Ljava/util/Map;

    sget-object p2, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    invoke-direct {p0, v1, p1, p4, p2}, Lorg/bitcoinj/wallet/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lorg/bitcoinj/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 3226
    :cond_6
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_7

    const-string p1, "\n>>> SPENT:\n"

    .line 3227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->spent:Ljava/util/Map;

    sget-object p2, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_HEIGHT:Ljava/util/Comparator;

    invoke-direct {p0, v1, p1, p4, p2}, Lorg/bitcoinj/wallet/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lorg/bitcoinj/core/AbstractBlockChain;Ljava/util/Comparator;)V

    .line 3230
    :cond_7
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "\n>>> DEAD:\n"

    .line 3231
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3232
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->dead:Ljava/util/Map;

    sget-object p2, Lorg/bitcoinj/core/Transaction;->SORT_TX_BY_UPDATE_TIME:Ljava/util/Comparator;

    invoke-direct {p0, v1, p1, p4, p2}, Lorg/bitcoinj/wallet/Wallet;->toStringHelper(Ljava/lang/StringBuilder;Ljava/util/Map;Lorg/bitcoinj/core/AbstractBlockChain;Ljava/util/Comparator;)V

    :cond_8
    if-eqz p3, :cond_9

    .line 3235
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_9

    const-string p1, "\n>>> EXTENSIONS:\n"

    .line 3236
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3237
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->extensions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/WalletExtension;

    .line 3238
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3241
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3243
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3244
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 3243
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3244
    iget-object p2, p0, Lorg/bitcoinj/wallet/Wallet;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public upgradeToDeterministic(Lorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 3
    .param p1    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/wallet/DeterministicUpgradeRequiresPassword;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroup:Lorg/bitcoinj/wallet/KeyChainGroup;

    iget-wide v1, p0, Lorg/bitcoinj/wallet/Wallet;->vKeyRotationTimestamp:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/bitcoinj/wallet/KeyChainGroup;->upgradeToDeterministic(JLorg/spongycastle/crypto/params/KeyParameter;)Lorg/bitcoinj/wallet/DeterministicKeyChain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    iget-object p1, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/bitcoinj/wallet/Wallet;->keyChainGroupLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
