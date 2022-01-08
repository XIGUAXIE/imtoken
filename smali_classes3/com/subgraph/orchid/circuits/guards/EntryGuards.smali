.class public Lcom/subgraph/orchid/circuits/guards/EntryGuards;
.super Ljava/lang/Object;
.source "EntryGuards.java"


# static fields
.field private static final EIGHTEEN_HOURS:J

.field private static final FOUR_HOURS:J

.field private static final MIN_USABLE_GUARDS:I = 0x2

.field private static final NUM_ENTRY_GUARDS:I = 0x3

.field private static final ONE_HOUR:J

.field private static final SEVEN_DAYS:J

.field private static final SIXTY_DAYS:J

.field private static final SIX_HOURS:J

.field private static final THIRTYSIX_HOURS:J

.field private static final THIRTY_DAYS:J

.field private static final THREE_DAYS:J

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

.field private final config:Lcom/subgraph/orchid/TorConfig;

.field private final connectionCache:Lcom/subgraph/orchid/ConnectionCache;

.field private final directory:Lcom/subgraph/orchid/Directory;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private final nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

.field private final pendingProbes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/GuardEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Lcom/subgraph/orchid/crypto/TorRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    const-wide/16 v0, 0x1

    .line 270
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->ONE_HOUR:J

    const-wide/16 v0, 0x4

    .line 271
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->FOUR_HOURS:J

    const-wide/16 v0, 0x6

    .line 272
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIX_HOURS:J

    const-wide/16 v0, 0x12

    .line 273
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->EIGHTEEN_HOURS:J

    const-wide/16 v0, 0x24

    .line 274
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->hoursToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTYSIX_HOURS:J

    const-wide/16 v0, 0x3

    .line 275
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THREE_DAYS:J

    const-wide/16 v0, 0x7

    .line 276
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SEVEN_DAYS:J

    const-wide/16 v0, 0x1e

    .line 277
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTY_DAYS:J

    const-wide/16 v0, 0x3c

    .line 278
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->daysToMs(J)J

    move-result-wide v0

    sput-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIXTY_DAYS:J

    return-void
.end method

