.class Lorg/reactnative/camera/RNCameraView$3;
.super Ljava/lang/Object;
.source "RNCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/reactnative/camera/RNCameraView;->record(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Promise;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/reactnative/camera/RNCameraView;

.field final synthetic val$cacheDirectory:Ljava/io/File;

.field final synthetic val$options:Lcom/facebook/react/bridge/ReadableMap;

.field final synthetic val$promise:Lcom/facebook/react/bridge/Promise;


# direct methods
.method constructor <init>(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/ReadableMap;Ljava/io/File;Lcom/facebook/react/bridge/Promise;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    iput-object p2, p0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    iput-object p3, p0, Lorg/reactnative/camera/RNCameraView$3;->val$cacheDirectory:Ljava/io/File;

    iput-object p4, p0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "orientation"

    const-string v2, "mute"

    const-string v3, "videoBitrate"

    const-string v4, "quality"

    const-string v5, "fps"

    const-string v6, "maxFileSize"

    const-string v7, "maxDuration"

    const-string v8, "E_RECORDING_FAILED"

    const-string v9, "path"

    .line 290
    :try_start_0
    iget-object v10, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v10, v9}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$cacheDirectory:Ljava/io/File;

    const-string v10, ".mp4"

    invoke-static {v9, v10}, Lorg/reactnative/camera/utils/RNFileUtils;->getOutputFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    move-object v11, v9

    .line 291
    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v7}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_1

    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v7}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    .line 292
    :goto_1
    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v6}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v6}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v6

    move v13, v6

    goto :goto_2

    :cond_2
    const/4 v13, -0x1

    .line 293
    :goto_2
    iget-object v6, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v17, v5

    goto :goto_3

    :cond_3
    const/16 v17, -0x1

    :goto_3
    const/4 v5, 0x1

    .line 295
    invoke-static {v5}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v6

    .line 296
    iget-object v9, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v9, v4}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 297
    iget-object v6, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v6, v4}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/reactnative/camera/RNCameraViewHelper;->getCamcorderProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v4

    move-object v15, v4

    goto :goto_4

    :cond_4
    move-object v15, v6

    .line 299
    :goto_4
    iget-object v4, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 300
    iget-object v4, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v4, v3}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v15, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 304
    :cond_5
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 305
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v2}, Lcom/facebook/react/bridge/ReadableMap;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v5

    move v14, v2

    goto :goto_5

    :cond_6
    const/4 v14, 0x1

    :goto_5
    const/4 v2, 0x0

    .line 309
    iget-object v3, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v3, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 310
    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$3;->val$options:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v16, v1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    .line 313
    :goto_6
    iget-object v10, v0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    mul-int/lit16 v12, v7, 0x3e8

    invoke-static/range {v10 .. v17}, Lorg/reactnative/camera/RNCameraView;->access$2601(Lorg/reactnative/camera/RNCameraView;Ljava/lang/String;IIZLandroid/media/CamcorderProfile;II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/reactnative/camera/RNCameraView;->access$502(Lorg/reactnative/camera/RNCameraView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 315
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$3;->this$0:Lorg/reactnative/camera/RNCameraView;

    iget-object v2, v0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    invoke-static {v1, v2}, Lorg/reactnative/camera/RNCameraView;->access$302(Lorg/reactnative/camera/RNCameraView;Lcom/facebook/react/bridge/Promise;)Lcom/facebook/react/bridge/Promise;

    goto :goto_7

    .line 317
    :cond_8
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "Starting video recording failed. Another recording might be in progress."

    invoke-interface {v1, v8, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 320
    :catch_0
    iget-object v1, v0, Lorg/reactnative/camera/RNCameraView$3;->val$promise:Lcom/facebook/react/bridge/Promise;

    const-string v2, "Starting video recording failed - could not create video file."

    invoke-interface {v1, v8, v2}, Lcom/facebook/react/bridge/Promise;->reject(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method
