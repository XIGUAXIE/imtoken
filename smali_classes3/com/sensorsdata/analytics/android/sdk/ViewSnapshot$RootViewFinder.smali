.class Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;
.super Ljava/lang/Object;
.source "ViewSnapshot.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootViewFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

.field private final mClientDensity:I

.field private final mRootViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa0

    .line 411
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mClientDensity:I

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    .line 415
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    return-void
.end method

.method private scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    .line 493
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x43200000    # 160.0f

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 497
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 498
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 499
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 500
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    float-to-double v7, v4

    add-double/2addr v7, v5

    double-to-int v4, v7

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    if-lez v3, :cond_1

    if-lez v4, :cond_1

    .line 502
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    const/16 v2, 0xa0

    invoke-virtual {v1, v3, v4, v2, p2}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;->recreate(IIILandroid/graphics/Bitmap;)V

    .line 505
    :cond_1
    iput v0, p1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->scale:F

    .line 506
    iget-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mCachedBitmap:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    iput-object p2, p1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->screenshot:Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$CachedBitmap;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 421
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->isInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    return-object v0

    .line 424
    :cond_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/AppStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/AppStateManager;->getForegroundActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 426
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 428
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 430
    new-instance v3, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 431
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getSortedWindowViews()[Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 433
    array-length v5, v0

    if-lez v5, :cond_3

    .line 434
    invoke-virtual {p0, v0, v3}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mergeViewLayers([Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 435
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v0, v6

    .line 436
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 437
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    if-eqz v8, :cond_2

    .line 438
    invoke-static {v7}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getMainWindowPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v8, v1, v2, v7}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 441
    invoke-direct {p0, v8, v4}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V

    .line 442
    iget-object v7, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 446
    invoke-direct {p0, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->scaleBitmap(Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;Landroid/graphics/Bitmap;)V

    .line 447
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewFinder;->mRootViews:Ljava/util/List;

    return-object v0
.end method

.method mergeViewLayers([Landroid/view/View;Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 454
    iget-object v2, v1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 455
    iget-object v1, v1, Lcom/sensorsdata/analytics/android/sdk/ViewSnapshot$RootViewInfo;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 459
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 460
    new-instance v8, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;

    invoke-direct {v8, v1}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 463
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->getMainWindowCount([Landroid/view/View;)I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-le v2, v11, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 468
    :goto_0
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->init()V

    .line 469
    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->invalidateLayerTypeView([Landroid/view/View;)V

    .line 470
    array-length v13, v0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_4

    aget-object v15, v0, v14

    .line 471
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->getWindowPrefix(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2, v12}, Lcom/sensorsdata/analytics/android/sdk/util/ViewUtil;->isWindowNeedTraverse(Landroid/view/View;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->save()I

    .line 473
    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isMainWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    invoke-virtual {v15, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 475
    aget v2, v9, v10

    int-to-float v2, v2

    aget v3, v9, v11

    int-to-float v3, v3

    invoke-virtual {v8, v2, v3}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->translate(FF)V

    .line 476
    invoke-static {v15}, Lcom/sensorsdata/analytics/android/sdk/util/WindowHelper;->isDialogOrPopupWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 477
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x60000000

    .line 478
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    aget v2, v9, v10

    int-to-float v2, v2

    neg-float v3, v2

    aget v2, v9, v11

    int-to-float v2, v2

    neg-float v4, v2

    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 482
    :cond_2
    invoke-virtual {v15, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 483
    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->restore()V

    .line 484
    invoke-virtual {v8}, Lcom/sensorsdata/analytics/android/sdk/SoftWareCanvas;->destroy()V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method
