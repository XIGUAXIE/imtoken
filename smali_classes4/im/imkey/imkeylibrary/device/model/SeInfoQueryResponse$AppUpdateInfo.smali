.class public Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;
.super Ljava/lang/Object;
.source "SeInfoQueryResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppUpdateInfo"
.end annotation


# instance fields
.field private appletName:Ljava/lang/String;

.field private appletVersion:Ljava/lang/String;

.field private updateType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppletName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->appletName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppletVersion()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->appletVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->updateType:Ljava/lang/String;

    return-object v0
.end method

.method public setAppletName(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->appletName:Ljava/lang/String;

    return-void
.end method

.method public setAppletVersion(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->appletVersion:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeInfoQueryResponse$AppUpdateInfo;->updateType:Ljava/lang/String;

    return-void
.end method
