.class public Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "AppUpdateRequest.java"


# instance fields
.field private instanceAid:Ljava/lang/String;

.field private seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceAid()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->instanceAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setInstanceAid(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->instanceAid:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->seid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppUpdateRequest{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", instanceAid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AppUpdateRequest;->instanceAid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