.method public constructor <init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/DirectoryDownloader;Lcom/subgraph/orchid/Directory;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    .line 43
    new-instance v0, Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-direct {v0}, Lcom/subgraph/orchid/crypto/TorRandom;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    .line 44
    new-instance v0, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    invoke-direct {v0, p1, p4}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/Directory;)V

    iput-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    .line 45
    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    .line 46
    iput-object p4, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    .line 47
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    .line 48
    new-instance p2, Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-direct {p2, p1, p3}, Lcom/subgraph/orchid/circuits/guards/Bridges;-><init>(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/DirectoryDownloader;)V

    iput-object p2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

    .line 49
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    const-string p1, "EntryGuards worker"

    .line 50
    invoke-static {p1}, Lcom/subgraph/orchid/Threading;->newPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private addPendingInitialConnections(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/GuardEntry;

    .line 181
    invoke-interface {v1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-interface {v1}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRouterIfUsableAndNotExcluded(Lcom/subgraph/orchid/GuardEntry;Ljava/util/Set;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subgraph/orchid/GuardEntry;",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 166
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private chooseNewGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->nodeChooser:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;

    sget-object v1, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;->WEIGHT_FOR_GUARD:Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;

    new-instance v2, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;

    invoke-direct {v2, p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards$1;-><init>(Lcom/subgraph/orchid/circuits/guards/EntryGuards;Ljava/util/Set;)V

    invoke-virtual {v0, v1, v2}, Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser;->chooseRandomNode(Lcom/subgraph/orchid/circuits/path/CircuitNodeChooser$WeightRule;Lcom/subgraph/orchid/circuits/path/RouterFilter;)Lcom/subgraph/orchid/Router;

    move-result-object p1

    return-object p1
.end method

.method private countPendingInitialProbes()I
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/GuardEntry;

    .line 208
    invoke-interface {v2}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static daysToMs(J)J
    .locals 2

    .line 284
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method private getExcludedForChooseNew(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 173
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 175
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->addPendingInitialConnections(Ljava/util/Set;)V

    return-object v0
.end method

.method private getMinimumUsableGuards(Ljava/util/Set;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->testStatusOfAllGuards()V

    .line 80
    :goto_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getUsableGuardRouters(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p2, :cond_0

    .line 82
    monitor-exit v0

    return-object v1

    .line 84
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, p1, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getExcludedForChooseNew(Ljava/util/Set;Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v2, p2, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->maybeChooseNew(IILjava/util/Set;)V

    .line 86
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getRetestInterval(J)J
    .locals 3

    .line 295
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIX_HOURS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 296
    sget-wide p1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->ONE_HOUR:J

    return-wide p1

    .line 297
    :cond_0
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THREE_DAYS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 298
    sget-wide p1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->FOUR_HOURS:J

    return-wide p1

    .line 299
    :cond_1
    sget-wide v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SEVEN_DAYS:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 300
    sget-wide p1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->EIGHTEEN_HOURS:J

    return-wide p1

    .line 302
    :cond_2
    sget-wide p1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTYSIX_HOURS:J

    return-wide p1
.end method

.method private getUsableGuardRouters(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/Router;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v1}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/subgraph/orchid/GuardEntry;

    .line 157
    invoke-direct {p0, v2, p1, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->addRouterIfUsableAndNotExcluded(Lcom/subgraph/orchid/GuardEntry;Ljava/util/Set;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static hoursToMs(J)J
    .locals 2

    .line 281
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method private initialProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 3

    .line 119
    sget-object v0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probe connection to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getRouterForEntry()Lcom/subgraph/orchid/Router;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " succeeded.  Adding it as a new entry guard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0, p1}, Lcom/subgraph/orchid/Directory;->addGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    .line 121
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestAllUnreachable()V

    return-void
.end method

.method private isExpired(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 4

    .line 251
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getCreatedTime()Ljava/util/Date;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 253
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 254
    sget-wide v2, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->SIXTY_DAYS:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPermanentlyUnlisted(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 6

    .line 238
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getUnlistedSince()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 243
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 244
    sget-wide v4, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->THIRTY_DAYS:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 3

    .line 224
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;

    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->connectionCache:Lcom/subgraph/orchid/ConnectionCache;

    invoke-direct {v1, v2, p0, p1}, Lcom/subgraph/orchid/circuits/guards/GuardProbeTask;-><init>(Lcom/subgraph/orchid/ConnectionCache;Lcom/subgraph/orchid/circuits/guards/EntryGuards;Lcom/subgraph/orchid/GuardEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeChooseNew(IILjava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)V"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->countPendingInitialProbes()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 193
    invoke-direct {p0, p3}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->chooseNewGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    sget-object p1, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    const-string p2, "Need to add entry guards but no suitable guard routers are available"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void

    .line 198
    :cond_0
    sget-object v2, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Testing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as a new guard since we only have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " usable guards"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2, v1}, Lcom/subgraph/orchid/Directory;->createGuardEntryFor(Lcom/subgraph/orchid/Router;)Lcom/subgraph/orchid/GuardEntry;

    move-result-object v1

    .line 200
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private needsUnreachableTest(Lcom/subgraph/orchid/GuardEntry;)Z
    .locals 9

    .line 258
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 259
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->testCurrentlyUsable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 263
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->getLastConnectAttempt()Ljava/util/Date;

    move-result-object p1

    .line 264
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    if-nez p1, :cond_1

    move-wide v5, v3

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 267
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getRetestInterval(J)J

    move-result-wide v2

    cmp-long p1, v5, v2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method private retestAllUnreachable()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/subgraph/orchid/GuardEntry;

    .line 138
    invoke-interface {v1}, Lcom/subgraph/orchid/GuardEntry;->getDownSince()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private retestProbeFailed(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0

    .line 125
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->markAsDown()V

    return-void
.end method

.method private retestProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 0

    .line 115
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->clearDownSince()V

    return-void
.end method

.method private testStatusOfAllGuards()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v0}, Lcom/subgraph/orchid/Directory;->getGuardEntries()Ljava/util/List;

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

    check-cast v1, Lcom/subgraph/orchid/GuardEntry;

    .line 146
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isPermanentlyUnlisted(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->isExpired(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->needsUnreachableTest(Lcom/subgraph/orchid/GuardEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-direct {p0, v1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->launchEntryProbe(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 147
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->directory:Lcom/subgraph/orchid/Directory;

    invoke-interface {v2, v1}, Lcom/subgraph/orchid/Directory;->removeGuardEntry(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public chooseRandomGuard(Ljava/util/Set;)Lcom/subgraph/orchid/Router;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/subgraph/orchid/Router;",
            ">;)",
            "Lcom/subgraph/orchid/Router;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->bridges:Lcom/subgraph/orchid/circuits/guards/Bridges;

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/circuits/guards/Bridges;->chooseRandomBridge(Ljava/util/Set;)Lcom/subgraph/orchid/BridgeRouter;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x2

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->getMinimumUsableGuards(Ljava/util/Set;I)Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->random:Lcom/subgraph/orchid/crypto/TorRandom;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/crypto/TorRandom;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/subgraph/orchid/Router;

    return-object p1
.end method

.method public isUsingBridges()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->config:Lcom/subgraph/orchid/TorConfig;

    invoke-interface {v0}, Lcom/subgraph/orchid/TorConfig;->getUseBridges()Z

    move-result v0

    return v0
.end method

.method probeConnectionFailed(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestProbeFailed(Lcom/subgraph/orchid/GuardEntry;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 109
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method probeConnectionSucceeded(Lcom/subgraph/orchid/GuardEntry;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->pendingProbes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {p1}, Lcom/subgraph/orchid/GuardEntry;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->retestProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/circuits/guards/EntryGuards;->initialProbeSucceeded(Lcom/subgraph/orchid/GuardEntry;)V

    .line 99
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
