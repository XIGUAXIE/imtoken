.class public Lorg/bitcoinj/utils/Threading$UserThread;
.super Ljava/lang/Thread;
.source "Threading.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/utils/Threading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserThread"
.end annotation


# static fields
.field public static WARNING_THRESHOLD:I

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private tasks:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lorg/bitcoinj/utils/Threading$UserThread;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/utils/Threading$UserThread;->log:Lorg/slf4j/Logger;

    const/16 v0, 0x2710

    .line 92
    sput v0, Lorg/bitcoinj/utils/Threading$UserThread;->WARNING_THRESHOLD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "bitcoinj user thread"

    .line 96
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lorg/bitcoinj/utils/Threading$UserThread;->setDaemon(Z)V

    .line 98
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/bitcoinj/utils/Threading$UserThread;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 99
    invoke-virtual {p0}, Lorg/bitcoinj/utils/Threading$UserThread;->start()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 119
    iget-object v0, p0, Lorg/bitcoinj/utils/Threading$UserThread;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 120
    sget v1, Lorg/bitcoinj/utils/Threading$UserThread;->WARNING_THRESHOLD:I

    if-ne v0, v1, :cond_0

    .line 121
    sget-object v1, Lorg/bitcoinj/utils/Threading$UserThread;->log:Lorg/slf4j/Logger;

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "User thread has {} pending tasks, memory exhaustion may occur.\nIf you see this message, check your memory consumption and see if it\'s problematic or excessively spikey.\nIf it is, check for deadlocked or slow event handlers. If it isn\'t, try adjusting the constant \nThreading.UserThread.WARNING_THRESHOLD upwards until it\'s a suitable level for your app, or Integer.MAX_VALUE to disable."

    .line 121
    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/utils/Threading$UserThread;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Uninterruptibles;->putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 105
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/utils/Threading$UserThread;->tasks:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 107
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 109
    sget-object v1, Lorg/bitcoinj/utils/Threading$UserThread;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception in user thread"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    sget-object v1, Lorg/bitcoinj/utils/Threading;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v1, p0, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
