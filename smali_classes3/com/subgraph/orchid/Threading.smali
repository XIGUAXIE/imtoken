.class public Lcom/subgraph/orchid/Threading;
.super Ljava/lang/Object;
.source "Threading.java"


# static fields
.field public static factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

.field private static policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/subgraph/orchid/Threading;->throwOnLockCycles()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicy()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .locals 1

    .line 48
    sget-object v0, Lcom/subgraph/orchid/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    return-object v0
.end method

.method public static ignoreLockCycles()V
    .locals 1

    .line 39
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method public static lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 27
    sget-object v0, Lcom/subgraph/orchid/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method public static newPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 52
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-%d"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    .line 55
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newScheduledPool(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 66
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-%d"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    .line 69
    invoke-static {v1, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static newSingleThreadScheduledPool(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .line 59
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-%d"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object p0

    .line 62
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/subgraph/orchid/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 44
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newInstance(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    move-result-object p0

    sput-object p0, Lcom/subgraph/orchid/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    return-void
.end method

.method public static throwOnLockCycles()V
    .locals 1

    .line 35
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method public static warnOnLockCycles()V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lcom/subgraph/orchid/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method
