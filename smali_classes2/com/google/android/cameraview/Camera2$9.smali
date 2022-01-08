.class Lcom/google/android/cameraview/Camera2$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/cameraview/Camera2;->captureStillPicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/cameraview/Camera2;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/Camera2;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 1323
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object p1, p1, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    const-string p2, "pauseAfterCapture"

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object p1, p1, Lcom/google/android/cameraview/Camera2;->mCaptureCallback:Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;

    .line 1324
    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2$PictureCaptureCallback;->getOptions()Lcom/facebook/react/bridge/ReadableMap;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1325
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-virtual {p1}, Lcom/google/android/cameraview/Camera2;->unlockFocus()V

    .line 1327
    :cond_0
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    invoke-static {p1}, Lcom/google/android/cameraview/Camera2;->access$200(Lcom/google/android/cameraview/Camera2;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1328
    iget-object p1, p0, Lcom/google/android/cameraview/Camera2$9;->this$0:Lcom/google/android/cameraview/Camera2;

    iget-object p1, p1, Lcom/google/android/cameraview/Camera2;->sound:Landroid/media/MediaActionSound;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/MediaActionSound;->play(I)V

    :cond_1
    return-void
.end method
