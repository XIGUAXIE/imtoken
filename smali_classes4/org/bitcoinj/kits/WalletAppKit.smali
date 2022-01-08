.class public Lorg/bitcoinj/kits/WalletAppKit;
.super Lcom/google/common/util/concurrent/AbstractIdleService;
.source "WalletAppKit.java"


# static fields
.field protected static final log:Lorg/slf4j/Logger;


# instance fields
.field protected autoStop:Z

.field protected blockingStartup:Z

.field protected checkpoints:Ljava/io/InputStream;

.field protected volatile context:Lorg/bitcoinj/core/Context;

.field protected final directory:Ljava/io/File;

.field protected discovery:Lorg/bitcoinj/net/discovery/PeerDiscovery;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected downloadListener:Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

.field protected final filePrefix:Ljava/lang/String;

.field protected final params:Lorg/bitcoinj/core/NetworkParameters;

.field protected peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

.field protected restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected useAutoSave:Z

.field protected useTor:Z

.field protected userAgent:Ljava/lang/String;

.field protected volatile vChain:Lorg/bitcoinj/core/BlockChain;

.field protected volatile vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

.field protected volatile vStore:Lorg/bitcoinj/store/BlockStore;

.field protected volatile vWallet:Lorg/bitcoinj/wallet/Wallet;

.field protected volatile vWalletFile:Ljava/io/File;

.field protected version:Ljava/lang/String;

