.class public Lim/imkey/imkeylibrary/device/model/ImKeyDevice;
.super Ljava/lang/Object;
.source "ImKeyDevice.java"


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

.field private sdkMode:Ljava/lang/String;

.field private seid:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 51
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->availableAppList:Ljava/util/List;

    return-object v0
.end method

.method public getSdkMode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sdkMode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->status:Ljava/lang/String;

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

    .line 55
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->availableAppList:Ljava/util/List;

    return-void
.end method

.method public setSdkMode(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sdkMode:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->seid:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sn:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->status:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImKeyDevice{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sdkMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->sdkMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", availableAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/ImKeyDevice;->availableAppList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
