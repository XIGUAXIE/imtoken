.class public Lcom/brentvatne/react/ReactVideoView;
.super Lcom/yqritc/scalablevideoview/ScalableVideoView;
.source "ReactVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/react/ReactVideoView$TimedMetaDataAvailableListener;,
        Lcom/brentvatne/react/ReactVideoView$Events;
    }
.end annotation


# static fields
.field public static final EVENT_PROP_CURRENT_TIME:Ljava/lang/String; = "currentTime"

.field public static final EVENT_PROP_DURATION:Ljava/lang/String; = "duration"

.field public static final EVENT_PROP_ERROR:Ljava/lang/String; = "error"

.field public static final EVENT_PROP_EXTRA:Ljava/lang/String; = "extra"

.field public static final EVENT_PROP_FAST_FORWARD:Ljava/lang/String; = "canPlayFastForward"

.field public static final EVENT_PROP_HEIGHT:Ljava/lang/String; = "height"

.field public static final EVENT_PROP_METADATA:Ljava/lang/String; = "metadata"

.field public static final EVENT_PROP_METADATA_IDENTIFIER:Ljava/lang/String; = "identifier"

.field public static final EVENT_PROP_METADATA_VALUE:Ljava/lang/String; = "value"

.field public static final EVENT_PROP_NATURALSIZE:Ljava/lang/String; = "naturalSize"

.field public static final EVENT_PROP_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EVENT_PROP_PLAYABLE_DURATION:Ljava/lang/String; = "playableDuration"

.field public static final EVENT_PROP_REVERSE:Ljava/lang/String; = "canPlayReverse"

.field public static final EVENT_PROP_SEEKABLE_DURATION:Ljava/lang/String; = "seekableDuration"

.field public static final EVENT_PROP_SEEK_TIME:Ljava/lang/String; = "seekTime"

.field public static final EVENT_PROP_SLOW_FORWARD:Ljava/lang/String; = "canPlaySlowForward"

.field public static final EVENT_PROP_SLOW_REVERSE:Ljava/lang/String; = "canPlaySlowReverse"

.field public static final EVENT_PROP_STEP_BACKWARD:Ljava/lang/String; = "canStepBackward"

.field public static final EVENT_PROP_STEP_FORWARD:Ljava/lang/String; = "canStepForward"

.field public static final EVENT_PROP_TARGET:Ljava/lang/String; = "target"

.field public static final EVENT_PROP_WHAT:Ljava/lang/String; = "what"

.field public static final EVENT_PROP_WIDTH:Ljava/lang/String; = "width"


# instance fields
.field private isCompleted:Z

.field private mActiveRate:F

.field private mBackgroundPaused:Z

.field private mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

.field private mIsFullscreen:Z

.field private mMainVer:I

.field private mMediaPlayerValid:Z

.field private mMuted:Z

.field private mPatchVer:I

.field private mPaused:Z

.field private mPlayInBackground:Z

.field private mProgressUpdateHandler:Landroid/os/Handler;

.field private mProgressUpdateInterval:F

.field private mProgressUpdateRunnable:Ljava/lang/Runnable;

.field private mRate:F

.field private mRepeat:Z

.field private mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

.field private mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

.field private mSeekTime:J

.field private mSrcIsAsset:Z

.field private mSrcIsNetwork:Z

.field private mSrcType:Ljava/lang/String;

.field private mSrcUriString:Ljava/lang/String;

.field private mStereoPan:F

.field private mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

.field private mUseNativeControls:Z

.field private mVideoBufferedDuration:I

.field private mVideoDuration:I

.field private mVolume:F

.field private mediaController:Landroid/widget/MediaController;

