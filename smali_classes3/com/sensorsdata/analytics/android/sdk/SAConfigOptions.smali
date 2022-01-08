.class public final Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
.super Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.source "SAConfigOptions.java"


# instance fields
.field mInvokeHeatMapConfirmDialog:Z

.field mInvokeHeatMapEnabled:Z

.field mInvokeHeatMapSSLCheck:Z

.field mInvokeLog:Z

.field mInvokeVisualizedConfirmDialog:Z

.field mInvokeVisualizedEnabled:Z

.field mInvokeVisualizedSSLCheck:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disableRandomTimeRequestRemoteConfig()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mDisableRandomTimeRequestRemoteConfig:Z

    return-object p0
.end method

.method public enableHeatMap(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mHeatMapEnabled:Z

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapEnabled:Z

    return-object p0
.end method

.method public enableHeatMapConfirmDialog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mHeatMapConfirmDialogEnabled:Z

    const/4 p1, 0x1

    .line 201
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeHeatMapConfirmDialog:Z

    return-object p0
.end method

.method public enableLog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mLogEnabled:Z

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeLog:Z

    return-object p0
.end method

.method public enableMultiProcess(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 292
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableMultiProcess:Z

    return-object p0
.end method

.method public enableReactNativeAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 248
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mRNAutoTrackEnabled:Z

    return-object p0
.end method

.method public enableSaveDeepLinkInfo(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return-object p0
.end method

.method public enableTrackAppCrash()Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mEnableTrackAppCrash:Z

    return-object p0
.end method

.method public enableTrackScreenOrientation(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mTrackScreenOrientationEnabled:Z

    return-object p0
.end method

.method public enableVisualizedAutoTrack(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedEnabled:Z

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedEnabled:Z

    return-object p0
.end method

.method public enableVisualizedAutoTrackConfirmDialog(Z)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mVisualizedConfirmDialogEnabled:Z

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mInvokeVisualizedConfirmDialog:Z

    return-object p0
.end method

.method public setAnonymousId(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAnonymousId:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoTrackEventType(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 102
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mAutoTrackEventType:I

    return-object p0
.end method

.method public setFlushBulkSize(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    const/16 v0, 0x32

    .line 134
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushBulkSize:I

    return-object p0
.end method

.method public setFlushInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 1

    const/16 v0, 0x1388

    .line 123
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mFlushInterval:I

    return-object p0
.end method

.method public setMaxCacheSize(J)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 2

    const-wide/32 v0, 0x1000000

    .line 145
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxCacheSize:J

    return-object p0
.end method

.method public setMaxRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    :goto_0
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMaxRequestInterval:I

    return-object p0
.end method

.method public setMinRequestInterval(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    :goto_0
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mMinRequestInterval:I

    return-object p0
.end method

.method public setNetworkTypePolicy(I)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 270
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mNetworkTypePolicy:I

    return-object p0
.end method

.method public setRemoteConfigUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mRemoteConfigUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setServerUrl(Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;->mServerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setSourceChannels([Ljava/lang/String;)Lcom/sensorsdata/analytics/android/sdk/SAConfigOptions;
    .locals 0

    .line 314
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->setSourceChannelKeys([Ljava/lang/String;)V

    return-object p0
.end method
