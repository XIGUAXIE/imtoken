.class public Lcom/facebook/react/fabric/FabricUIManager;
.super Ljava/lang/Object;
.source "FabricUIManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/UIManager;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    }
.end annotation


# static fields
.field public static final ENABLE_FABRIC_LOGS:Z

.field private static final FRAME_TIME_MS:I = 0x10

.field public static final IS_DEVELOPMENT_ENVIRONMENT:Z = false

.field private static final MAX_TIME_IN_FRAME_FOR_NON_BATCHED_OPERATIONS_MS:I = 0x8

.field private static final PRE_MOUNT_ITEMS_INITIAL_SIZE_ARRAY:I = 0xfa

.field public static final TAG:Ljava/lang/String; = "FabricUIManager"


# instance fields
.field private mBatchedExecutionTime:J

.field private mBinding:Lcom/facebook/react/fabric/Binding;

.field private mCommitStartTime:J

.field private mCurrentSynchronousCommitNumber:I

.field private volatile mDestroyed:Z

.field private final mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

.field private mDispatchViewUpdatesTime:J

.field private final mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

.field private final mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field private mFinishTransactionCPPTime:J

.field private mFinishTransactionTime:J

.field private mImmediatelyExecutedMountItemsOnUI:Z

.field private mLayoutTime:J

.field private mMountItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountItemsLock:Ljava/lang/Object;

.field private final mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

.field private mPreMountItems:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/react/fabric/mounting/mountitems/MountItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreMountItemsLock:Ljava/lang/Object;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/uimanager/ThemedReactContext;",
            ">;"
        }
    .end annotation
.end field

