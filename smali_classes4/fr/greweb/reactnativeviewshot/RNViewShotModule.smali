.class public Lfr/greweb/reactnativeviewshot/RNViewShotModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "RNViewShotModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/greweb/reactnativeviewshot/RNViewShotModule$CleanTask;
    }
.end annotation


# static fields
.field public static final RNVIEW_SHOT:Ljava/lang/String; = "RNViewShot"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "ReactNative-snapshot-image"


# instance fields
.field private final reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    iput-object p1, p0, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-void
.end method

.method private createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No cache directory available"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 184
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReactNative-snapshot-image"

    .line 185
    invoke-static {p2, p1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public captureRef(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 17
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v0, p2

    .line 71
    invoke-virtual/range {p0 .. p0}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const-string v3, "format"

    .line 74
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "jpg"

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "webm"

    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    const/4 v5, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "raw"

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_0
    const-string v3, "quality"

    .line 83
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v3, "width"

    .line 84
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v8

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    mul-double v10, v10, v12

    double-to-int v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v8, v3

    goto :goto_1

    :cond_3
    move-object v8, v9

    :goto_1
    const-string v3, "height"

    .line 85
    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v2

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v10, v10, v2

    double-to-int v2, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :cond_4
    move-object v10, v9

    :goto_2
    const-string v2, "result"

    .line 86
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "snapshotContentContainer"

    .line 87
    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    :try_start_0
    const-string v0, "tmpfile"

    .line 91
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    invoke-virtual/range {p0 .. p0}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->createTempFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v9

    .line 95
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v14

    .line 96
    iget-object v2, v1, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 98
    new-instance v9, Lfr/greweb/reactnativeviewshot/ViewShot;

    iget-object v3, v1, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    move-object v2, v9

    move-object/from16 v16, v3

    move/from16 v3, p1

    move-object v1, v9

    move-object v9, v10

    move-object v10, v0

    move-object v0, v13

    move-object/from16 v13, v16

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lfr/greweb/reactnativeviewshot/ViewShot;-><init>(ILjava/lang/String;IDLjava/lang/Integer;Ljava/lang/Integer;Ljava/io/File;Ljava/lang/String;Ljava/lang/Boolean;Lcom/facebook/react/bridge/ReactApplicationContext;Landroid/app/Activity;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to snapshot view tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "RNViewShot"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E_UNABLE_TO_SNAPSHOT"

    move-object/from16 v2, p3

    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public captureScreen(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, v0, p1, p2}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->captureRef(ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;)V

    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNViewShot"

    return-object v0
.end method

.method public onCatalystInstanceDestroy()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;->onCatalystInstanceDestroy()V

    .line 54
    new-instance v0, Lfr/greweb/reactnativeviewshot/RNViewShotModule$CleanTask;

    invoke-virtual {p0}, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/greweb/reactnativeviewshot/RNViewShotModule$CleanTask;-><init>(Lcom/facebook/react/bridge/ReactContext;Lfr/greweb/reactnativeviewshot/RNViewShotModule$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lfr/greweb/reactnativeviewshot/RNViewShotModule$CleanTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public releaseCapture(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 59
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 64
    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lfr/greweb/reactnativeviewshot/RNViewShotModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    return-void
.end method
