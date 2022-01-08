.class public Lorg/reactnative/camera/CameraModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "CameraModule.java"


# static fields
.field static final GOOGLE_VISION_BARCODE_MODE_ALTERNATE:I = 0x1

.field static final GOOGLE_VISION_BARCODE_MODE_INVERTED:I = 0x2

.field static final GOOGLE_VISION_BARCODE_MODE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraModule"

.field public static final VALID_BARCODE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final VIDEO_1080P:I = 0x1

.field static final VIDEO_2160P:I = 0x0

.field static final VIDEO_480P:I = 0x3

.field static final VIDEO_4x3:I = 0x4

.field static final VIDEO_720P:I = 0x2


# instance fields
.field private mScopedContext:Lorg/reactnative/camera/utils/ScopedContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lorg/reactnative/camera/CameraModule$1;

    invoke-direct {v0}, Lorg/reactnative/camera/CameraModule$1;-><init>()V

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/reactnative/camera/CameraModule;->VALID_BARCODE_TYPES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 72
    new-instance v0, Lorg/reactnative/camera/utils/ScopedContext;

    invoke-direct {v0, p1}, Lorg/reactnative/camera/utils/ScopedContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/reactnative/camera/CameraModule;->mScopedContext:Lorg/reactnative/camera/utils/ScopedContext;

    return-void
.end method


# virtual methods
.method public checkIfRecordAudioPermissionsAreDefined(Lcom/facebook/react/bridge/Promise;)V
    .locals 6
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 413
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 414
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "android.permission.RECORD_AUDIO"

    .line 415
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 416
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 422
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Promise;->resolve(Ljava/lang/Object;)V

    return-void
.end method

.method public getAvailablePictureSizes(Ljava/lang/String;ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 383
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 384
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 385
    new-instance v1, Lorg/reactnative/camera/CameraModule$10;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/reactnative/camera/CameraModule$10;-><init>(Lorg/reactnative/camera/CameraModule;ILjava/lang/String;Lcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public getCameraIds(ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 356
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 357
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 358
    new-instance v1, Lorg/reactnative/camera/CameraModule$9;

    invoke-direct {v1, p0, p1, p2}, Lorg/reactnative/camera/CameraModule$9;-><init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 87
    new-instance v0, Lorg/reactnative/camera/CameraModule$2;

    invoke-direct {v0, p0}, Lorg/reactnative/camera/CameraModule$2;-><init>(Lorg/reactnative/camera/CameraModule;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RNCameraModule"

    return-object v0
.end method

.method public getScopedContext()Lorg/reactnative/camera/utils/ScopedContext;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/reactnative/camera/CameraModule;->mScopedContext:Lorg/reactnative/camera/utils/ScopedContext;

    return-object v0
.end method

.method public getSupportedPreviewFpsRange(ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 429
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 430
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 431
    new-instance v1, Lorg/reactnative/camera/CameraModule$11;

    invoke-direct {v1, p0, p1, p2}, Lorg/reactnative/camera/CameraModule$11;-><init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public getSupportedRatios(ILcom/facebook/react/bridge/Promise;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 329
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 330
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 331
    new-instance v1, Lorg/reactnative/camera/CameraModule$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/reactnative/camera/CameraModule$8;-><init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/Promise;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public pausePreview(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 218
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 219
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 220
    new-instance v1, Lorg/reactnative/camera/CameraModule$3;

    invoke-direct {v1, p0, p1}, Lorg/reactnative/camera/CameraModule$3;-><init>(Lorg/reactnative/camera/CameraModule;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public record(Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 283
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lorg/reactnative/camera/CameraModule;->mScopedContext:Lorg/reactnative/camera/utils/ScopedContext;

    invoke-virtual {v1}, Lorg/reactnative/camera/utils/ScopedContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v7

    .line 285
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 287
    new-instance v1, Lorg/reactnative/camera/CameraModule$6;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/reactnative/camera/CameraModule$6;-><init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public resumePreview(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 240
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 241
    new-instance v1, Lorg/reactnative/camera/CameraModule$4;

    invoke-direct {v1, p0, p1}, Lorg/reactnative/camera/CameraModule$4;-><init>(Lorg/reactnative/camera/CameraModule;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public stopRecording(I)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 308
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 309
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 310
    new-instance v1, Lorg/reactnative/camera/CameraModule$7;

    invoke-direct {v1, p0, p1}, Lorg/reactnative/camera/CameraModule$7;-><init>(Lorg/reactnative/camera/CameraModule;I)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method

.method public takePicture(Lcom/facebook/react/bridge/ReadableMap;ILcom/facebook/react/bridge/Promise;)V
    .locals 8
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/reactnative/camera/CameraModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lorg/reactnative/camera/CameraModule;->mScopedContext:Lorg/reactnative/camera/utils/ScopedContext;

    invoke-virtual {v1}, Lorg/reactnative/camera/utils/ScopedContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v7

    .line 262
    const-class v1, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 263
    new-instance v1, Lorg/reactnative/camera/CameraModule$5;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/reactnative/camera/CameraModule$5;-><init>(Lorg/reactnative/camera/CameraModule;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/UIManagerModule;->addUIBlock(Lcom/facebook/react/uimanager/UIBlock;)V

    return-void
.end method
