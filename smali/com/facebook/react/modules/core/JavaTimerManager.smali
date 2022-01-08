.class public Lcom/facebook/react/modules/core/JavaTimerManager;
.super Ljava/lang/Object;
.source "JavaTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;,
        Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;,
        Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;,
        Lcom/facebook/react/modules/core/JavaTimerManager$Timer;
    }
.end annotation


# static fields
.field private static final FRAME_DURATION_MS:F = 16.666666f

.field private static final IDLE_CALLBACK_FRAME_DEADLINE_MS:F = 1.0f


# instance fields
.field private final isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mCurrentIdleCallbackRunnable:Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private mFrameCallbackPosted:Z

.field private mFrameIdleCallbackPosted:Z

.field private final mIdleCallbackGuard:Ljava/lang/Object;

.field private final mIdleFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;

.field private final mJavaScriptTimerManager:Lcom/facebook/react/modules/core/JavaScriptTimerManager;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

.field private mSendIdleEvents:Z

.field private final mTimerFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;

.field private final mTimerGuard:Ljava/lang/Object;

.field private final mTimerIdsToTimers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/modules/core/JavaTimerManager$Timer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/facebook/react/modules/core/JavaTimerManager$Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/JavaScriptTimerManager;Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerGuard:Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleCallbackGuard:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$1;)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;

    .line 163
    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;

    invoke-direct {v0, p0, v2}, Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$1;)V

    iput-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;

    .line 165
    iput-boolean v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameCallbackPosted:Z

    .line 166
    iput-boolean v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameIdleCallbackPosted:Z

    .line 167
    iput-boolean v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mSendIdleEvents:Z

    .line 174
    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 175
    iput-object p2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mJavaScriptTimerManager:Lcom/facebook/react/modules/core/JavaScriptTimerManager;

    .line 176
    iput-object p3, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    .line 177
    iput-object p4, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 180
    new-instance p1, Ljava/util/PriorityQueue;

    new-instance p2, Lcom/facebook/react/modules/core/JavaTimerManager$1;

    invoke-direct {p2, p0}, Lcom/facebook/react/modules/core/JavaTimerManager$1;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;)V

    const/16 p3, 0xb

    invoke-direct {p1, p3, p2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimers:Ljava/util/PriorityQueue;

    .line 196
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerIdsToTimers:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/ReactChoreographer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mCurrentIdleCallbackRunnable:Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/facebook/react/modules/core/JavaTimerManager;Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;)Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mCurrentIdleCallbackRunnable:Lcom/facebook/react/modules/core/JavaTimerManager$IdleCallbackRunnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleCallbackGuard:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/facebook/react/modules/core/JavaTimerManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mSendIdleEvents:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/facebook/react/modules/core/JavaTimerManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->setChoreographerIdleCallback()V

    return-void
.end method

.method static synthetic access$1900(Lcom/facebook/react/modules/core/JavaTimerManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearChoreographerIdleCallback()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerGuard:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/facebook/react/modules/core/JavaTimerManager;)Ljava/util/PriorityQueue;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimers:Ljava/util/PriorityQueue;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/react/modules/core/JavaTimerManager;)Landroid/util/SparseArray;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerIdsToTimers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$900(Lcom/facebook/react/modules/core/JavaTimerManager;)Lcom/facebook/react/modules/core/JavaScriptTimerManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mJavaScriptTimerManager:Lcom/facebook/react/modules/core/JavaScriptTimerManager;

    return-object p0
.end method

.method private clearChoreographerIdleCallback()V
    .locals 3

    .line 281
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameIdleCallbackPosted:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameIdleCallbackPosted:Z

    :cond_0
    return-void
.end method