.field protected walletFactory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/bitcoinj/kits/WalletAppKit;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;-><init>()V

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useAutoSave:Z

    .line 78
    iput-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->autoStop:Z

    .line 80
    iput-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->blockingStartup:Z

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useTor:Z

    .line 100
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->context:Lorg/bitcoinj/core/Context;

    .line 101
    invoke-virtual {p1}, Lorg/bitcoinj/core/Context;->getParams()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/NetworkParameters;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 102
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    .line 103
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 93
    new-instance v0, Lorg/bitcoinj/core/Context;

    invoke-direct {v0, p1}, Lorg/bitcoinj/core/Context;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/bitcoinj/kits/WalletAppKit;-><init>(Lorg/bitcoinj/core/Context;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/kits/WalletAppKit;Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/bitcoinj/kits/WalletAppKit;->completeExtensionInitiations(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    return-void
.end method

.method private completeExtensionInitiations(Lorg/bitcoinj/core/TransactionBroadcaster;)V
    .locals 2

    .line 445
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    .line 446
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelClientStates;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    .line 451
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getExtensions()Ljava/util/Map;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0, p1}, Lorg/bitcoinj/protocols/channels/StoredPaymentChannelServerStates;->setTransactionBroadcaster(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    :cond_1
    return-void
.end method

.method private createOrLoadWallet(Z)Lorg/bitcoinj/wallet/Wallet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lorg/bitcoinj/kits/WalletAppKit;->maybeMoveOldWalletOutOfTheWay()V

    .line 363
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lorg/bitcoinj/kits/WalletAppKit;->loadWallet(Z)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->createWallet()Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    .line 367
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Wallet;->freshReceiveKey()Lorg/bitcoinj/crypto/DeterministicKey;

    .line 368
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->provideWalletExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/wallet/WalletExtension;

    .line 369
    invoke-virtual {p1, v1}, Lorg/bitcoinj/wallet/Wallet;->addExtension(Lorg/bitcoinj/wallet/WalletExtension;)V

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Lorg/bitcoinj/wallet/Wallet;->saveToFile(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 376
    invoke-direct {p0, p1}, Lorg/bitcoinj/kits/WalletAppKit;->loadWallet(Z)Lorg/bitcoinj/wallet/Wallet;

    move-result-object p1

    .line 379
    :goto_1
    iget-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useAutoSave:Z

    if-eqz v0, :cond_2

    .line 380
    invoke-virtual {p0, p1}, Lorg/bitcoinj/kits/WalletAppKit;->setupAutoSave(Lorg/bitcoinj/wallet/Wallet;)V

    :cond_2
    return-object p1
.end method

.method private installShutdownHook()V
    .locals 2

    .line 469
    iget-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->autoStop:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/kits/WalletAppKit$2;

    invoke-direct {v1, p0}, Lorg/bitcoinj/kits/WalletAppKit$2;-><init>(Lorg/bitcoinj/kits/WalletAppKit;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method private loadWallet(Z)Lorg/bitcoinj/wallet/Wallet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 394
    :try_start_0
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->provideWalletExtensions()Ljava/util/List;

    move-result-object v1

    .line 395
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bitcoinj/wallet/WalletExtension;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bitcoinj/wallet/WalletExtension;

    .line 396
    invoke-static {v0}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->parseToProto(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$Wallet;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lorg/bitcoinj/kits/WalletAppKit;->walletFactory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

    if-eqz v3, :cond_0

    .line 399
    new-instance v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer;

    iget-object v4, p0, Lorg/bitcoinj/kits/WalletAppKit;->walletFactory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

    invoke-direct {v3, v4}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>(Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;)V

    goto :goto_0

    .line 401
    :cond_0
    new-instance v3, Lorg/bitcoinj/wallet/WalletProtobufSerializer;

    invoke-direct {v3}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;-><init>()V

    .line 402
    :goto_0
    iget-object v4, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v3, v4, v1, v2}, Lorg/bitcoinj/wallet/WalletProtobufSerializer;->readWallet(Lorg/bitcoinj/core/NetworkParameters;[Lorg/bitcoinj/wallet/WalletExtension;Lorg/bitcoinj/wallet/Protos$Wallet;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw p1
.end method

.method private maybeMoveOldWalletOutOfTheWay()V
    .locals 6

    .line 425
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-nez v0, :cond_0

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 430
    :cond_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v0

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    sget-object v0, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    const-string v3, "Renaming old wallet file {} to {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 434
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 436
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to rename wallet for restore"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public chain()Lorg/bitcoinj/core/BlockChain;
    .locals 2

    .line 504
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;

    return-object v0
.end method

.method public connectToLocalHost()Lorg/bitcoinj/kits/WalletAppKit;
    .locals 6

    .line 116
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/bitcoinj/core/PeerAddress;

    const/4 v2, 0x0

    .line 117
    new-instance v3, Lorg/bitcoinj/core/PeerAddress;

    iget-object v4, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v5, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v5}, Lorg/bitcoinj/core/NetworkParameters;->getPort()I

    move-result v5

    invoke-direct {v3, v4, v0, v5}, Lorg/bitcoinj/core/PeerAddress;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/InetAddress;I)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lorg/bitcoinj/kits/WalletAppKit;->setPeerNodes([Lorg/bitcoinj/core/PeerAddress;)Lorg/bitcoinj/kits/WalletAppKit;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createPeerGroup()Lorg/bitcoinj/core/PeerGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 459
    iget-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useTor:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Lcom/subgraph/orchid/TorClient;

    invoke-direct {v0}, Lcom/subgraph/orchid/TorClient;-><init>()V

    .line 461
    invoke-virtual {v0}, Lcom/subgraph/orchid/TorClient;->getConfig()Lcom/subgraph/orchid/TorConfig;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/TorConfig;->setDataDirectory(Ljava/io/File;)V

    .line 462
    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;

    invoke-static {v1, v2, v0}, Lorg/bitcoinj/core/PeerGroup;->newWithTor(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;Lcom/subgraph/orchid/TorClient;)Lorg/bitcoinj/core/PeerGroup;

    move-result-object v0

    return-object v0

    .line 465
    :cond_0
    new-instance v0, Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/PeerGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/core/AbstractBlockChain;)V

    return-object v0
.end method

.method protected createWallet()Lorg/bitcoinj/wallet/Wallet;
    .locals 3

    .line 413
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v0, :cond_0

    .line 414
    new-instance v1, Lorg/bitcoinj/wallet/KeyChainGroup;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/DeterministicSeed;)V

    goto :goto_0

    .line 416
    :cond_0
    new-instance v1, Lorg/bitcoinj/wallet/KeyChainGroup;

    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v0}, Lorg/bitcoinj/wallet/KeyChainGroup;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    .line 417
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->walletFactory:Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;

    if-eqz v0, :cond_1

    .line 418
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-interface {v0, v2, v1}, Lorg/bitcoinj/wallet/WalletProtobufSerializer$WalletFactory;->create(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)Lorg/bitcoinj/wallet/Wallet;

    move-result-object v0

    return-object v0

    .line 420
    :cond_1
    new-instance v0, Lorg/bitcoinj/wallet/Wallet;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v2, v1}, Lorg/bitcoinj/wallet/Wallet;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/wallet/KeyChainGroup;)V

    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isChainFileLocked()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 241
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/bitcoinj/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".spvchain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 246
    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 254
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return v0

    .line 250
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    return v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    throw v0
.end method

.method protected onSetupCompleted()V
    .locals 0

    return-void
.end method

.method public params()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public peerGroup()Lorg/bitcoinj/core/PeerGroup;
    .locals 2

    .line 519
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    return-object v0
.end method

.method protected provideBlockStore(Ljava/io/File;)Lorg/bitcoinj/store/BlockStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/store/BlockStoreException;
        }
    .end annotation

    .line 224
    new-instance v0, Lorg/bitcoinj/store/SPVBlockStore;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v0, v1, p1}, Lorg/bitcoinj/store/SPVBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/File;)V

    return-object v0
