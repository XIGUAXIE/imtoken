.class public abstract Lcom/subgraph/orchid/directory/DescriptorCache;
.super Ljava/lang/Object;
.source "DescriptorCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/subgraph/orchid/Descriptor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field private cacheLength:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final data:Lcom/subgraph/orchid/directory/DescriptorCacheData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subgraph/orchid/directory/DescriptorCacheData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private droppedBytes:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private initiallyLoaded:Z
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

.field private journalLength:I
    .annotation runtime Lcom/subgraph/orchid/misc/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final store:Lcom/subgraph/orchid/DirectoryStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/subgraph/orchid/directory/DescriptorCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/DirectoryStore;Lcom/subgraph/orchid/DirectoryStore$CacheFile;Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DescriptorCache rebuild worker"

    .line 27
    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->newScheduledPool(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    new-instance v0, Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-direct {v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    .line 46
    iput-object p1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    .line 47
    iput-object p2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 48
    iput-object p3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    .line 49
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->startRebuildTask()Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/subgraph/orchid/directory/DescriptorCache;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->maybeRebuildCache()V

    return-void
.end method

.method private declared-synchronized clearMemoryCache()V
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->clear()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    .line 98
    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    .line 99
    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadCacheBuffers()[Ljava/nio/ByteBuffer;
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 116
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v4, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v3, v4}, Lcom/subgraph/orchid/DirectoryStore;->loadCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 117
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadCacheFileBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subgraph/orchid/Descriptor;

    .line 130
    sget-object v1, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_CACHEFILE:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-interface {v0, v1}, Lcom/subgraph/orchid/Descriptor;->setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V

    .line 131
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private loadJournalFileBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 138
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Lcom/subgraph/orchid/directory/DescriptorCache;->createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParser;->parse()Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isOkay()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 146
    sget-object v1, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " descriptors from journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 147
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getParsedDocuments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/Descriptor;

    .line 148
    sget-object v2, Lcom/subgraph/orchid/Descriptor$CacheLocation;->CACHED_JOURNAL:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/Descriptor;->setCacheLocation(Lcom/subgraph/orchid/Descriptor$CacheLocation;)V

    .line 149
    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v2, v1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_5

    .line 154
    sget-object p1, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " duplicate descriptors in journal file"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_3
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    sget-object v0, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid descriptor data parsing from journal file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :cond_4
    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    sget-object v0, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing descriptors from journal file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private declared-synchronized maybeRebuildCache()V
    .locals 2

    monitor-enter p0

    .line 174
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 175
    monitor-exit p0

    return-void

    .line 178
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->cleanExpired()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    .line 180
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->shouldRebuildCache()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 181
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildCache()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private rebuildCache()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v3}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->getAllDescriptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/subgraph/orchid/DirectoryStore;->writeDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    .line 202
    iget-object v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {v1, v2}, Lcom/subgraph/orchid/DirectoryStore;->removeCacheFile(Lcom/subgraph/orchid/DirectoryStore$CacheFile;)V

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->reloadCache()V

    return-void

    :catchall_0
    move-exception v1

    .line 203
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized reloadCache()V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->clearMemoryCache()V

    .line 104
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadCacheBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadCacheFileBuffer(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x1

    .line 106
    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->loadJournalFileBuffer(Ljava/nio/ByteBuffer;)V

    .line 107
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z

    if-nez v0, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldRebuildCache()Z
    .locals 6

    .line 187
    iget v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    const/4 v1, 0x0

    const/16 v2, 0x4000

    if-ge v0, v2, :cond_0

    return v1

    .line 190
    :cond_0
    iget v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->droppedBytes:I

    iget v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->cacheLength:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x3

    const/4 v5, 0x1

    if-le v2, v4, :cond_1

    return v5

    .line 193
    :cond_1
    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_2

    return v5

    :cond_2
    return v1
.end method

.method private startRebuildTask()Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/subgraph/orchid/directory/DescriptorCache$1;

    invoke-direct {v1, p0}, Lcom/subgraph/orchid/directory/DescriptorCache$1;-><init>(Lcom/subgraph/orchid/directory/DescriptorCache;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    const-wide/16 v4, 0x1e

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDescriptor(Lcom/subgraph/orchid/Descriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/DescriptorCache;->addDescriptors(Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized addDescriptors(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/Descriptor;

    .line 71
    iget-object v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v3, v2}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->addDescriptor(Lcom/subgraph/orchid/Descriptor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v2}, Lcom/subgraph/orchid/Descriptor;->getCacheLocation()Lcom/subgraph/orchid/Descriptor$CacheLocation;

    move-result-object v3

    sget-object v4, Lcom/subgraph/orchid/Descriptor$CacheLocation;->NOT_CACHED:Lcom/subgraph/orchid/Descriptor$CacheLocation;

    if-ne v3, v4, :cond_0

    .line 73
    iget v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    invoke-interface {v2}, Lcom/subgraph/orchid/Descriptor;->getBodyLength()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalLength:I

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->store:Lcom/subgraph/orchid/DirectoryStore;

    iget-object v2, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->journalFile:Lcom/subgraph/orchid/DirectoryStore$CacheFile;

    invoke-interface {p1, v2, v0}, Lcom/subgraph/orchid/DirectoryStore;->appendDocumentList(Lcom/subgraph/orchid/DirectoryStore$CacheFile;Ljava/util/List;)V

    :cond_3
    if-lez v1, :cond_4

    .line 85
    sget-object p1, Lcom/subgraph/orchid/directory/DescriptorCache;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate descriptors added to journal, count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract createDocumentParser(Ljava/nio/ByteBuffer;)Lcom/subgraph/orchid/directory/parsing/DocumentParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/subgraph/orchid/directory/parsing/DocumentParser<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getDescriptor(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/data/HexDigest;",
            ")TT;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->data:Lcom/subgraph/orchid/directory/DescriptorCacheData;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/directory/DescriptorCacheData;->findByDigest(Lcom/subgraph/orchid/data/HexDigest;)Lcom/subgraph/orchid/Descriptor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized initialLoad()V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->initiallyLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/subgraph/orchid/directory/DescriptorCache;->reloadCache()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/directory/DescriptorCache;->rebuildExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method
