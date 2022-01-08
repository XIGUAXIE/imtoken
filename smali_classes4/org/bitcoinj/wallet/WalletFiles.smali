.class public Lorg/bitcoinj/wallet/WalletFiles;
.super Ljava/lang/Object;
.source "WalletFiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/WalletFiles$Listener;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final delay:J

.field private final delayTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private final executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final file:Ljava/io/File;

.field private final savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final saver:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private volatile vListener:Lorg/bitcoinj/wallet/WalletFiles$Listener;

.field private final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/bitcoinj/wallet/WalletFiles;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/wallet/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;

    const/4 v2, 0x1

    const-string v3, "Wallet autosave thread"

    invoke-direct {v1, v3, v2}, Lorg/bitcoinj/utils/ContextPropagatingThreadFactory;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 77
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 78
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 79
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/wallet/Wallet;

    iput-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 82
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/File;

    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletFiles;->file:Ljava/io/File;

    .line 83
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-wide p3, p0, Lorg/bitcoinj/wallet/WalletFiles;->delay:J

    .line 85
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletFiles;->delayTimeUnit:Ljava/util/concurrent/TimeUnit;

    .line 87
    new-instance p2, Lorg/bitcoinj/wallet/WalletFiles$1;

    invoke-direct {p2, p0, p1}, Lorg/bitcoinj/wallet/WalletFiles$1;-><init>(Lorg/bitcoinj/wallet/WalletFiles;Lorg/bitcoinj/wallet/Wallet;)V

    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletFiles;->saver:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/wallet/WalletFiles;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 40
    iget-object p0, p0, Lorg/bitcoinj/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    .line 40
    sget-object v0, Lorg/bitcoinj/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bitcoinj/wallet/WalletFiles;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lorg/bitcoinj/wallet/WalletFiles;->saveNowInternal()V

    return-void
.end method

.method private saveNowInternal()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "wallet"

    const/4 v3, 0x0

    .line 133
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lorg/bitcoinj/wallet/WalletFiles;->vListener:Lorg/bitcoinj/wallet/WalletFiles$Listener;

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v2, v1}, Lorg/bitcoinj/wallet/WalletFiles$Listener;->onBeforeAutoSave(Ljava/io/File;)V

    .line 137
    :cond_0
    iget-object v3, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v4, p0, Lorg/bitcoinj/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-virtual {v3, v1, v4}, Lorg/bitcoinj/wallet/Wallet;->saveToFile(Ljava/io/File;Ljava/io/File;)V

    if-eqz v2, :cond_1

    .line 139
    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletFiles;->file:Ljava/io/File;

    invoke-interface {v2, v1}, Lorg/bitcoinj/wallet/WalletFiles$Listener;->onAfterAutoSave(Ljava/io/File;)V

    .line 140
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 141
    sget-object v1, Lorg/bitcoinj/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    const-string v2, "Save completed in {}"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getWallet()Lorg/bitcoinj/wallet/Wallet;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    return-object v0
.end method

.method public saveLater()V
    .locals 5

    .line 146
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->savePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletFiles;->saver:Ljava/util/concurrent/Callable;

    iget-wide v2, p0, Lorg/bitcoinj/wallet/WalletFiles;->delay:J

    iget-object v4, p0, Lorg/bitcoinj/wallet/WalletFiles;->delayTimeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public saveNow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTime()Ljava/util/Date;

    move-result-object v0

    .line 124
    sget-object v1, Lorg/bitcoinj/wallet/WalletFiles;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v4}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/bitcoinj/wallet/WalletFiles;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 126
    invoke-virtual {v3}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Saving wallet; last seen block is height {}, date {}, hash {}"

    .line 124
    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-direct {p0}, Lorg/bitcoinj/wallet/WalletFiles;->saveNowInternal()V

    return-void
.end method

.method public setListener(Lorg/bitcoinj/wallet/WalletFiles$Listener;)V
    .locals 0
    .param p1    # Lorg/bitcoinj/wallet/WalletFiles$Listener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/WalletFiles$Listener;

    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletFiles;->vListener:Lorg/bitcoinj/wallet/WalletFiles$Listener;

    return-void
.end method

.method public shutdownAndWait()V
    .locals 4

    .line 153
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide v1, 0x7fffffffffffffffL

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 157
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
