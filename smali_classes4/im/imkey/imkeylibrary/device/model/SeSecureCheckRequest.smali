.class public Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "SeSecureCheckRequest.java"


# instance fields
.field private seid:Ljava/lang/String;

.field private sn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->seid:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->sn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeSecureCheckRequest{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->sn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", stepKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->stepKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->statusWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", cardRetDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckRequest;->cardRetDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
