.class abstract Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;
.super Ljava/lang/Object;
.source "AbstractSAConfigOptions.java"


# instance fields
.field mAnonymousId:Ljava/lang/String;

.field mAutoTrackEventType:I

.field mDisableRandomTimeRequestRemoteConfig:Z

.field mEnableMultiProcess:Z

.field mEnableSaveDeepLinkInfo:Z

.field mEnableTrackAppCrash:Z

.field mFlushBulkSize:I

.field mFlushInterval:I

.field mHeatMapConfirmDialogEnabled:Z

.field mHeatMapEnabled:Z

.field mLogEnabled:Z

.field mMaxCacheSize:J

.field mMaxRequestInterval:I

.field mMinRequestInterval:I

.field mNetworkTypePolicy:I

.field mRNAutoTrackEnabled:Z

.field mRemoteConfigUrl:Ljava/lang/String;

.field mServerUrl:Ljava/lang/String;

.field mTrackScreenOrientationEnabled:Z

.field mVisualizedConfirmDialogEnabled:Z

.field mVisualizedEnabled:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    .line 32
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMinRequestInterval:I

    const/16 v0, 0x30

    .line 37
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxRequestInterval:I

    const-wide/32 v0, 0x2000000

    .line 72
    iput-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mMaxCacheSize:J

    const/16 v0, 0x1e

    .line 112
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mNetworkTypePolicy:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableMultiProcess:Z

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/AbstractSAConfigOptions;->mEnableSaveDeepLinkInfo:Z

    return-void
.end method
