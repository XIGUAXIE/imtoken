.class public Lfr/greweb/reactnativeviewshot/ViewShot;
.super Ljava/lang/Object;
.source "ViewShot.java"

# interfaces
.implements Lcom/facebook/react/uimanager/UIBlock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;,
        Lfr/greweb/reactnativeviewshot/ViewShot$Results;,
        Lfr/greweb/reactnativeviewshot/ViewShot$Formats;
    }
.end annotation


# static fields
.field private static final ARGB_SIZE:I = 0x4

.field public static final ERROR_UNABLE_TO_SNAPSHOT:Ljava/lang/String; = "E_UNABLE_TO_SNAPSHOT"

.field private static final PREALLOCATE_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String;

.field private static final guardBitmaps:Ljava/lang/Object;

.field private static outputBuffer:[B

.field private static final weakBitmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final currentActivity:Landroid/app/Activity;

.field private final extension:Ljava/lang/String;

.field private final format:I

.field private final height:Ljava/lang/Integer;

.field private final output:Ljava/io/File;

.field private final promise:Lcom/facebook/react/bridge/Promise;

.field private final quality:D

.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private final result:Ljava/lang/String;

.field private final snapshotContentContainer:Ljava/lang/Boolean;

.field private final tag:I

.field private final width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lfr/greweb/reactnativeviewshot/ViewShot;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->TAG:Ljava/lang/String;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 112
    sput-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    .line 449
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->guardBitmaps:Ljava/lang/Object;

    .line 453
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IDLjava/lang/Integer;Ljava/lang/Integer;Ljava/io/File;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V
    .locals 0
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->tag:I

    .line 149
    iput-object p2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->extension:Ljava/lang/String;

    .line 150
    iput p3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    .line 151
    iput-wide p4, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->quality:D

    .line 152
    iput-object p6, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->width:Ljava/lang/Integer;

    .line 153
    iput-object p7, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->height:Ljava/lang/Integer;

    .line 154
    iput-object p8, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->output:Ljava/io/File;

    .line 155
    iput-object p9, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    .line 156
    iput-object p10, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->snapshotContentContainer:Ljava/lang/Boolean;

    .line 157
    iput-object p11, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 158
    iput-object p12, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->currentActivity:Landroid/app/Activity;

    .line 159
    iput-object p13, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    return-void
.end method

.method private applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Matrix;
    .locals 7

    .line 406
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 407
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v2, p3

    .line 412
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-ne v2, p2, :cond_0

    .line 418
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 420
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, p3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v2, v4

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    add-float/2addr v2, v4

    .line 425
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    if-eq v1, p3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    :cond_2
    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    .line 426
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 427
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 428
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 431
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getRotation()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPivotY()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private captureView(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    :try_start_0
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lfr/greweb/reactnativeviewshot/DebugViews;->logViewHierarchy(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/DebugViews;->longDebug(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0, p1, p2}, Lfr/greweb/reactnativeviewshot/ViewShot;->captureViewImpl(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 309
    throw p1
.end method

.method private captureViewImpl(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;
    .locals 13

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v0, :cond_8

    if-lez v1, :cond_8

    .line 327
    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->snapshotContentContainer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 329
    move-object v1, p1

    check-cast v1, Landroid/widget/ScrollView;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 330
    :goto_0
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 331
    invoke-virtual {v1, v4}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 335
    :cond_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 336
    invoke-static {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot;->getBitmapForScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 338
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 339
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 340
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 341
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 346
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    invoke-virtual {p1, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 350
    invoke-direct {p0, p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->getAllChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v8

    .line 352
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 354
    instance-of v10, v9, Landroid/view/TextureView;

    if-nez v10, :cond_2

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    .line 359
    :cond_3
    move-object v10, v9

    check-cast v10, Landroid/view/TextureView;

    .line 360
    invoke-virtual {v10, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 364
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v11

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v12

    invoke-static {v11, v12}, Lfr/greweb/reactnativeviewshot/ViewShot;->getExactBitmapForScreenshot(II)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 366
    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 367
    invoke-direct {p0, v7, p1, v9}, Lfr/greweb/reactnativeviewshot/ViewShot;->applyTransformations(Landroid/graphics/Canvas;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Matrix;

    const/4 v9, 0x0

    .line 370
    invoke-virtual {v7, v10, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 373
    invoke-static {v10}, Lfr/greweb/reactnativeviewshot/ViewShot;->recycleBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 376
    :cond_4
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->width:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->height:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->height:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 377
    :cond_5
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->width:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, p1, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 378
    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->recycleBitmap(Landroid/graphics/Bitmap;)V

    move-object v4, p1

    :cond_6
    const/4 p1, -0x1

    .line 384
    iget v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    if-ne p1, v3, :cond_7

    instance-of p1, p2, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    if-eqz p1, :cond_7

    mul-int v0, v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 386
    invoke-static {p2}, Lfr/greweb/reactnativeviewshot/ViewShot;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    .line 387
    invoke-virtual {p1, v0}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->asBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 388
    invoke-virtual {p1, v0}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->setSize(I)V

    goto :goto_2

    .line 390
    :cond_7
    sget-object p1, Lfr/greweb/reactnativeviewshot/ViewShot$Formats;->mapping:[Landroid/graphics/Bitmap$CompressFormat;

    iget v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    aget-object p1, p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 392
    iget-wide v5, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->quality:D

    mul-double v5, v5, v0

    double-to-int v0, v5

    invoke-virtual {v4, p1, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 395
    :goto_2
    invoke-static {v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->recycleBitmap(Landroid/graphics/Bitmap;)V

    return-object v2

    .line 323
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Impossible to snapshot the view: view is invalid"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TA;A:",
            "Ljava/lang/Object;",
            ">(TA;)TT;"
        }
    .end annotation

    return-object p0
.end method

.method private getAllChildren(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 279
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 289
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 290
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 293
    invoke-direct {p0, v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->getAllChildren(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getBitmapForScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 479
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->guardBitmaps:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    sget-object v1, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 481
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lt v3, p0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 482
    sget-object p0, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 483
    invoke-virtual {v2, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 484
    monitor-exit v0

    return-object v2

    .line 487
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 487
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getExactBitmapForScreenshot(II)Landroid/graphics/Bitmap;
    .locals 4

    .line 498
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->guardBitmaps:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    :try_start_0
    sget-object v1, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 501
    sget-object p0, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 502
    invoke-virtual {v2, p0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 503
    monitor-exit v0

    return-object v2

    .line 506
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 506
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static proposeSize(Landroid/view/View;)I
    .locals 1

    .line 459
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 460
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    mul-int/lit8 v0, v0, 0x4

    const/16 p0, 0x20

    .line 462
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private static recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 469
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->guardBitmaps:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_0
    sget-object v1, Lfr/greweb/reactnativeviewshot/ViewShot;->weakBitmaps:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 471
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private saveToBase64String(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    const-string v4, "zip-base64"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 247
    new-instance v4, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    sget-object v5, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-direct {v4, v5}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    .line 248
    invoke-direct {p0, p1, v4}, Lfr/greweb/reactnativeviewshot/ViewShot;->captureView(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;

    move-result-object p1

    .line 251
    invoke-virtual {v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object v5

    sput-object v5, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    .line 252
    invoke-virtual {v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->size()I

    move-result v4

    .line 253
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    iget v8, p1, Landroid/graphics/Point;->x:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    const-string p1, "%d:%d|"

    invoke-static {v5, p1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    if-eqz v3, :cond_3

    .line 258
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 259
    sget-object v1, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 260
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 262
    new-instance v1, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 264
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v4

    if-nez v4, :cond_2

    .line 265
    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v4

    .line 266
    invoke-virtual {v1, v3, v2, v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 269
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object p1

    invoke-virtual {v1}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {p1, v2, v1, v6}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 271
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-static {p1, v2, v4, v6}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    :goto_3
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {v0, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private saveToDataUriString(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    new-instance v0, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    sget-object v1, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-direct {v0, v1}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    .line 230
    invoke-direct {p0, p1, v0}, Lfr/greweb/reactnativeviewshot/ViewShot;->captureView(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;

    .line 232
    invoke-virtual {v0}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object p1

    sput-object p1, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    .line 233
    invoke-virtual {v0}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->size()I

    move-result p1

    .line 235
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->extension:Ljava/lang/String;

    const-string v1, "jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jpeg"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->extension:Ljava/lang/String;

    .line 240
    :goto_0
    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data:image/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";base64,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private saveToRawFileOnDevice(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->output:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->output:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 213
    new-instance v2, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    sget-object v3, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-direct {v2, v3}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    .line 214
    invoke-direct {p0, p1, v2}, Lfr/greweb/reactnativeviewshot/ViewShot;->captureView(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;

    move-result-object p1

    .line 217
    invoke-virtual {v2}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object v3

    sput-object v3, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    .line 218
    invoke-virtual {v2}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->size()I

    move-result v2

    .line 219
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string p1, "%d:%d|"

    invoke-static {v3, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "US-ASCII"

    .line 221
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 222
    sget-object p1, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-virtual {v1, p1, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 223
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 225
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method private saveToTempFileOnDevice(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->output:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 204
    invoke-direct {p0, p1, v0}, Lfr/greweb/reactnativeviewshot/ViewShot;->captureView(Landroid/view/View;Ljava/io/OutputStream;)Landroid/graphics/Point;

    .line 206
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    iget-object v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->output:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;)V
    .locals 5

    const-string v0, "tmpfile"

    .line 168
    iget v1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->tag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 169
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    const-string v1, "E_UNABLE_TO_SNAPSHOT"

    if-nez p1, :cond_1

    .line 175
    sget-object p1, Lfr/greweb/reactnativeviewshot/ViewShot;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found with reactTag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->tag:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    invoke-static {p1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->tag:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 181
    :cond_1
    :try_start_0
    new-instance v3, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;

    sget-object v4, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    invoke-direct {v3, v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;-><init>([B)V

    .line 182
    invoke-static {p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->proposeSize(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->setSize(I)V

    .line 183
    invoke-virtual {v3}, Lfr/greweb/reactnativeviewshot/ViewShot$ReusableByteArrayOutputStream;->innerBuffer()[B

    move-result-object v3

    sput-object v3, Lfr/greweb/reactnativeviewshot/ViewShot;->outputBuffer:[B

    .line 185
    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    if-ne v2, v3, :cond_2

    .line 186
    invoke-direct {p0, p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->saveToRawFileOnDevice(Landroid/view/View;)V

    goto :goto_2

    .line 187
    :cond_2
    iget-object v3, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->format:I

    if-eq v2, v0, :cond_3

    .line 188
    invoke-direct {p0, p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->saveToTempFileOnDevice(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    const-string v0, "base64"

    .line 189
    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "zip-base64"

    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "data-uri"

    .line 191
    iget-object v2, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->result:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 192
    invoke-direct {p0, p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->saveToDataUriString(Landroid/view/View;)V

    goto :goto_2

    .line 190
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lfr/greweb/reactnativeviewshot/ViewShot;->saveToBase64String(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 195
    sget-object v0, Lfr/greweb/reactnativeviewshot/ViewShot;->TAG:Ljava/lang/String;

    const-string v2, "Failed to capture view snapshot"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    iget-object p1, p0, Lfr/greweb/reactnativeviewshot/ViewShot;->promise:Lcom/facebook/react/bridge/Promise;

    invoke-interface {p1, v1, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method
