.class public Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "DeviceCertCheckResponse.java"


# instance fields
.field public seid:Ljava/lang/String;

.field public verifyResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyResult()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->verifyResult:Z

    return v0
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->seid:Ljava/lang/String;

    return-void
.end method

.method public setVerifyResult(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckResponse;->verifyResult:Z

    return-void
.end method
