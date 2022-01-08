.class public Lorg/bitcoinj/core/listeners/DownloadProgressTracker;
.super Lorg/bitcoinj/core/listeners/AbstractPeerDataEventListener;
.source "DownloadProgressTracker.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private caughtUp:Z

.field private future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastPercent:I

.field private originalBlocksLeft:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lorg/bitcoinj/core/listeners/AbstractPeerDataEventListener;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->originalBlocksLeft:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->lastPercent:I

    .line 43
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 44
    iput-boolean v0, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->caughtUp:Z

    return-void
.end method


# virtual methods
.method public await()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doneDownload()V
    .locals 0

    return-void
.end method

.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->future:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public onBlocksDownloaded(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/FilteredBlock;I)V
    .locals 6
    .param p3    # Lorg/bitcoinj/core/FilteredBlock;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    iget-boolean p3, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->caughtUp:Z

    if-eqz p3, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 p3, 0x1

    .line 68
    iput-boolean p3, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->caughtUp:Z

    .line 69
    invoke-virtual {p0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->doneDownload()V

    .line 70
    iget-object p3, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Peer;->getBestHeight()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_1
    if-ltz p4, :cond_3

    .line 73
    iget p1, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->originalBlocksLeft:I

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    int-to-double v0, p4

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    sub-double/2addr v2, v0

    double-to-int p1, v2

    .line 77
    iget p3, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->lastPercent:I

    if-eq p1, p3, :cond_3

    .line 78
    new-instance p3, Ljava/util/Date;

    invoke-virtual {p2}, Lorg/bitcoinj/core/Block;->getTimeSeconds()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v2, v3, p4, p3}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->progress(DILjava/util/Date;)V

    .line 79
    iput p1, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->lastPercent:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onChainDownloadStarted(Lorg/bitcoinj/core/Peer;I)V
    .locals 2

    const/4 v0, -0x1

    if-lez p2, :cond_0

    .line 48
    iget v1, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->originalBlocksLeft:I

    if-ne v1, v0, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->startDownload(I)V

    .line 52
    :cond_0
    iget v1, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->originalBlocksLeft:I

    if-ne v1, v0, :cond_1

    .line 53
    iput p2, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->originalBlocksLeft:I

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->log:Lorg/slf4j/Logger;

    const-string v1, "Chain download switched to {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_2

    .line 57
    invoke-virtual {p0}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->doneDownload()V

    .line 58
    iget-object p2, p0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Peer;->getBestHeight()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method protected progress(DILjava/util/Date;)V
    .locals 3

    .line 90
    sget-object v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->log:Lorg/slf4j/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 91
    invoke-static {p4}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    const-string p1, "Chain download %d%% done with %d blocks to go, block date %s"

    .line 90
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method protected startDownload(I)V
    .locals 3

    .line 100
    sget-object v0, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading block chain of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    if-le p1, v2, :cond_0

    const-string p1, "This may take a while."

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method
