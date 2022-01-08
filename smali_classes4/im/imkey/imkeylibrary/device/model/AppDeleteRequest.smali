.class public Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "AppDeleteRequest.java"


# instance fields
.field public deviceCert:Ljava/lang/String;

.field public instanceAid:Ljava/lang/String;

.field public seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCert()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->deviceCert:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceAid()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->instanceAid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceCert(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->deviceCert:Ljava/lang/String;

    return-void
.end method

.method public setInstanceAid(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->instanceAid:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteRequest;->seid:Ljava/lang/String;

    return-void
.end method
