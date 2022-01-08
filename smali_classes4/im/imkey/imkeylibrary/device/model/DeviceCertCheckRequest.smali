.class public Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "DeviceCertCheckRequest.java"


# instance fields
.field public deviceCert:Ljava/lang/String;

.field public seid:Ljava/lang/String;

.field public sn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCert()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->deviceCert:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public getSn()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->sn:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceCert(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->deviceCert:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->seid:Ljava/lang/String;

    return-void
.end method

.method public setSn(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/DeviceCertCheckRequest;->sn:Ljava/lang/String;

    return-void
.end method
