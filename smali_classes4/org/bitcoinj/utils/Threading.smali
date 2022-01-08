.class public Lorg/bitcoinj/utils/Threading;
.super Ljava/lang/Object;
.source "Threading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/utils/Threading$UserThread;
    }
.end annotation


# static fields
.field public static final SAME_THREAD:Ljava/util/concurrent/Executor;

.field public static THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public static USER_THREAD:Ljava/util/concurrent/Executor;

.field public static factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

.field private static policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

.field public static volatile uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    invoke-static {}, Lorg/bitcoinj/utils/Threading;->throwOnLockCycles()V

    .line 137
    new-instance v0, Lorg/bitcoinj/utils/Threading$UserThread;

    invoke-direct {v0}, Lorg/bitcoinj/utils/Threading$UserThread;-><init>()V

    sput-object v0, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Lorg/bitcoinj/utils/Threading$2;

    invoke-direct {v0}, Lorg/bitcoinj/utils/Threading$2;-><init>()V

    sput-object v0, Lorg/bitcoinj/utils/Threading;->SAME_THREAD:Ljava/util/concurrent/Executor;

    .line 190
    new-instance v0, Lorg/bitcoinj/utils/Threading$3;

    invoke-direct {v0}, Lorg/bitcoinj/utils/Threading$3;-><init>()V

    .line 191
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lcom/google/common/util/concurrent/MoreExecutors;->listeningDecorator(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/Threading;->THREAD_POOL:Lcom/google/common/util/concurrent/ListeningExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicy()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .locals 1

    .line 180
    sget-object v0, Lorg/bitcoinj/utils/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    return-object v0
.end method

.method public static ignoreLockCycles()V
    .locals 1

    .line 171
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method public static lock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 156
    invoke-static {}, Lorg/bitcoinj/core/Utils;->isAndroidRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance p0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-object p0

    .line 159
    :cond_0
    sget-object v0, Lorg/bitcoinj/utils/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method public static setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 0

    .line 175
    sput-object p0, Lorg/bitcoinj/utils/Threading;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 176
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newInstance(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    move-result-object p0

    sput-object p0, Lorg/bitcoinj/utils/Threading;->factory:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    return-void
.end method

.method public static throwOnLockCycles()V
    .locals 1

    .line 167
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method public static waitForUserCode()V
    .locals 3

    .line 68
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 69
    sget-object v1, Lorg/bitcoinj/utils/Threading;->USER_THREAD:Ljava/util/concurrent/Executor;

    new-instance v2, Lorg/bitcoinj/utils/Threading$1;

    invoke-direct {v2, v0}, Lorg/bitcoinj/utils/Threading$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static warnOnLockCycles()V
    .locals 1

    .line 163
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->WARN:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-static {v0}, Lorg/bitcoinj/utils/Threading;->setPolicy(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method
