.class Lcom/google/android/cameraview/Camera2;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera2.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE_DEFAULT:I = 0x12c

.field private static final FOCUS_METERING_AREA_WEIGHT_DEFAULT:I = 0x3e8

.field private static final INTERNAL_FACINGS:Landroid/util/SparseIntArray;

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "Camera2"


# instance fields
.field private _mCameraId:Ljava/lang/String;

.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mAvailableCameras:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCamera:Landroid/hardware/camera2/CameraDevice;

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraOrientation:I

.field mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

.field mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mDeviceOrientation:I

.field private mDisplayOrientation:I

.field private mExposure:F

.field private mFacing:I

.field private mFlash:I

.field private mFocusDepth:F

.field private mImageFormat:I

.field private mInitialCropRegion:Landroid/graphics/Rect;

.field private mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mIsRecording:Z

.field private mIsScanning:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPictureSize:Lcom/google/android/cameraview/Size;

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPlaySoundOnCapture:Ljava/lang/Boolean;

.field mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mScanImageReader:Landroid/media/ImageReader;

.field private final mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mStillImageReader:Landroid/media/ImageReader;

.field private mVideoPath:Ljava/lang/String;

.field private mWhiteBalance:I

.field private mZoom:F

.field sound:Landroid/media/MediaActionSound;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;Landroid/os/Handler;)V

    .line 94
    new-instance p1, Lcom/google/android/cameraview/Camera2$1;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$1;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 122
    new-instance p1, Lcom/google/android/cameraview/Camera2$2;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$2;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 161
    new-instance p1, Lcom/google/android/cameraview/Camera2$3;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$3;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    .line 184
    new-instance p1, Lcom/google/android/cameraview/Camera2$4;

    invoke-direct {p1, p0}, Lcom/google/android/cameraview/Camera2$4;-><init>(Lcom/google/android/cameraview/Camera2;)V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 216
    new-instance p1, Landroid/media/MediaActionSound;

    invoke-direct {p1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->sound:Landroid/media/MediaActionSound;

    .line 222
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAvailableCameras:Ljava/util/Set;

    .line 236
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 238
    new-instance p1, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {p1}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 244
    sget-object p1, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    const/4 p1, 0x0

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    const-string p1, "camera"

    .line 276
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 277
    new-instance p2, Lcom/google/android/cameraview/Camera2$5;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera2$5;-><init>(Lcom/google/android/cameraview/Camera2;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 290
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    goto :goto_0

    :cond_0
    const/16 p1, 0x100

    :goto_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 291
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    new-instance p2, Lcom/google/android/cameraview/Camera2$6;

    invoke-direct {p2, p0}, Lcom/google/android/cameraview/Camera2$6;-><init>(Lcom/google/android/cameraview/Camera2;)V

    invoke-virtual {p1, p2}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/cameraview/Camera2;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mInitialCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/cameraview/Camera2;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/cameraview/Camera2;)Ljava/lang/Boolean;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-object p0
.end method

.method private calculateFocusArea(FF)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 7

    .line 1250
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1253
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 1254
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 1257
    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    add-int/lit16 p1, p1, -0x96

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit16 p2, p2, -0x96

    .line 1258
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x12c

    const/16 v4, 0x12c

    const/16 v5, 0x3e7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v6
.end method

.method private chooseCameraIdByFacing()Z
    .locals 11

    .line 775
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    const-string v1, "Unexpected state: LENS_FACING null"

    const-string v2, "Camera2"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_7

    .line 777
    :try_start_0
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 778
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 779
    array-length v6, v5

    if-nez v6, :cond_0

    const-string v0, "No cameras available."

    .line 780
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 783
    :cond_0
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 784
    iget-object v9, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    .line 786
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v9, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_1

    .line 788
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 791
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_2

    .line 792
    iput-object v8, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 793
    iput-object v9, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return v3

    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 798
    :cond_3
    aget-object v0, v5, v4

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    .line 799
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 801
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 803
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 806
    :cond_4
    sget-object v1, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_6

    .line 807
    sget-object v6, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 808
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    return v3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 814
    :cond_6
    iput v4, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    const-string v1, "Failed to get a list of camera devices"

    .line 817
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    .line 826
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 829
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_8

    .line 831
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 834
    :cond_8
    sget-object v1, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_a

    .line 835
    sget-object v6, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_9

    .line 836
    sget-object v0, Lcom/google/android/cameraview/Camera2;->INTERNAL_FACINGS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 841
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    move-exception v0

    const-string v1, "Failed to get camera characteristics"

    .line 845
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private chooseOptimalSize()Lcom/google/android/cameraview/Size;
    .locals 7

    .line 1008
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1017
    :cond_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    .line 1020
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/cameraview/Size;

    .line 1021
    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v5

    if-lt v5, v0, :cond_1

    invoke-virtual {v4}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    if-lt v5, v1, :cond_1

    return-object v4

    .line 1026
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method private collectCameraInfo()V
    .locals 8

    .line 857
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz v0, :cond_6

    .line 862
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 863
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 864
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 865
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v6, 0x780

    if-gt v5, v6, :cond_0

    const/16 v6, 0x438

    if-gt v4, v6, :cond_0

    .line 867
    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v7, Lcom/google/android/cameraview/Size;

    invoke-direct {v7, v5, v4}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 871
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/cameraview/Camera2;->collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    .line 872
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    if-nez v0, :cond_2

    .line 873
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 875
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 876
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 877
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2, v1}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_1

    .line 881
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 882
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 885
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraOrientation:I

    return-void

    .line 860
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get configuration map: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOutputRotation()I
    .locals 3

    .line 1339
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1342
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-nez v1, :cond_0

    .line 1343
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 1345
    :cond_0
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    invoke-direct {p0, v1}, Lcom/google/android/cameraview/Camera2;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xb4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1346
    :goto_0
    iget v2, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private isLandscape(I)Z
    .locals 1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static isLegacy(Landroid/content/Context;)Z
    .locals 8

    const-string v0, "Camera2"

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "camera"

    .line 749
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 750
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 751
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 752
    invoke-virtual {p0, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 753
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_1

    .line 756
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, "Camera2 can only run in legacy mode and should not be used."

    .line 757
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    return v4

    :catch_0
    move-exception p0

    const-string v2, "Failed to check camera legacy status, returning true."

    .line 764
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private isMeteringAreaAFSupported()Z
    .locals 2

    .line 1246
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private lockFocus()V
    .locals 4

    .line 1173
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 1174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1173
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V

    .line 1177
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to lock focus."

    .line 1179
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private prepareScanImageReader()V
    .locals 4

    .line 904
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    .line 908
    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    const/16 v2, 0x23

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 910
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareStillImageReader()V
    .locals 4

    .line 895
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 896
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v1

    const/16 v2, 0x100

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 900
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V
    .locals 3

    .line 1393
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1396
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1397
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p2, :cond_0

    .line 1399
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1400
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1401
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v0, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1402
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget p1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_0
    return-void
.end method

.method private setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V
    .locals 2

    .line 1362
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    .line 1364
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 1366
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1369
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1370
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    .line 1373
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget v1, p5, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {p1, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1374
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p5

    .line 1376
    :goto_0
    iget p5, p5, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput p5, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1377
    invoke-direct {p0, p1, p4}, Lcom/google/android/cameraview/Camera2;->setCamcorderProfile(Landroid/media/CamcorderProfile;Z)V

    .line 1379
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->getOutputRotation()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    .line 1382
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p4, p2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :cond_2
    if-eq p3, p1, :cond_3

    .line 1385
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1388
    :cond_3
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1389
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    return-void
.end method

.method private startOpeningCamera()V
    .locals 4

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCameraDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 921
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open camera: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private stopMediaRecorder()V
    .locals 4

    const/4 v0, 0x0

    .line 1407
    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1410
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 1411
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1413
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1415
    :goto_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 1416
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    const/4 v1, 0x0

    .line 1417
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1419
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 1421
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1427
    :cond_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 1428
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    return-void

    .line 1423
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v2, v1, v0, v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method captureStillPicture()V
    .locals 6

    const-string v0, "quality"

    .line 1271
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 1273
    iget-boolean v3, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x100

    .line 1274
    iput v3, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 1275
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 1277
    :cond_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1278
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1279
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    .line 1278
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1280
    iget v3, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/4 v5, 0x3

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1302
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1303
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1302
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1298
    :cond_2
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1298
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1292
    :cond_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1292
    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1294
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1295
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1294
    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1288
    :cond_4
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1289
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1288
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1282
    :cond_5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1283
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1282
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1284
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 1285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1284
    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1306
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->getOutputRotation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1309
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1310
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    .line 1311
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1314
    :cond_6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1316
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 1317
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/cameraview/Camera2$9;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera2$9;-><init>(Lcom/google/android/cameraview/Camera2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Cannot capture a still picture."

    .line 1333
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method protected collectPictureSizes(Lcom/google/android/cameraview/SizeMap;Landroid/hardware/camera2/params/StreamConfigurationMap;)V
    .locals 5

    .line 889
    iget p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    .line 890
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v3, Lcom/google/android/cameraview/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {v3, v4, v1}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    return v0
.end method

.method getAvailablePictureSizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/cameraview/AspectRatio;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/google/android/cameraview/Size;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method getCameraId()Ljava/lang/String;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method getCameraIds()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 417
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    .line 420
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 421
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 423
    iget-object v7, p0, Lcom/google/android/cameraview/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 424
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    const-string v8, "id"

    .line 426
    invoke-virtual {v6, v8, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "type"

    .line 427
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 433
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get a list of camera ids"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getCameraOrientation()I
    .locals 1

    .line 726
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraOrientation:I

    return v0
.end method

.method getExposureCompensation()F
    .locals 1

    .line 551
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mExposure:F

    return v0
.end method

.method getFacing()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .line 546
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    return v0
.end method

.method getFocusDepth()F
    .locals 1

    .line 642
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    return v0
.end method

.method getPictureSize()Lcom/google/android/cameraview/Size;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    return-object v0
.end method

.method public getPlaySoundOnCapture()Z
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/cameraview/Size;
    .locals 3

    .line 998
    new-instance v0, Lcom/google/android/cameraview/Size;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v1}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/cameraview/Size;-><init>(II)V

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    return-object v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method getScanning()Z
    .locals 1

    .line 721
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/cameraview/AspectRatio;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation

    const-string v0, "CAMERA_2:: "

    const-string v1, "getSupportedPreviewFpsRange is not currently supported for Camera2"

    .line 380
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getWhiteBalance()I
    .locals 1

    .line 688
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    return v0
.end method

.method getZoom()F
    .locals 1

    .line 665
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    return v0
.end method

.method isCameraOpened()Z
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 0

    .line 1471
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stopRecording()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stopRecording()V

    :cond_1
    return-void
.end method

.method public pausePreview()V
    .locals 1

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 962
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method record(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;II)Z
    .locals 0

    .line 573
    iget-boolean p6, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    const/4 p7, 0x0

    if-nez p6, :cond_1

    .line 574
    invoke-direct/range {p0 .. p5}, Lcom/google/android/cameraview/Camera2;->setUpMediaRecorder(Ljava/lang/String;IIZLandroid/media/CamcorderProfile;)V

    .line 576
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 578
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 579
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 580
    iput-object p2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 583
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseOptimalSize()Lcom/google/android/cameraview/Size;

    move-result-object p1

    .line 584
    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result p1

    invoke-virtual {p3, p4, p1}, Lcom/google/android/cameraview/PreviewImpl;->setBufferSize(II)V

    .line 585
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object p1

    .line 586
    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p3}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p3

    .line 588
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 p5, 0x3

    invoke-virtual {p4, p5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 589
    invoke-virtual {p4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 590
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p4, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 591
    iget-object p4, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 p5, 0x2

    new-array p5, p5, [Landroid/view/Surface;

    aput-object p1, p5, p7

    const/4 p1, 0x1

    aput-object p3, p5, p1

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {p4, p3, p5, p2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    .line 593
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->start()V

    .line 594
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    .line 598
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object p3, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    invoke-interface {p2, p3, p7, p7}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingStart(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 602
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return p7
.end method

.method public resumePreview()V
    .locals 0

    .line 954
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->unlockFocus()V

    return-void
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    return v0

    :cond_0
    if-eqz p1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p1, v1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 480
    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 485
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 486
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareScanImageReader()V

    .line 487
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_2

    .line 488
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    .line 489
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 490
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method setAutoFocus(Z)V
    .locals 3

    .line 502
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 505
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 506
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 508
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->_mCameraId:Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/reactnative/camera/utils/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stop()V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->start()Z

    :cond_0
    return-void
.end method

.method setDeviceOrientation(I)V
    .locals 0

    .line 738
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mDeviceOrientation:I

    return-void
.end method

.method setDisplayOrientation(I)V
    .locals 1

    .line 731
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    .line 732
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mDisplayOrientation:I

    invoke-virtual {p1, v0}, Lcom/google/android/cameraview/PreviewImpl;->setDisplayOrientation(I)V

    return-void
.end method

.method setExposureCompensation(F)V
    .locals 1

    const-string p1, "CAMERA_2:: "

    const-string v0, "Adjusting exposure is not currently supported for Camera2"

    .line 556
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method setFacing(I)V
    .locals 1

    .line 363
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    if-ne v0, p1, :cond_0

    return-void

    .line 366
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFacing:I

    .line 367
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->stop()V

    .line 369
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->start()Z

    :cond_1
    return-void
.end method

.method setFlash(I)V
    .locals 4

    .line 526
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    if-ne v0, p1, :cond_0

    return-void

    .line 530
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    .line 531
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_1

    .line 532
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 533
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 535
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    :cond_1
    :goto_0
    return-void
.end method

.method setFocusArea(FF)V
    .locals 8

    const-string v0, "Failed to manual focus."

    const-string v1, "Camera2"

    .line 1190
    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v2, :cond_0

    return-void

    .line 1193
    :cond_0
    new-instance v2, Lcom/google/android/cameraview/Camera2$8;

    invoke-direct {v2, p0}, Lcom/google/android/cameraview/Camera2$8;-><init>(Lcom/google/android/cameraview/Camera2;)V

    .line 1216
    :try_start_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1218
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    :goto_0
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1222
    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1224
    :try_start_1
    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v6, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    invoke-virtual {v4, v6, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 1226
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    :goto_1
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->isMeteringAreaAFSupported()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 1230
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/Camera2;->calculateFocusArea(FF)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    .line 1231
    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v6, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p1, v7, v5

    invoke-virtual {p2, v4, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1233
    :cond_1
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1234
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1235
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1236
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string p2, "FOCUS_TAG"

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1239
    :try_start_2
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p2, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1241
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public setFocusDepth(F)V
    .locals 4

    .line 624
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 628
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    .line 629
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFocusDepth()V

    .line 632
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    :cond_1
    :goto_0
    return-void
.end method

.method setPictureSize(Lcom/google/android/cameraview/Size;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 448
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 451
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_1
    if-nez p1, :cond_4

    .line 457
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    if-nez v0, :cond_2

    goto :goto_1

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    return-void

    .line 462
    :cond_4
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPictureSize:Lcom/google/android/cameraview/Size;

    .line 464
    :goto_2
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 465
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method

.method setPlaySoundOnCapture(Z)V
    .locals 0

    .line 693
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPlaySoundOnCapture:Ljava/lang/Boolean;

    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 976
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 977
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 979
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 983
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 984
    new-instance v0, Lcom/google/android/cameraview/Camera2$7;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera2$7;-><init>(Lcom/google/android/cameraview/Camera2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setScanning(Z)V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 706
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-nez p1, :cond_1

    const/16 p1, 0x100

    .line 708
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x23

    .line 710
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 712
    :goto_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_2

    .line 713
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    .line 714
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    return-void
.end method

.method public setWhiteBalance(I)V
    .locals 4

    .line 670
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    if-ne v0, p1, :cond_0

    return-void

    .line 674
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    .line 675
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateWhiteBalance()V

    .line 678
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 4

    .line 647
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    return-void

    .line 651
    :cond_0
    iput p1, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    .line 652
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateZoom()V

    .line 655
    :try_start_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 658
    :catch_0
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    :cond_1
    :goto_0
    return-void
.end method

.method start()Z
    .locals 1

    .line 306
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseCameraIdByFacing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 308
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    const/4 v0, 0x0

    return v0

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->collectCameraInfo()V

    .line 312
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {p0, v0}, Lcom/google/android/cameraview/Camera2;->setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mInitialRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 314
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareStillImageReader()V

    .line 315
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->prepareScanImageReader()V

    .line 316
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->startOpeningCamera()V

    const/4 v0, 0x1

    return v0
.end method

.method startCaptureSession()V
    .locals 5

    .line 931
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->chooseOptimalSize()Lcom/google/android/cameraview/Size;

    move-result-object v0

    .line 935
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/cameraview/PreviewImpl;->setBufferSize(II)V

    .line 936
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 939
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 941
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 945
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v3, v0

    .line 944
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to start capture session"

    .line 947
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onMountError()V

    :cond_2
    :goto_0
    return-void
.end method

.method stop()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 324
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 328
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mCamera:Landroid/hardware/camera2/CameraDevice;

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 331
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 332
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mStillImageReader:Landroid/media/ImageReader;

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 336
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 337
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mScanImageReader:Landroid/media/ImageReader;

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_4

    .line 341
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 342
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 343
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 344
    iput-object v1, p0, Lcom/google/android/cameraview/Camera2;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 346
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onRecordingEnd()V

    .line 350
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onVideoRecorded(Ljava/lang/String;II)V

    .line 351
    iput-boolean v2, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    :cond_4
    return-void
.end method

.method stopRecording()V
    .locals 1

    .line 611
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->stopMediaRecorder()V

    .line 614
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 616
    iput-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    :cond_1
    return-void
.end method

.method takePicture(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setOptions(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 564
    iget-boolean p1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz p1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera2;->lockFocus()V

    goto :goto_0

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->captureStillPicture()V

    :goto_0
    return-void
.end method

.method unlockFocus()V
    .locals 5

    .line 1436
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    .line 1437
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1436
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1439
    :try_start_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateAutoFocus()V

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->updateFlash()V

    .line 1442
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mIsScanning:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    .line 1443
    iput v0, p0, Lcom/google/android/cameraview/Camera2;->mImageFormat:I

    .line 1444
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera2;->startCaptureSession()V

    goto :goto_0

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 1447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1446
    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1448
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v1, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 1450
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {v0, v2}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->setState(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to restart camera preview."

    .line 1453
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method updateAutoFocus()V
    .locals 5

    .line 1033
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    const/4 v1, 0x0

    .line 1048
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_1

    .line 1037
    array-length v3, v0

    if-eqz v3, :cond_1

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    .line 1044
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1043
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1039
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    .line 1040
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method updateFlash()V
    .locals 5

    .line 1056
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mFlash:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1083
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1082
    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1084
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1085
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1084
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1077
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1076
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1078
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1079
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1078
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1070
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1071
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1070
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1072
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1073
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1072
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1065
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1064
    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1066
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1067
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1066
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1059
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1058
    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1060
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1061
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1060
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method updateFocusDepth()V
    .locals 3

    .line 1094
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera2;->mAutoFocus:Z

    if-eqz v0, :cond_0

    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 1101
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mFocusDepth:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v1, v1, v0

    .line 1102
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 1099
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unexpected state: LENS_INFO_MINIMUM_FOCUS_DISTANCE null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateWhiteBalance()V
    .locals 5

    .line 1141
    iget v0, p0, Lcom/google/android/cameraview/Camera2;->mWhiteBalance:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1155
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1151
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v2, 0x8

    .line 1160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1159
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1164
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1147
    :cond_4
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x6

    .line 1148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1147
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1143
    :cond_5
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1143
    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method updateZoom()V
    .locals 9

    .line 1109
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1110
    iget v1, p0, Lcom/google/android/cameraview/Camera2;->mZoom:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    .line 1111
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1114
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    div-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v6, v4

    div-float/2addr v6, v1

    float-to-int v6, v6

    sub-int/2addr v3, v5

    .line 1117
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v6

    .line 1118
    div-int/lit8 v4, v4, 0x2

    .line 1120
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v4

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    cmpl-float v0, v1, v2

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera2;->mInitialCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
