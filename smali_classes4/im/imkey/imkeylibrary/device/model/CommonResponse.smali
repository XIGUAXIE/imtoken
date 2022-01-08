.class public Lim/imkey/imkeylibrary/device/model/CommonResponse;
.super Ljava/lang/Object;
.source "CommonResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;
    }
.end annotation


# instance fields
.field private _ReturnCode:Ljava/lang/String;

.field private _ReturnData:Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

.field private _ReturnMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get_ReturnCode()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnCode:Ljava/lang/String;

    return-object v0
.end method

.method public get_ReturnData()Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;
    .locals 1

    .line 40
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnData:Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    return-object v0
.end method

.method public get_ReturnMsg()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public set_ReturnCode(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnCode:Ljava/lang/String;

    return-void
.end method

.method public set_ReturnData(Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnData:Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    return-void
.end method

.method public set_ReturnMsg(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CommonResponse{_ReturnCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", _ReturnMsg=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", _ReturnData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse;->_ReturnData:Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