.field private videoControlHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ThemedReactContext;)V
    .locals 3

    .line 147
    invoke-direct {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->videoControlHandler:Landroid/os/Handler;

    .line 117
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    const-string v1, "mp4"

    .line 118
    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    .line 121
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    .line 122
    sget-object v1, Lcom/yqritc/scalablevideoview/ScalableType;->LEFT_TOP:Lcom/yqritc/scalablevideoview/ScalableType;

    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 123
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    .line 124
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    .line 125
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    const/4 v2, 0x0

    .line 127
    iput v2, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    const/high16 v2, 0x437a0000    # 250.0f

    .line 128
    iput v2, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    .line 129
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    .line 130
    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F

    const-wide/16 v1, 0x0

    .line 131
    iput-wide v1, p0, Lcom/brentvatne/react/ReactVideoView;->mSeekTime:J

    .line 132
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    .line 133
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mBackgroundPaused:Z

    .line 134
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mIsFullscreen:Z

    .line 136
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    .line 137
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    .line 139
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 141
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 142
    iput v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    .line 143
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 144
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    .line 149
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 150
    const-class v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p1, v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    .line 151
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 153
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaPlayerIfNeeded()V

    .line 154
    invoke-virtual {p0, p0}, Lcom/brentvatne/react/ReactVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 156
    new-instance p1, Lcom/brentvatne/react/ReactVideoView$1;

    invoke-direct {p1, p0}, Lcom/brentvatne/react/ReactVideoView$1;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    return p0
.end method

.method static synthetic access$100(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/brentvatne/react/ReactVideoView;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/brentvatne/react/ReactVideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    return p0
.end method

.method static synthetic access$300(Lcom/brentvatne/react/ReactVideoView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/brentvatne/react/ReactVideoView;->mBackgroundPaused:Z

    return p0
.end method

.method static synthetic access$400(Lcom/brentvatne/react/ReactVideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/brentvatne/react/ReactVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    return p0
.end method

.method static synthetic access$600(Lcom/brentvatne/react/ReactVideoView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    return p0
.end method

.method static synthetic access$700(Lcom/brentvatne/react/ReactVideoView;)Lcom/facebook/react/uimanager/events/RCTEventEmitter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/brentvatne/react/ReactVideoView;)Ljava/lang/Runnable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/brentvatne/react/ReactVideoView;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    return p0
.end method

.method private calulateRelativeVolume()F
    .locals 4

    .line 418
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    iget v1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    .line 420
    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x1

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method private initializeMediaControllerIfNeeded()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    :cond_0
    return-void
.end method

.method private initializeMediaPlayerIfNeeded()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 212
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 213
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 214
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 215
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 216
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 217
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 218
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 219
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 220
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/brentvatne/react/ReactVideoView$TimedMetaDataAvailableListener;

    invoke-direct {v1, p0}, Lcom/brentvatne/react/ReactVideoView$TimedMetaDataAvailableListener;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V

    :cond_0
    return-void
.end method

.method private selectTimedMetadataTrack(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 771
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 775
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 776
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 777
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 778
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->selectTrack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public static toStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;
    .locals 4
    .param p0    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 756
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 760
    :cond_0
    invoke-interface {p0}, Lcom/facebook/react/bridge/ReadableMap;->keySetIterator()Lcom/facebook/react/bridge/ReadableMapKeySetIterator;

    move-result-object v1

    .line 761
    :goto_0
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->hasNextKey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableMapKeySetIterator;->nextKey()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public applyModifiers()V
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setResizeModeModifier(Lcom/yqritc/scalablevideoview/ScalableType;)V

    .line 517
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setRepeatModifier(Z)V

    .line 518
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setPausedModifier(Z)V

    .line 519
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    .line 520
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setProgressUpdateInterval(F)V

    .line 521
    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setRateModifier(F)V

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cleanupMediaPlayerResources()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    .line 239
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnTimedMetaDataAvailableListener(Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;)V

    .line 241
    :cond_1
    iput-boolean v2, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 242
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->release()V

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mIsFullscreen:Z

    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {p0, v2}, Lcom/brentvatne/react/ReactVideoView;->setFullscreen(Z)V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    if-eqz v0, :cond_4

    .line 248
    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/ThemedReactContext;->removeLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 249
    iput-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    :cond_4
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 14

    .line 707
    invoke-super {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onAttachedToWindow()V

    .line 709
    iget v6, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    if-lez v6, :cond_0

    .line 710
    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    iget-boolean v4, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    iget-object v5, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    iget v7, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/ReadableMap;II)V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v9, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    iget-object v10, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    iget-boolean v12, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    iget-object v13, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/ReadableMap;)V

    :goto_0
    const/4 v0, 0x1

    .line 715
    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .line 612
    invoke-direct {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->selectTimedMetadataTrack(Landroid/media/MediaPlayer;)V

    .line 613
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    mul-int p1, p1, p2

    int-to-double p1, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 p1, 0x1

    .line 662
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 663
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v0

    sget-object v1, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_END:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v1}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 664
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 665
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setKeepScreenOn(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 701
    invoke-super {p0}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onDetachedFromWindow()V

    .line 702
    invoke-virtual {p0, v0}, Lcom/brentvatne/react/ReactVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 583
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string/jumbo v0, "what"

    .line 584
    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "extra"

    .line 585
    invoke-interface {p1, p2, p3}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 586
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p2

    const-string p3, "error"

    .line 587
    invoke-interface {p2, p3, p1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 588
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p3

    sget-object v0, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_ERROR:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v0}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onHostDestroy()V
    .locals 0

    return-void
.end method

.method public onHostPause()V
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mBackgroundPaused:Z

    .line 726
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onHostResume()V
    .locals 2

    const/4 v0, 0x0

    .line 732
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mBackgroundPaused:Z

    .line 733
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    if-nez v0, :cond_0

    .line 734
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/brentvatne/react/ReactVideoView$3;

    invoke-direct {v1, p0}, Lcom/brentvatne/react/ReactVideoView$3;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_RESUME:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_STALLED:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p2

    sget-object p3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_READY_FOR_DISPLAY:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 187
    invoke-super/range {p0 .. p5}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onLayout(ZIIII)V

    if-eqz p1, :cond_2

    .line 189
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getVideoWidth()I

    move-result p1

    .line 194
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getVideoHeight()I

    move-result p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    new-instance p3, Lcom/yqritc/scalablevideoview/Size;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getHeight()I

    move-result p5

    invoke-direct {p3, p4, p5}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 201
    new-instance p4, Lcom/yqritc/scalablevideoview/Size;

    invoke-direct {p4, p1, p2}, Lcom/yqritc/scalablevideoview/Size;-><init>(II)V

    .line 202
    new-instance p1, Lcom/yqritc/scalablevideoview/ScaleManager;

    invoke-direct {p1, p3, p4}, Lcom/yqritc/scalablevideoview/ScaleManager;-><init>(Lcom/yqritc/scalablevideoview/Size;Lcom/yqritc/scalablevideoview/Size;)V

    .line 203
    iget-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mScalableType:Lcom/yqritc/scalablevideoview/ScalableType;

    invoke-virtual {p1, p2}, Lcom/yqritc/scalablevideoview/ScaleManager;->getScaleMatrix(Lcom/yqritc/scalablevideoview/ScalableType;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 537
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 539
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 540
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    const-string/jumbo v3, "width"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 541
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    const-string v3, "height"

    invoke-interface {v1, v3, v2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 542
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    const-string/jumbo v4, "orientation"

    if-le v2, v3, :cond_0

    const-string v2, "landscape"

    .line 543
    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "portrait"

    .line 545
    invoke-interface {v1, v4, v2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :goto_0
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 548
    iget v3, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    const-string v7, "duration"

    invoke-interface {v2, v7, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 549
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v3, v5

    const-string v5, "currentTime"

    invoke-interface {v2, v5, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    const-string v3, "naturalSize"

    .line 550
    invoke-interface {v2, v3, v1}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string v1, "canPlayFastForward"

    .line 552
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "canPlaySlowForward"

    .line 553
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "canPlaySlowReverse"

    .line 554
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "canPlayReverse"

    .line 555
    invoke-interface {v2, v3, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canStepBackward"

    .line 557
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "canStepForward"

    .line 558
    invoke-interface {v2, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 559
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v1

    sget-object v3, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v3}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 561
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->applyModifiers()V

    .line 563
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaControllerIfNeeded()V

    .line 565
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 566
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 568
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->videoControlHandler:Landroid/os/Handler;

    new-instance v1, Lcom/brentvatne/react/ReactVideoView$2;

    invoke-direct {v1, p0}, Lcom/brentvatne/react/ReactVideoView$2;-><init>(Lcom/brentvatne/react/ReactVideoView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 577
    :cond_1
    invoke-direct {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->selectTimedMetadataTrack(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 5

    .line 617
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 618
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    const-string v4, "currentTime"

    invoke-interface {p1, v4, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 619
    iget-wide v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSeekTime:J

    long-to-double v0, v0

    div-double/2addr v0, v2

    const-string/jumbo v2, "seekTime"

    invoke-interface {p1, v2, v0, v1}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 620
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v1

    sget-object v2, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_SEEK:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v2}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    const-wide/16 v0, 0x0

    .line 621
    iput-wide v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSeekTime:J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaControllerIfNeeded()V

    .line 178
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public seekTo(I)V
    .locals 2

    .line 626
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    .line 627
    iput-wide v0, p0, Lcom/brentvatne/react/ReactVideoView;->mSeekTime:J

    .line 628
    invoke-super {p0, p1}, Lcom/yqritc/scalablevideoview/ScalableVideoView;->seekTo(I)V

    .line 629
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    .line 630
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    :cond_0
    return-void
.end method

.method public setControls(Z)V
    .locals 0

    .line 530
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mUseNativeControls:Z

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 5

    .line 483
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mIsFullscreen:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 486
    :cond_0
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mIsFullscreen:Z

    .line 488
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 492
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 495
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mIsFullscreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 496
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    const/16 v0, 0x1006

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    .line 504
    :goto_0
    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v3

    sget-object v4, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v4}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 505
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v0

    sget-object v2, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_PRESENT:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v2}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 509
    iget-object v2, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v3

    sget-object v4, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_WILL_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v4}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 510
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 511
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result v0

    sget-object v2, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_FULLSCREEN_DID_DISMISS:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {v2}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_1
    return-void
.end method

.method public setMutedModifier(Z)V
    .locals 2

    .line 425
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    .line 427
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {p0, v0, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    .line 433
    :cond_1
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_2

    .line 435
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->calulateRelativeVolume()F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    :cond_2
    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->calulateRelativeVolume()F

    move-result p1

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-virtual {p0, p1, v0}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    goto :goto_0

    .line 441
    :cond_3
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    invoke-virtual {p0, p1, p1}, Lcom/brentvatne/react/ReactVideoView;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public setPausedModifier(Z)V
    .locals 1

    .line 391
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    .line 393
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->pause()V

    goto :goto_0

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->start()V

    .line 405
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    iget v0, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setRateModifier(F)V

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public setPlayInBackground(Z)V
    .locals 0

    .line 526
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPlayInBackground:Z

    return-void
.end method

.method public setProgressUpdateInterval(F)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mProgressUpdateInterval:F

    return-void
.end method

.method public setRateModifier(F)V
    .locals 3

    .line 460
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRate:F

    .line 462
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_1

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const-string v2, "RCTVideo"

    if-lt v0, v1, :cond_0

    .line 464
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mPaused:Z

    if-nez v0, :cond_1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 471
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mActiveRate:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Unable to set rate, unsupported on this device"

    .line 473
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Setting playback rate is not yet supported on Android versions below 6.0"

    .line 477
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setRepeatModifier(Z)V
    .locals 1

    .line 383
    iput-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mRepeat:Z

    .line 385
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setResizeModeModifier(Lcom/yqritc/scalablevideoview/ScalableType;)V
    .locals 1

    .line 373
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mResizeMode:Lcom/yqritc/scalablevideoview/ScalableType;

    .line 375
    iget-boolean v0, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setScalableType(Lcom/yqritc/scalablevideoview/ScalableType;)V

    .line 377
    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/ReadableMap;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 254
    invoke-virtual/range {v0 .. v7}, Lcom/brentvatne/react/ReactVideoView;->setSrc(Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/ReadableMap;II)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;Ljava/lang/String;ZZLcom/facebook/react/bridge/ReadableMap;II)V
    .locals 6

    const-string v0, ".mp4"

    .line 259
    iput-object p1, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcUriString:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcType:Ljava/lang/String;

    .line 261
    iput-boolean p3, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsNetwork:Z

    .line 262
    iput-boolean p4, p0, Lcom/brentvatne/react/ReactVideoView;->mSrcIsAsset:Z

    .line 263
    iput-object p5, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    .line 264
    iput p6, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    .line 265
    iput p7, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    const/4 p5, 0x0

    .line 268
    iput-boolean p5, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayerValid:Z

    .line 269
    iput p5, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoDuration:I

    .line 270
    iput p5, p0, Lcom/brentvatne/react/ReactVideoView;->mVideoBufferedDuration:I

    .line 272
    invoke-direct {p0}, Lcom/brentvatne/react/ReactVideoView;->initializeMediaPlayerIfNeeded()V

    .line 273
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p6}, Landroid/media/MediaPlayer;->reset()V

    if-eqz p3, :cond_2

    .line 279
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p4

    .line 281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 282
    invoke-virtual {p6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p7

    .line 284
    invoke-virtual {p7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p7

    invoke-virtual {p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p4, p7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 286
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_0

    const-string v0, "Cookie"

    .line 289
    invoke-interface {p7, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz p4, :cond_1

    .line 293
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    invoke-static {p4}, Lcom/brentvatne/react/ReactVideoView;->toStringMap(Lcom/facebook/react/bridge/ReadableMap;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p7, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 300
    :cond_1
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p0, p4, p6, p7}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_2
    if-eqz p4, :cond_4

    const-string p4, "content://"

    .line 302
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 304
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p0, p6, p4}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 306
    :cond_3
    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 p4, 0x0

    .line 311
    iget p6, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p6, :cond_5

    .line 313
    :try_start_1
    iget-object p6, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    iget p7, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    iget v1, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    invoke-static {p6, p7, v1}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object p6

    .line 314
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p6, p7}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception p6

    .line 318
    :try_start_2
    invoke-virtual {p6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p6

    .line 316
    invoke-virtual {p6}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_0
    if-nez p4, :cond_7

    .line 322
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const-string p6, "drawable"

    iget-object p7, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 325
    invoke-virtual {p7}, Lcom/facebook/react/uimanager/ThemedReactContext;->getPackageName()Ljava/lang/String;

    move-result-object p7

    .line 322
    invoke-virtual {p4, p1, p6, p7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_6

    .line 328
    iget-object p4, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    invoke-virtual {p4}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const-string/jumbo p6, "raw"

    iget-object p7, p0, Lcom/brentvatne/react/ReactVideoView;->mThemedReactContext:Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 331
    invoke-virtual {p7}, Lcom/facebook/react/uimanager/ThemedReactContext;->getPackageName()Ljava/lang/String;

    move-result-object p7

    .line 328
    invoke-virtual {p4, p1, p6, p7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p4

    .line 334
    :cond_6
    invoke-virtual {p0, p4}, Lcom/brentvatne/react/ReactVideoView;->setRawData(I)V

    goto :goto_1

    .line 337
    :cond_7
    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/brentvatne/react/ReactVideoView;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    :goto_1
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p4

    .line 347
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p6

    .line 348
    iget-object p7, p0, Lcom/brentvatne/react/ReactVideoView;->mRequestHeaders:Lcom/facebook/react/bridge/ReadableMap;

    invoke-interface {p6, p7}, Lcom/facebook/react/bridge/WritableMap;->merge(Lcom/facebook/react/bridge/ReadableMap;)V

    const-string/jumbo p7, "uri"

    .line 350
    invoke-interface {p4, p7, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 351
    invoke-interface {p4, p1, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "requestHeaders"

    .line 352
    invoke-interface {p4, p1, p6}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    const-string p1, "isNetwork"

    .line 353
    invoke-interface {p4, p1, p3}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMainVer:I

    if-lez p1, :cond_8

    const-string p2, "mainVer"

    .line 355
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 356
    iget p1, p0, Lcom/brentvatne/react/ReactVideoView;->mPatchVer:I

    if-lez p1, :cond_8

    const-string/jumbo p2, "patchVer"

    .line 357
    invoke-interface {p4, p2, p1}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 360
    :cond_8
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string/jumbo p2, "src"

    .line 361
    invoke-interface {p1, p2, p4}, Lcom/facebook/react/bridge/WritableMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 362
    iget-object p2, p0, Lcom/brentvatne/react/ReactVideoView;->mEventEmitter:Lcom/facebook/react/uimanager/events/RCTEventEmitter;

    invoke-virtual {p0}, Lcom/brentvatne/react/ReactVideoView;->getId()I

    move-result p3

    sget-object p4, Lcom/brentvatne/react/ReactVideoView$Events;->EVENT_LOAD_START:Lcom/brentvatne/react/ReactVideoView$Events;

    invoke-virtual {p4}, Lcom/brentvatne/react/ReactVideoView$Events;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p3, p4, p1}, Lcom/facebook/react/uimanager/events/RCTEventEmitter;->receiveEvent(ILjava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 363
    iput-boolean p5, p0, Lcom/brentvatne/react/ReactVideoView;->isCompleted:Z

    .line 366
    :try_start_3
    invoke-virtual {p0, p0}, Lcom/brentvatne/react/ReactVideoView;->prepareAsync(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    .line 341
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setStereoPan(F)V
    .locals 0

    .line 451
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mStereoPan:F

    .line 452
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    return-void
.end method

.method public setVolumeModifier(F)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/brentvatne/react/ReactVideoView;->mVolume:F

    .line 447
    iget-boolean p1, p0, Lcom/brentvatne/react/ReactVideoView;->mMuted:Z

    invoke-virtual {p0, p1}, Lcom/brentvatne/react/ReactVideoView;->setMutedModifier(Z)V

    return-void
.end method
