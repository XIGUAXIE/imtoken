.class public Lim/imkey/imkeylibrary/device/model/CommonRequest;
.super Ljava/lang/Object;
.source "CommonRequest.java"


# instance fields
.field cardRetDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field commandID:Ljava/lang/String;

.field deviceCert:Ljava/lang/String;

.field statusWord:Ljava/lang/String;

.field stepKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardRetDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->cardRetDataList:Ljava/util/List;

    return-object v0
.end method

.method public getCommandID()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->commandID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceCert()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->deviceCert:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusWord()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->statusWord:Ljava/lang/String;

    return-object v0
.end method

.method public getStepKey()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->stepKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCardRetDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->cardRetDataList:Ljava/util/List;

    return-void
.end method

.method public setCommandID(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->commandID:Ljava/lang/String;

    return-void
.end method

.method public setDeviceCert(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->deviceCert:Ljava/lang/String;

    return-void
.end method

.method public setStatusWord(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->statusWord:Ljava/lang/String;

    return-void
.end method

.method public setStepKey(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->stepKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonRequest{stepKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->stepKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", statusWord=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->statusWord:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cardRetDataList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->cardRetDataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", deviceCert=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CommonRequest;->deviceCert:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
