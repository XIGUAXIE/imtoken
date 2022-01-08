.class public Lcom/facebook/react/views/scroll/ReactScrollView;
.super Landroid/widget/ScrollView;
.source "ReactScrollView.java"

# interfaces
.implements Lcom/facebook/react/uimanager/ReactClippingViewGroup;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static sScrollerField:Ljava/lang/reflect/Field; = null

.field private static sTriedToGetScrollerField:Z = false


# instance fields
.field private mActivelyScrolling:Z

.field private mClippingRect:Landroid/graphics/Rect;

.field private mContentView:Landroid/view/View;

.field private mDecelerationRate:F

.field private mDragging:Z

.field private mEndBackground:Landroid/graphics/drawable/Drawable;

.field private mEndFillColor:I

.field private mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

.field private final mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

.field private mOverflow:Ljava/lang/String;

.field private mPagingEnabled:Z

.field private mPostTouchRunnable:Ljava/lang/Runnable;

.field private mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

.field private final mRect:Landroid/graphics/Rect;

.field private mRemoveClippedSubviews:Z

.field private mScrollEnabled:Z

.field private mScrollPerfTag:Ljava/lang/String;

.field private final mScroller:Landroid/widget/OverScroller;

.field private mSendMomentumEvents:Z

.field private mSnapInterval:I

.field private mSnapOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapToEnd:Z

.field private mSnapToStart:Z