.field private mRunStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableFabricLogs:Z

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/facebook/debug/holder/PrinterHolder;->getPrinter()Lcom/facebook/debug/holder/Printer;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tags/ReactDebugOverlayTags;->FABRIC_UI_MANAGER:Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;

    .line 93
    invoke-interface {v0, v1}, Lcom/facebook/debug/holder/Printer;->shouldDisplayLogMessage(Lcom/facebook/debug/debugoverlay/model/DebugOverlayTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    .line 99
    invoke-static {}, Lcom/facebook/react/fabric/FabricSoLoader;->staticInit()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/fabric/events/EventBeatManager;)V
    .locals 2

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mImmediatelyExecutedMountItemsOnUI:Z

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    const-wide/16 v0, 0x0

    .line 141
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 142
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 143
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    .line 144
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    .line 145
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    .line 146
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 147
    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    const/16 v0, 0x2710

    .line 153
    iput v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    .line 160
    new-instance v0, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;-><init>(Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/fabric/FabricUIManager$1;)V

    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 161
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 162
    new-instance p1, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-direct {p1, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V

    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    .line 163
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 164
    iput-object p4, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    .line 165
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/react/fabric/FabricUIManager;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/react/fabric/FabricUIManager;J)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchPreMountItems(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/fabric/FabricUIManager;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchMountItems()V

    return-void
.end method

.method static synthetic access$400(Lcom/facebook/react/fabric/FabricUIManager;)Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    return-object p0
.end method

.method private createBatchMountItem([Lcom/facebook/react/fabric/mounting/mountitems/MountItem;II)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 418
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;-><init>([Lcom/facebook/react/fabric/mounting/mountitems/MountItem;II)V

    return-object v0
.end method

.method private createMountItem(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Object;IIZ)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 8

    .line 317
    invoke-static {p1}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz v1, :cond_0

    .line 322
    new-instance p1, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;

    move-object v6, p3

    check-cast v6, Lcom/facebook/react/uimanager/StateWrapper;

    move-object v0, p1

    move v2, p4

    move v3, p5

    move-object v5, p2

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/react/fabric/mounting/mountitems/CreateMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    return-object p1

    .line 320
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find ReactContext for root: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteMountItem(I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 353
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;

    invoke-direct {v0, p1}, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;-><init>(I)V

    return-object v0
.end method

.method private dispatchMountItems()V
    .locals 12

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    .line 581
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    monitor-exit v0

    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 591
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 592
    :try_start_1
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 593
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    .line 594
    new-instance v3, Ljava/util/ArrayDeque;

    const/16 v4, 0xfa

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    .line 596
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FabricUIManager::mountViews preMountItems to execute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 598
    invoke-static {v2, v3, v4}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 603
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 604
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    iget-object v5, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v4, v5}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    goto :goto_0

    .line 607
    :cond_2
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 610
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FabricUIManager::mountViews mountItems to execute: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v2, v3, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 614
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 615
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 616
    sget-boolean v6, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v6, :cond_4

    .line 619
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 620
    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 621
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchMountItems: Executing mountItem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FabricUIManager"

    invoke-static {v10, v9}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 624
    :cond_4
    iget-object v6, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v1, v6}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    goto :goto_1

    .line 626
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    .line 627
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    :catchall_0
    move-exception v0

    .line 596
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 587
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private dispatchPreMountItems(J)V
    .locals 8

    const-wide/16 v0, 0x0

    const-string v2, "FabricUIManager::premountViews"

    .line 633
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    :goto_0
    const-wide/16 v2, 0x10

    .line 636
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    goto :goto_1

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    :goto_1
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-void

    .line 646
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    .line 647
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-interface {v3, v2}, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;->execute(Lcom/facebook/react/fabric/mounting/MountingManager;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 647
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private insertMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 345
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;-><init>(III)V

    return-object v0
.end method

.method private measure(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FFFF)J
    .locals 11

    move-object v0, p0

    .line 433
    iget-object v1, v0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    iget-object v2, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 439
    invoke-static/range {p6 .. p7}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v7

    .line 440
    invoke-static/range {p6 .. p7}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v8

    .line 441
    invoke-static/range {p8 .. p9}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v9

    .line 442
    invoke-static/range {p8 .. p9}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 433
    invoke-virtual/range {v1 .. v10}, Lcom/facebook/react/fabric/mounting/MountingManager;->measure(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v1

    return-wide v1
.end method

.method private measure(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FFFF)J
    .locals 11

    move-object v0, p0

    .line 456
    iget-object v1, v0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    iget-object v2, v0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 462
    invoke-static/range {p5 .. p6}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v7

    .line 463
    invoke-static/range {p5 .. p6}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v8

    .line 464
    invoke-static/range {p7 .. p8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaSize(FF)F

    move-result v9

    .line 465
    invoke-static/range {p7 .. p8}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getYogaMeasureMode(FF)Lcom/facebook/yoga/YogaMeasureMode;

    move-result-object v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 456
    invoke-virtual/range {v1 .. v10}, Lcom/facebook/react/fabric/mounting/MountingManager;->measure(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v1

    return-wide v1
.end method

.method private preallocateView(IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/Object;Z)V
    .locals 12

    move-object v1, p0

    .line 291
    iget-object v0, v1, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 292
    invoke-static {p3}, Lcom/facebook/react/fabric/FabricComponents;->getFabricComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 293
    iget-object v10, v1, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItemsLock:Ljava/lang/Object;

    monitor-enter v10

    .line 294
    :try_start_0
    iget-object v0, v1, Lcom/facebook/react/fabric/FabricUIManager;->mPreMountItems:Ljava/util/ArrayDeque;

    new-instance v11, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    move-object/from16 v8, p5

    check-cast v8, Lcom/facebook/react/uimanager/StateWrapper;

    move-object v2, v11

    move v4, p1

    move v5, p2

    move-object/from16 v7, p4

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;-><init>(Lcom/facebook/react/uimanager/ThemedReactContext;IILjava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeDeleteMultiMountItem([I)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 361
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;

    invoke-direct {v0, p1}, Lcom/facebook/react/fabric/mounting/mountitems/RemoveDeleteMultiMountItem;-><init>([I)V

    return-object v0
.end method

.method private removeMountItem(III)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 337
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;-><init>(III)V

    return-object v0
.end method

.method private scheduleMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;IJJJJJJJ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p9

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-wide/from16 v11, p15

    .line 525
    instance-of v13, v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    if-eqz v13, :cond_0

    .line 528
    iput-wide v3, v1, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    sub-long v14, v7, v5

    .line 529
    iput-wide v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    sub-long v14, v11, v9

    .line 530
    iput-wide v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    .line 531
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    iput-wide v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    .line 535
    :cond_0
    iget-object v14, v1, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 536
    :try_start_0
    iget-object v15, v1, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->allowDisablingImmediateExecutionOfScheduleMountItems:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v1, Lcom/facebook/react/fabric/FabricUIManager;->mImmediatelyExecutedMountItemsOnUI:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 545
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/fabric/FabricUIManager;->dispatchMountItems()V

    :cond_3
    if-eqz v13, :cond_4

    .line 551
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    const/4 v13, 0x0

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 553
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v9, v10}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 558
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_FINISH_TRANSACTION_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v11, v12}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 563
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    move-wide/from16 v3, p5

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 565
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_DIFF_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    move-wide/from16 v3, p7

    invoke-static {v0, v13, v2, v3, v4}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 567
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v5, v6}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 569
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_LAYOUT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2, v7, v8}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;IJ)V

    .line 571
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_COMMIT_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v13, v2}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    .line 537
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private updateEventEmitterMountItem(ILjava/lang/Object;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 410
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;

    check-cast p2, Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;-><init>(ILcom/facebook/react/fabric/events/EventEmitterWrapper;)V

    return-object v0
.end method

.method private updateLayoutMountItem(IIIIII)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 8

    .line 370
    new-instance v7, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;-><init>(IIIIII)V

    return-object v7
.end method

.method private updateLocalDataMountItem(ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 394
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;-><init>(ILcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private updatePaddingMountItem(IIIII)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 7

    .line 378
    new-instance v6, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePaddingMountItem;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePaddingMountItem;-><init>(IIIII)V

    return-object v6
.end method

.method private updatePropsMountItem(ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 386
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;-><init>(ILcom/facebook/react/bridge/ReadableMap;)V

    return-object v0
.end method

.method private updateStateMountItem(ILjava/lang/Object;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;
    .locals 1

    .line 402
    new-instance v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateStateMountItem;

    check-cast p2, Lcom/facebook/react/uimanager/StateWrapper;

    invoke-direct {v0, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/UpdateStateMountItem;-><init>(ILcom/facebook/react/uimanager/StateWrapper;)V

    return-object v0
.end method


# virtual methods
.method public addRootView(Landroid/view/View;Lcom/facebook/react/bridge/WritableMap;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/facebook/react/bridge/WritableMap;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 174
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v0

    .line 175
    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/ReactRoot;

    .line 178
    new-instance v2, Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactRoot;->getSurfaceID()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v3, v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->addRootView(ILandroid/view/View;)V

    .line 182
    invoke-interface {v1}, Lcom/facebook/react/uimanager/ReactRoot;->getJSModuleName()Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-boolean v1, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v1, :cond_0

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FabricUIManager"

    const-string v3, "Starting surface for module: %s and reactTag: %d"

    invoke-static {v2, v3, p1, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    check-cast p2, Lcom/facebook/react/bridge/NativeMap;

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/react/fabric/Binding;->startSurface(ILjava/lang/String;Lcom/facebook/react/bridge/NativeMap;)V

    if-eqz p3, :cond_1

    .line 189
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {p1, v0, p3}, Lcom/facebook/react/fabric/Binding;->renderTemplateToSurface(ILjava/lang/String;)V

    :cond_1
    return v0
.end method

.method public clearJSResponder()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/FabricUIManager$2;

    invoke-direct {v2, p0}, Lcom/facebook/react/fabric/FabricUIManager$2;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;-><init>(IILcom/facebook/react/bridge/ReadableArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dispatchCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;

    invoke-direct {v2, p1, p2, p3}, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;-><init>(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 723
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPerformanceCounters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 780
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 781
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mCommitStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CommitStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mLayoutTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "LayoutTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchViewUpdatesTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "DispatchViewUpdatesTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mRunStartTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "RunStartTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBatchedExecutionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "BatchedExecutionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FinishFabricTransactionTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    iget-wide v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mFinishTransactionCPPTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "FinishFabricTransactionCPPTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    new-instance v1, Lcom/facebook/react/fabric/events/FabricEventEmitter;

    invoke-direct {v1, p0}, Lcom/facebook/react/fabric/events/FabricEventEmitter;-><init>(Lcom/facebook/react/fabric/FabricUIManager;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->registerEventEmitter(ILcom/facebook/react/uimanager/events/RCTEventEmitter;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->addBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    const-string v0, "FabricUIManager"

    const-string v1, "FabricUIManager.onCatalystInstanceDestroy"

    .line 245
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 248
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot double-destroy FabricUIManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDestroyed:Z

    .line 258
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->stop()V

    .line 260
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventBeatManager:Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->removeBatchEventDispatchedListener(Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->unregisterEventEmitter(I)V

    .line 266
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 267
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricUIManager;->onHostPause()V

    .line 272
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;->stop()V

    .line 274
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {v0}, Lcom/facebook/react/fabric/Binding;->unregister()V

    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    .line 277
    invoke-static {}, Lcom/facebook/react/uimanager/ViewManagerPropertyUpdater;->clear()V

    return-void
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 3

    .line 698
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 699
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->removeFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method public onHostResume()V
    .locals 3

    .line 692
    invoke-static {}, Lcom/facebook/react/modules/core/ReactChoreographer;->getInstance()Lcom/facebook/react/modules/core/ReactChoreographer;

    move-result-object v0

    sget-object v1, Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;->DISPATCH_UI:Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;

    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mDispatchUIFrameCallback:Lcom/facebook/react/fabric/FabricUIManager$DispatchUIFrameCallback;

    .line 693
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/modules/core/ReactChoreographer;->postFrameCallback(Lcom/facebook/react/modules/core/ReactChoreographer$CallbackType;Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;)V

    return-void
.end method

.method public onRequestEventBeat()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mEventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchAllEvents()V

    return-void
.end method

.method public profileNextBatch()V
    .locals 0

    return-void
.end method

.method public receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 683
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to invoke event: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for reactTag: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FabricUIManager"

    invoke-static {p2, p1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 687
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/facebook/react/fabric/events/EventEmitterWrapper;->invoke(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public sendAccessibilityEvent(II)V
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;

    invoke-direct {v2, p1, p2}, Lcom/facebook/react/fabric/mounting/mountitems/SendAccessibilityEvent;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAllowImmediateUIOperationExecution(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mImmediatelyExecutedMountItemsOnUI:Z

    return-void
.end method

.method public setBinding(Lcom/facebook/react/fabric/Binding;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    return-void
.end method

.method public setJSResponder(IIZ)V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItemsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountItems:Ljava/util/List;

    new-instance v2, Lcom/facebook/react/fabric/FabricUIManager$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/facebook/react/fabric/FabricUIManager$1;-><init>(Lcom/facebook/react/fabric/FabricUIManager;IIZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startSurface(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/WritableMap;",
            "II)I"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/facebook/react/uimanager/ReactRootViewTagGenerator;->getNextRootViewTag()I

    move-result v8

    .line 203
    new-instance v0, Lcom/facebook/react/uimanager/ThemedReactContext;

    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/facebook/react/uimanager/ThemedReactContext;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    sget-boolean v1, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v1, :cond_0

    .line 206
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FabricUIManager"

    const-string v3, "Starting surface for module: %s and reactTag: %d"

    invoke-static {v2, v3, p2, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mMountingManager:Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v1, v8, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->addRootView(ILandroid/view/View;)V

    .line 209
    iget-object p1, p0, Lcom/facebook/react/fabric/FabricUIManager;->mReactContextForRootTag:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    move-object v3, p3

    check-cast v3, Lcom/facebook/react/bridge/NativeMap;

    .line 214
    invoke-static {p4}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v4

    .line 215
    invoke-static {p4}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v5

    .line 216
    invoke-static {p5}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v6

    .line 217
    invoke-static {p5}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v7

    move v1, v8

    move-object v2, p2

    .line 210
    invoke-virtual/range {v0 .. v7}, Lcom/facebook/react/fabric/Binding;->startSurfaceWithConstraints(ILjava/lang/String;Lcom/facebook/react/bridge/NativeMap;FFFF)V

    return v8
.end method

.method public stopSurface(I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    invoke-virtual {v0, p1}, Lcom/facebook/react/fabric/Binding;->stopSurface(I)V

    return-void
.end method

.method public synchronouslyUpdateViewOnUIThread(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 21

    move-object/from16 v4, p0

    .line 472
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 474
    iget v5, v4, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    add-int/lit8 v0, v5, 0x1

    iput v0, v4, Lcom/facebook/react/fabric/FabricUIManager;->mCurrentSynchronousCommitNumber:I

    const/4 v3, 0x0

    .line 476
    :try_start_0
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_START:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v0, v3, v5}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 478
    sget-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v0, :cond_0

    const-string v0, "FabricUIManager"

    const-string v1, "SynchronouslyUpdateViewOnUIThread for tag %d"

    .line 479
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/facebook/react/fabric/FabricUIManager;->updatePropsMountItem(ILcom/facebook/react/bridge/ReadableMap;)Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move v3, v5

    move/from16 v20, v5

    move-wide/from16 v4, v18

    .line 481
    :try_start_1
    invoke-direct/range {v1 .. v17}, Lcom/facebook/react/fabric/FabricUIManager;->scheduleMountItem(Lcom/facebook/react/fabric/mounting/mountitems/MountItem;IJJJJJJJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    move/from16 v1, v20

    const/4 v2, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v1, v20

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move/from16 v1, v20

    const/4 v2, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v3

    move v1, v5

    :goto_0
    sget-object v3, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    invoke-static {v3, v2, v1}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    .line 489
    throw v0

    :catch_1
    move-object v2, v3

    move v1, v5

    .line 487
    :goto_1
    sget-object v0, Lcom/facebook/react/bridge/ReactMarkerConstants;->FABRIC_UPDATE_UI_MAIN_THREAD_END:Lcom/facebook/react/bridge/ReactMarkerConstants;

    :goto_2
    invoke-static {v0, v2, v1}, Lcom/facebook/react/bridge/ReactMarker;->logFabricMarker(Lcom/facebook/react/bridge/ReactMarkerConstants;Ljava/lang/String;I)V

    return-void
.end method

.method public updateRootLayoutSpecs(III)V
    .locals 8

    .line 667
    sget-boolean v0, Lcom/facebook/react/fabric/FabricUIManager;->ENABLE_FABRIC_LOGS:Z

    if-eqz v0, :cond_0

    const-string v0, "FabricUIManager"

    const-string v1, "Updating Root Layout Specs"

    .line 668
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricUIManager;->mBinding:Lcom/facebook/react/fabric/Binding;

    .line 673
    invoke-static {p2}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v4

    .line 674
    invoke-static {p2}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v5

    .line 675
    invoke-static {p3}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMinSize(I)F

    move-result v6

    .line 676
    invoke-static {p3}, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;->getMaxSize(I)F

    move-result v7

    move v3, p1

    .line 671
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/fabric/Binding;->setConstraints(IFFFF)V

    return-void
.end method
