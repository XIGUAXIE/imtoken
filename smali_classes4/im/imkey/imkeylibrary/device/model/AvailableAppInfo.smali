.class public Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;
.super Ljava/lang/Object;
.source "AvailableAppInfo.java"


# instance fields
.field public appLogo:Ljava/lang/String;

.field public appletName:Ljava/lang/String;

.field public installMode:Ljava/lang/String;

.field public installedVersion:Ljava/lang/String;

.field public lastUpated:Ljava/lang/String;

.field public latestVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppLogo()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAppletName()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appletName:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallMode()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installMode:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledVersion()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installedVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpated()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->lastUpated:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestVersion()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->latestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppLogo(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appLogo:Ljava/lang/String;

    return-void
.end method

.method public setAppletName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appletName:Ljava/lang/String;

    return-void
.end method

.method public setInstallMode(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installMode:Ljava/lang/String;

    return-void
.end method

.method public setInstalledVersion(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installedVersion:Ljava/lang/String;

    return-void
.end method

.method public setLastUpated(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->lastUpated:Ljava/lang/String;

    return-void
.end method

.method public setLatestVersion(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->latestVersion:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AvailableAppInfo{appletName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appletName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appLogo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->appLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", lastUpated=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->lastUpated:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", installMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", latestVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->latestVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", installedVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AvailableAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
