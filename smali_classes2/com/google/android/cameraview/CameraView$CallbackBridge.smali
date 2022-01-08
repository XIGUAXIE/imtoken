.class Lcom/google/android/cameraview/CameraView$CallbackBridge;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Lcom/google/android/cameraview/CameraViewImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/cameraview/CameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackBridge"
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/cameraview/CameraView$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestLayoutOnOpen:Z

.field final synthetic this$0:Lcom/google/android/cameraview/CameraView;


# direct methods
.method constructor <init>(Lcom/google/android/cameraview/CameraView;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCameraClosed()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 685
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onCameraClosed(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCameraOpened()V
    .locals 3

    .line 673
    iget-boolean v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    .line 675
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->requestLayout()V

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 678
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onCameraOpened(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFramePreview([BIII)V
    .locals 8

    .line 719
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/cameraview/CameraView$Callback;

    .line 720
    iget-object v3, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/cameraview/CameraView$Callback;->onFramePreview(Lcom/google/android/cameraview/CameraView;[BIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMountError()V
    .locals 3

    .line 726
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 727
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onMountError(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPictureTaken([BI)V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 692
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/cameraview/CameraView$Callback;->onPictureTaken(Lcom/google/android/cameraview/CameraView;[BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordingEnd()V
    .locals 3

    .line 705
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 706
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2}, Lcom/google/android/cameraview/CameraView$Callback;->onRecordingEnd(Lcom/google/android/cameraview/CameraView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecordingStart(Ljava/lang/String;II)V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 699
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/cameraview/CameraView$Callback;->onRecordingStart(Lcom/google/android/cameraview/CameraView;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoRecorded(Ljava/lang/String;II)V
    .locals 3

    .line 712
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/CameraView$Callback;

    .line 713
    iget-object v2, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->this$0:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/google/android/cameraview/CameraView$Callback;->onVideoRecorded(Lcom/google/android/cameraview/CameraView;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Lcom/google/android/cameraview/CameraView$Callback;)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reserveRequestLayoutOnOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 732
    iput-boolean v0, p0, Lcom/google/android/cameraview/CameraView$CallbackBridge;->mRequestLayoutOnOpen:Z

    return-void
.end method
