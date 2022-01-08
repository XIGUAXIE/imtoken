.class public Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "SeInfoQueryRequest.java"


# instance fields
.field public sdkVersion:Ljava/lang/String;

.field public seid:Ljava/lang/String;

.field public sn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->seid:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryRequest;->sn:Ljava/lang/String;

    return-void
.end method
