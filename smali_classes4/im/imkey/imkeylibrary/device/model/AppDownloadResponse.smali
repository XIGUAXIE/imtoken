.class public Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "AppDownloadResponse.java"


# instance fields
.field private instanceAid:Ljava/lang/String;

.field private seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceAid()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->instanceAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setInstanceAid(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->instanceAid:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->seid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppDownloadResponse{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", instanceAid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/AppDownloadResponse;->instanceAid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