.method private clearFrameCallback()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 264
    invoke-static {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object v0

    .line 265
    iget-boolean v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameCallbackPosted:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->hasActiveTasks()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameCallbackPosted:Z

    :cond_0
    return-void
.end method

.method private maybeIdleCallback()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearFrameCallback()V

    :cond_0
    return-void
.end method

.method private maybeSetChoreographerIdleCallback()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleCallbackGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mSendIdleEvents:Z

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->setChoreographerIdleCallback()V

    .line 245
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setChoreographerCallback()V
    .locals 3

    .line 255
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameCallbackPosted:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->TIMERS_EVENTS:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$TimerFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameCallbackPosted:Z

    :cond_0
    return-void
.end method

.method private setChoreographerIdleCallback()V
    .locals 3

    .line 273
    iget-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameIdleCallbackPosted:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactChoreographer:Lcom/facebook/react/modules/core/ReactChoreographer;

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->IDLE_EVENT:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleFrameCallback:Lcom/facebook/react/modules/core/JavaTimerManager$IdleFrameCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mFrameIdleCallbackPosted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAndMaybeCallTimer(IIDZ)V
    .locals 7

    .line 319
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    double-to-long p3, p3

    .line 325
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getDevSupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-long v2, p3, v0

    .line 326
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 328
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mJavaScriptTimerManager:Lcom/facebook/react/modules/core/JavaScriptTimerManager;

    const-string v3, "Debugger and device times have drifted by more than 60s. Please correct this by running adb shell \"date `date +%m%d%H%M%Y.%S`\" on your debugger machine."

    invoke-interface {v2, v3}, Lcom/facebook/react/modules/core/JavaScriptTimerManager;->emitTimeDriftWarning(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x0

    sub-long/2addr p3, v0

    int-to-long v0, p2

    add-long/2addr p3, v0

    .line 335
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    if-nez p2, :cond_1

    if-nez p5, :cond_1

    .line 337
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object p2

    .line 338
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/WritableArray;->pushInt(I)V

    .line 339
    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mJavaScriptTimerManager:Lcom/facebook/react/modules/core/JavaScriptTimerManager;

    invoke-interface {p1, p2}, Lcom/facebook/react/modules/core/JavaScriptTimerManager;->callTimers(Lcom/facebook/react/bridge/WritableArray;)V

    return-void

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/facebook/react/modules/core/JavaTimerManager;->createTimer(IJZ)V

    return-void
.end method

.method public createTimer(IJZ)V
    .locals 9

    .line 297
    invoke-static {}, Lcom/facebook/react/common/SystemClock;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    add-long v4, v0, p2

    .line 298
    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    long-to-int v6, p2

    const/4 v8, 0x0

    move-object v2, v0

    move v3, p1

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;-><init>(IJIZLcom/facebook/react/modules/core/JavaTimerManager$1;)V

    .line 299
    iget-object p2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerGuard:Ljava/lang/Object;

    monitor-enter p2

    .line 300
    :try_start_0
    iget-object p3, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimers:Ljava/util/PriorityQueue;

    invoke-virtual {p3, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object p3, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerIdsToTimers:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public deleteTimer(I)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerIdsToTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    if-nez v1, :cond_0

    .line 350
    monitor-exit v0

    return-void

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimerIdsToTimers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mTimers:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onHeadlessJsTaskFinish(I)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 227
    invoke-static {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->getInstance(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/jstasks/HeadlessJsTaskContext;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lcom/facebook/react/jstasks/HeadlessJsTaskContext;->hasActiveTasks()Z

    move-result p1

    if-nez p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearFrameCallback()V

    .line 231
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->maybeIdleCallback()V

    :cond_0
    return-void
.end method

.method public onHeadlessJsTaskStart(I)V
    .locals 1

    .line 219
    iget-object p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isRunningTasks:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->setChoreographerCallback()V

    .line 221
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->maybeSetChoreographerIdleCallback()V

    :cond_0
    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearFrameCallback()V

    .line 207
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->maybeIdleCallback()V

    return-void
.end method

.method public onHostPause()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 201
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearFrameCallback()V

    .line 202
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->maybeIdleCallback()V

    return-void
.end method

.method public onHostResume()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->setChoreographerCallback()V

    .line 215
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->maybeSetChoreographerIdleCallback()V

    return-void
.end method

.method public onInstanceDestroy()V
    .locals 0

    .line 236
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearFrameCallback()V

    .line 237
    invoke-direct {p0}, Lcom/facebook/react/modules/core/JavaTimerManager;->clearChoreographerIdleCallback()V

    return-void
.end method

.method public setSendIdleEvents(Z)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mIdleCallbackGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput-boolean p1, p0, Lcom/facebook/react/modules/core/JavaTimerManager;->mSendIdleEvents:Z

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/modules/core/JavaTimerManager$2;-><init>(Lcom/facebook/react/modules/core/JavaTimerManager;Z)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 360
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
