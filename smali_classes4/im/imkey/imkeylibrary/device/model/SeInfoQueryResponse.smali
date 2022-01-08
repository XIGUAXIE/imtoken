.class public Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "SeInfoQueryResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;
    }
.end annotation


# instance fields
.field public availableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sdkMode:Ljava/lang/String;

.field public seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvailableAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->availableAppList:Ljava/util/List;

    return-object v0
.end method

.method public getSdkMode()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->sdkMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setAvailableAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->availableAppList:Ljava/util/List;

    return-void
.end method

.method public setSdkMode(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->sdkMode:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;->seid:Ljava/lang/String;

    return-void
.end method