.field private final mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;-><init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/scroll/FpsListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/views/scroll/FpsListener;)V
    .locals 2

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-direct {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 54
    new-instance p1, Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-direct {p1}, Lcom/facebook/react/views/scroll/VelocityHelper;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRect:Landroid/graphics/Rect;

    const-string p1, "hidden"

    .line 59
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 69
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 70
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    const p1, 0x3f7c28f6    # 0.985f

    .line 71
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDecelerationRate:F

    .line 73
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    .line 74
    iput-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    .line 84
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    .line 85
    new-instance p1, Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    .line 87
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getOverScrollerFromParent()Landroid/widget/OverScroller;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 88
    invoke-virtual {p0, p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/high16 p1, 0x2000000

    .line 89
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->setScrollBarStyle(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    return p0
.end method

.method static synthetic access$002(Lcom/facebook/react/views/scroll/ReactScrollView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/facebook/react/views/scroll/ReactScrollView;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->flingAndSnap(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/react/views/scroll/ReactScrollView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    return p0
.end method

.method static synthetic access$402(Lcom/facebook/react/views/scroll/ReactScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/facebook/react/views/scroll/ReactScrollView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->disableFpsListener()V

    return-void
.end method

.method private disableFpsListener()V
    .locals 2

    .line 415
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->disable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private enableFpsListener()V
    .locals 2

    .line 407
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/facebook/react/views/scroll/FpsListener;->enable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private flingAndSnap(I)V
    .locals 18

    move-object/from16 v0, p0

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 594
    :cond_0
    iget v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    if-nez v1, :cond_1

    .line 595
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollAndSnap(I)V

    return-void

    .line 599
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v1

    .line 600
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->predictFinalScrollPosition(I)I

    move-result v2

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 608
    iget-object v4, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    .line 609
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 610
    iget-object v7, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v10, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 612
    :goto_0
    iget-object v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 613
    iget-object v11, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v11, v2, :cond_2

    sub-int v12, v2, v11

    sub-int v13, v2, v9

    if-ge v12, v13, :cond_2

    move v9, v11

    :cond_2
    if-lt v11, v2, :cond_3

    sub-int v12, v11, v2

    sub-int v13, v10, v2

    if-ge v12, v13, :cond_3

    move v10, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 628
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getSnapInterval()I

    move-result v4

    int-to-double v7, v4

    int-to-double v9, v2

    div-double/2addr v9, v7

    .line 630
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-int v4, v11

    .line 631
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    mul-double v9, v9, v7

    double-to-int v7, v9

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v7, v1

    move v9, v4

    const/4 v4, 0x0

    :cond_5
    sub-int v8, v2, v9

    sub-int v11, v10, v2

    if-ge v8, v11, :cond_6

    move v12, v9

    goto :goto_1

    :cond_6
    move v12, v10

    .line 640
    :goto_1
    iget-boolean v13, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    if-nez v13, :cond_8

    if-lt v2, v7, :cond_8

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v4

    if-lt v4, v7, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v2, p1

    move v4, v7

    goto :goto_3

    .line 647
    :cond_8
    iget-boolean v7, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    if-nez v7, :cond_a

    if-gt v2, v4, :cond_a

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v7

    if-gt v7, v4, :cond_9

    :goto_2
    move v4, v2

    :cond_9
    move/from16 v2, p1

    goto :goto_3

    :cond_a
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    if-lez p1, :cond_b

    int-to-double v7, v11

    mul-double v7, v7, v13

    double-to-int v2, v7

    add-int v2, p1, v2

    move v4, v10

    goto :goto_3

    :cond_b
    if-gez p1, :cond_c

    int-to-double v7, v8

    mul-double v7, v7, v13

    double-to-int v2, v7

    sub-int v2, p1, v2

    move v4, v9

    goto :goto_3

    :cond_c
    move/from16 v2, p1

    move v4, v12

    .line 669
    :goto_3
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 675
    iget-object v7, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v7, :cond_10

    .line 676
    iput-boolean v5, v0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v8

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    if-eqz v2, :cond_d

    goto :goto_4

    .line 684
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    sub-int v2, v15, v2

    :goto_4
    move v11, v2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    if-eqz v15, :cond_f

    if-ne v15, v1, :cond_e

    goto :goto_5

    :cond_e
    const/16 v17, 0x0

    goto :goto_6

    :cond_f
    :goto_5
    div-int/lit8 v6, v3, 0x2

    move/from16 v17, v6

    :goto_6
    move v14, v15

    .line 678
    invoke-virtual/range {v7 .. v17}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->postInvalidateOnAnimation()V

    goto :goto_7

    .line 698
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, v15}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollTo(II)V

    :goto_7
    return-void
.end method

.method private getMaxScrollY()I
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 429
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getOverScrollerFromParent()Landroid/widget/OverScroller;
    .locals 4

    .line 96
    sget-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    const-string v1, "ReactNative"

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sTriedToGetScrollerField:Z

    .line 99
    :try_start_0
    const-class v2, Landroid/widget/ScrollView;

    const-string v3, "mScroller"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to get mScroller field for ScrollView! This app will exhibit the bounce-back scrolling bug :("

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    :goto_0
    sget-object v0, Lcom/facebook/react/views/scroll/ReactScrollView;->sScrollerField:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 111
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v3, v0, Landroid/widget/OverScroller;

    if-eqz v3, :cond_1

    .line 113
    check-cast v0, Landroid/widget/OverScroller;

    move-object v2, v0

    goto :goto_1

    :cond_1
    const-string v0, "Failed to cast mScroller field in ScrollView (probably due to OEM changes to AOSP)! This app will exhibit the bounce-back scrolling bug :("

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get mScroller from ScrollView!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method private getSnapInterval()I
    .locals 1

    .line 703
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    if-eqz v0, :cond_0

    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    return v0
.end method

.method private handlePostTouchScrolling(II)V
    .locals 2

    .line 462
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->isScrollPerfLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    return-void

    .line 472
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    if-eqz v0, :cond_2

    .line 473
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V

    .line 474
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollMomentumBeginEvent(Landroid/view/ViewGroup;II)V

    :cond_2
    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 478
    new-instance p1, Lcom/facebook/react/views/scroll/ReactScrollView$1;

    invoke-direct {p1, p0}, Lcom/facebook/react/views/scroll/ReactScrollView$1;-><init>(Lcom/facebook/react/views/scroll/ReactScrollView;)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPostTouchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x14

    .line 509
    invoke-static {p0, p1, v0, v1}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private isScrollPerfLoggingEnabled()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mFpsListener:Lcom/facebook/react/views/scroll/FpsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private predictFinalScrollPosition(I)I
    .locals 12

    .line 517
    new-instance v11, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    .line 518
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDecelerationRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {v11, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 521
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v8

    .line 522
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 524
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v1

    .line 525
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    div-int/lit8 v10, v0, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move v4, p1

    .line 523
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 535
    invoke-virtual {v11}, Landroid/widget/OverScroller;->getFinalY()I

    move-result p1

    return p1
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 1

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private smoothScrollAndSnap(I)V
    .locals 11

    .line 544
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getSnapInterval()I

    move-result v0

    int-to-double v0, v0

    .line 545
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v2

    int-to-double v2, v2

    .line 546
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->predictFinalScrollPosition(I)I

    move-result v4

    int-to-double v4, v4

    div-double v6, v2, v0

    .line 548
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 549
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 550
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v7, v6

    div-double/2addr v4, v0

    .line 551
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    if-lez p1, :cond_0

    if-ne v9, v8, :cond_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    if-ne v8, v9, :cond_1

    add-int/lit8 v8, v8, -0x1

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    if-ge v7, v9, :cond_2

    if-le v5, v8, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    if-le v7, v8, :cond_3

    if-ge v5, v9, :cond_3

    move v7, v8

    :cond_3
    :goto_1
    int-to-double v4, v7

    mul-double v4, v4, v0

    cmpl-double p1, v4, v2

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 584
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result p1

    double-to-int v0, v4

    invoke-virtual {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->smoothScrollTo(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 434
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 436
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 437
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 443
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bd1f072

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "visible"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    .line 447
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 451
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 304
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 305
    iget-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    if-nez v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 310
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public flashScrollIndicators()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->awakenScrollBars()Z

    return-void
.end method

.method public fling(I)V
    .locals 11

    .line 363
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    int-to-float v0, p1

    .line 365
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 367
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 369
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    if-eqz v0, :cond_1

    .line 370
    invoke-direct {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->flingAndSnap(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 384
    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 385
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result v2

    .line 386
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    const/4 v9, 0x0

    div-int/lit8 v10, v0, 0x2

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, p1

    .line 384
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 397
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 401
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :goto_0
    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V

    return-void
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 1

    .line 349
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->clipChildRectsIfOverflowIsHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Ljava/lang/String;

    .line 350
    invoke-static {p1, p2, p3, p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->getChildVisibleRectHelper(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 351
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ScrollView;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getClippingRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getRemoveClippedSubviews()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 204
    invoke-super {p0}, Landroid/widget/ScrollView;->onAttachedToWindow()V

    .line 205
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 741
    iput-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    .line 742
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 747
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    .line 748
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 264
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    invoke-static {p0, p1}, Lcom/facebook/react/uimanager/events/NativeGestureUtil;->notifyNativeGestureStarted(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 266
    invoke-static {p0}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollBeginDragEvent(Landroid/view/ViewGroup;)V

    const/4 p1, 0x1

    .line 267
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 268
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->enableFpsListener()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ReactNative"

    const-string v2, "Error intercepting touch event."

    .line 275
    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 191
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 767
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 771
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollY()I

    move-result p1

    .line 772
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result p2

    if-le p1, p2, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 182
    invoke-static {p1, p2}, Lcom/facebook/react/uimanager/MeasureSpecAssertions;->assertExplicitMeasureSpec(II)V

    .line 185
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 726
    invoke-direct {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getMaxScrollY()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 728
    iget-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/widget/OverScroller;->abortAnimation()V

    move p2, v0

    .line 736
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    const/4 p3, 0x1

    .line 243
    iput-boolean p3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mActivelyScrolling:Z

    .line 245
    iget-object p3, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    invoke-virtual {p3, p1, p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->onScrollChanged(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    iget-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 252
    invoke-virtual {p1}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getXFlingVelocity()F

    move-result p1

    iget-object p2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOnScrollDispatchHelper:Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;

    .line 253
    invoke-virtual {p2}, Lcom/facebook/react/views/scroll/OnScrollDispatchHelper;->getYFlingVelocity()F

    move-result p2

    .line 250
    invoke-static {p0, p1, p2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEvent(Landroid/view/ViewGroup;FF)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 197
    iget-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 283
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/scroll/VelocityHelper;->calculateVelocity(Landroid/view/MotionEvent;)V

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 289
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v0}, Lcom/facebook/react/views/scroll/VelocityHelper;->getXVelocity()F

    move-result v0

    .line 291
    iget-object v2, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mVelocityHelper:Lcom/facebook/react/views/scroll/VelocityHelper;

    invoke-virtual {v2}, Lcom/facebook/react/views/scroll/VelocityHelper;->getYVelocity()F

    move-result v2

    .line 292
    invoke-static {p0, v0, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewHelper;->emitScrollEndDragEvent(Landroid/view/ViewGroup;FF)V

    .line 293
    iput-boolean v1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDragging:Z

    .line 296
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/react/views/scroll/ReactScrollView;->handlePostTouchScrolling(II)V

    .line 299
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lcom/facebook/react/views/scroll/ReactScrollView;->scrollToChild(Landroid/view/View;)V

    .line 222
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBackgroundColor(I)V

    return-void
.end method

.method public setBorderColor(IFF)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderColor(IFF)V

    return-void
.end method

.method public setBorderRadius(F)V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(F)V

    return-void
.end method

.method public setBorderRadius(FI)V
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderRadius(FI)V

    return-void
.end method

.method public setBorderStyle(Ljava/lang/String;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderStyle(Ljava/lang/String;)V

    return-void
.end method

.method public setBorderWidth(IF)V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mReactBackgroundManager:Lcom/facebook/react/views/view/ReactViewBackgroundManager;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/views/view/ReactViewBackgroundManager;->setBorderWidth(IF)V

    return-void
.end method

.method public setDecelerationRate(F)V
    .locals 2

    .line 148
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mDecelerationRate:F

    .line 150
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->setFriction(F)V

    :cond_0
    return-void
.end method

.method public setEndFillColor(I)V
    .locals 1

    .line 710
    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    if-eq p1, v0, :cond_0

    .line 711
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    .line 712
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndFillColor:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mEndBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setOverflow(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mOverflow:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->invalidate()V

    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mPagingEnabled:Z

    return-void
.end method

.method public setRemoveClippedSubviews(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    .line 318
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    .line 319
    invoke-virtual {p0}, Lcom/facebook/react/views/scroll/ReactScrollView;->updateClippingRect()V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollEnabled:Z

    return-void
.end method

.method public setScrollPerfTag(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mScrollPerfTag:Ljava/lang/String;

    return-void
.end method

.method public setSendMomentumEvents(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSendMomentumEvents:Z

    return-void
.end method

.method public setSnapInterval(I)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapInterval:I

    return-void
.end method

.method public setSnapOffsets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapOffsets:Ljava/util/List;

    return-void
.end method

.method public setSnapToEnd(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToEnd:Z

    return-void
.end method

.method public setSnapToStart(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mSnapToStart:Z

    return-void
.end method

.method public updateClippingRect()V
    .locals 2

    .line 329
    iget-boolean v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mRemoveClippedSubviews:Z

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcom/facebook/react/views/scroll/ReactScrollView;->mClippingRect:Landroid/graphics/Rect;

    invoke-static {p0, v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroupHelper;->calculateClippingRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0, v0}, Lcom/facebook/react/views/scroll/ReactScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    instance-of v1, v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v1, :cond_1

    .line 338
    check-cast v0, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    invoke-interface {v0}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->updateClippingRect()V

    :cond_1
    return-void
.end method