.end method

.method protected provideWalletExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/wallet/WalletExtension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public restoreWalletFromSeed(Lorg/bitcoinj/wallet/DeterministicSeed;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    return-object p0
.end method

.method public setAutoSave(Z)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot call after startup"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 127
    iput-boolean p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->useAutoSave:Z

    return-object p0
.end method

.method public setAutoStop(Z)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0

    .line 143
    iput-boolean p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->autoStop:Z

    return-object p0
.end method

.method public setBlockingStartup(Z)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0

    .line 165
    iput-boolean p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->blockingStartup:Z

    return-object p0
.end method

.method public setCheckpoints(Ljava/io/InputStream;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->closeUnchecked(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 154
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    return-object p0
.end method

.method public setDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0
    .param p1    # Lorg/bitcoinj/net/discovery/PeerDiscovery;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 206
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->discovery:Lorg/bitcoinj/net/discovery/PeerDiscovery;

    return-object p0
.end method

.method public setDownloadListener(Lorg/bitcoinj/core/listeners/DownloadProgressTracker;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->downloadListener:Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    return-object p0
.end method

.method public varargs setPeerNodes([Lorg/bitcoinj/core/PeerAddress;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Cannot call after startup"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 109
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;Ljava/lang/String;)Lorg/bitcoinj/kits/WalletAppKit;
    .locals 0

    .line 175
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    .line 176
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit;->version:Ljava/lang/String;

    return-object p0
.end method

.method protected setupAutoSave(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 6

    .line 387
    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bitcoinj/wallet/Wallet;->autosaveToFile(Ljava/io/File;JLjava/util/concurrent/TimeUnit;Lorg/bitcoinj/wallet/WalletFiles$Listener;)Lorg/bitcoinj/wallet/WalletFiles;

    return-void
.end method

.method protected shutDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->context:Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/bitcoinj/core/Context;->propagate(Lorg/bitcoinj/core/Context;)V

    .line 486
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->stop()V

    .line 487
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Wallet;->saveToFile(Ljava/io/File;)V

    .line 488
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v0}, Lorg/bitcoinj/store/BlockStore;->close()V

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    .line 491
    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    .line 492
    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    .line 493
    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 495
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected startUp()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->context:Lorg/bitcoinj/core/Context;

    invoke-static {v0}, Lorg/bitcoinj/core/Context;->propagate(Lorg/bitcoinj/core/Context;)V

    .line 262
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_1
    :goto_0
    sget-object v0, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    const-string v2, "Starting up with directory = {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bitcoinj/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".spvchain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 271
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/bitcoinj/kits/WalletAppKit;->directory:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/bitcoinj/kits/WalletAppKit;->filePrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".wallet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    .line 272
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWalletFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 273
    :goto_1
    invoke-direct {p0, v2}, Lorg/bitcoinj/kits/WalletAppKit;->createOrLoadWallet(Z)Lorg/bitcoinj/wallet/Wallet;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    .line 276
    invoke-virtual {p0, v0}, Lorg/bitcoinj/kits/WalletAppKit;->provideBlockStore(Ljava/io/File;)Lorg/bitcoinj/store/BlockStore;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    if-eqz v1, :cond_5

    .line 277
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v2, :cond_d

    .line 278
    :cond_5
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    if-nez v2, :cond_6

    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v2

    if-nez v2, :cond_6

    .line 279
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-static {v2}, Lorg/bitcoinj/core/CheckpointManager;->openStream(Lorg/bitcoinj/core/NetworkParameters;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    .line 282
    :cond_6
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Failed to delete chain file in preparation for restore."

    const-string v5, "Deleting the chain file in preparation from restore."

    if-eqz v2, :cond_b

    .line 285
    :try_start_1
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    if-eqz v2, :cond_8

    .line 286
    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->restoreFromSeed:Lorg/bitcoinj/wallet/DeterministicSeed;

    invoke-virtual {v2}, Lorg/bitcoinj/wallet/DeterministicSeed;->getCreationTimeSeconds()J

    move-result-wide v6

    if-eqz v1, :cond_9

    .line 288
    sget-object v1, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v1}, Lorg/bitcoinj/store/BlockStore;->close()V

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    new-instance v1, Lorg/bitcoinj/store/SPVBlockStore;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/store/SPVBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/File;)V

    iput-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    goto :goto_2

    .line 291
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_8
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getEarliestKeyCreationTime()J

    move-result-wide v6

    :cond_9
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    if-lez v2, :cond_a

    .line 298
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->checkpoints:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    invoke-static {v0, v1, v2, v6, v7}, Lorg/bitcoinj/core/CheckpointManager;->checkpoint(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/InputStream;Lorg/bitcoinj/store/BlockStore;J)V

    goto :goto_3

    .line 300
    :cond_a
    sget-object v0, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    const-string v1, "Creating a new uncheckpointed block store due to a wallet with a creation time of zero: this will result in a very slow chain sync"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    if-eqz v1, :cond_d

    .line 302
    sget-object v1, Lorg/bitcoinj/kits/WalletAppKit;->log:Lorg/slf4j/Logger;

    invoke-interface {v1, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    invoke-interface {v1}, Lorg/bitcoinj/store/BlockStore;->close()V

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 306
    new-instance v1, Lorg/bitcoinj/store/SPVBlockStore;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2, v0}, Lorg/bitcoinj/store/SPVBlockStore;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/io/File;)V

    iput-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    goto :goto_3

    .line 305
    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_d
    :goto_3
    new-instance v0, Lorg/bitcoinj/core/BlockChain;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/core/BlockChain;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/store/BlockStore;)V

    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;

    .line 310
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->createPeerGroup()Lorg/bitcoinj/core/PeerGroup;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    .line 311
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->userAgent:Ljava/lang/String;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/bitcoinj/core/PeerGroup;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_e
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

    if-eqz v0, :cond_10

    .line 317
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

    array-length v1, v0

    :goto_4
    if-ge v3, v1, :cond_f

    aget-object v2, v0, v3

    iget-object v4, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v4, v2}, Lorg/bitcoinj/core/PeerGroup;->addAddress(Lorg/bitcoinj/core/PeerAddress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 318
    :cond_f
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

    array-length v1, v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->setMaxConnections(I)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->peerAddresses:[Lorg/bitcoinj/core/PeerAddress;

    goto :goto_6

    .line 320
    :cond_10
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v0}, Lorg/bitcoinj/core/NetworkParameters;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.bitcoin.regtest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useTor:Z

    if-nez v0, :cond_12

    .line 321
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->discovery:Lorg/bitcoinj/net/discovery/PeerDiscovery;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->discovery:Lorg/bitcoinj/net/discovery/PeerDiscovery;

    goto :goto_5

    :cond_11
    new-instance v1, Lorg/bitcoinj/net/discovery/DnsDiscovery;

    iget-object v2, p0, Lorg/bitcoinj/kits/WalletAppKit;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-direct {v1, v2}, Lorg/bitcoinj/net/discovery/DnsDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;)V

    :goto_5
    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->addPeerDiscovery(Lorg/bitcoinj/net/discovery/PeerDiscovery;)V

    .line 323
    :cond_12
    :goto_6
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vChain:Lorg/bitcoinj/core/BlockChain;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/BlockChain;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V

    .line 324
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0, v1}, Lorg/bitcoinj/core/PeerGroup;->addWallet(Lorg/bitcoinj/wallet/Wallet;)V

    .line 325
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->onSetupCompleted()V

    .line 327
    iget-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->blockingStartup:Z

    if-eqz v0, :cond_13

    .line 328
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->start()V

    .line 330
    invoke-direct {p0}, Lorg/bitcoinj/kits/WalletAppKit;->installShutdownHook()V

    .line 331
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0, v0}, Lorg/bitcoinj/kits/WalletAppKit;->completeExtensionInitiations(Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 334
    new-instance v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    invoke-direct {v0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;-><init>()V

    .line 335
    iget-object v1, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v1, v0}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownload(Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    .line 336
    invoke-virtual {v0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->await()V

    goto :goto_7

    .line 338
    :cond_13
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0}, Lorg/bitcoinj/core/PeerGroup;->startAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lorg/bitcoinj/kits/WalletAppKit$1;

    invoke-direct {v1, p0}, Lorg/bitcoinj/kits/WalletAppKit$1;-><init>(Lorg/bitcoinj/kits/WalletAppKit;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    :try_end_1
    .catch Lorg/bitcoinj/store/BlockStoreException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    .line 354
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public store()Lorg/bitcoinj/store/BlockStore;
    .locals 2

    .line 509
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vStore:Lorg/bitcoinj/store/BlockStore;

    return-object v0
.end method

.method public useTor()Lorg/bitcoinj/kits/WalletAppKit;
    .locals 1

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->useTor:Z

    return-object p0
.end method

.method public wallet()Lorg/bitcoinj/wallet/Wallet;
    .locals 2

    .line 514
    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/bitcoinj/kits/WalletAppKit;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Cannot call until startup is complete"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit;->vWallet:Lorg/bitcoinj/wallet/Wallet;

    return-object v0
.end method
