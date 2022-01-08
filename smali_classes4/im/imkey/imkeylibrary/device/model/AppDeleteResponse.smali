.class public Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "AppDeleteResponse.java"


# instance fields
.field public instanceAid:Ljava/lang/String;

.field public paid:Ljava/lang/String;

.field public seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceAid()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->instanceAid:Ljava/lang/String;

    return-object v0
.end method

.method public getPaid()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->paid:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setInstanceAid(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->instanceAid:Ljava/lang/String;

    return-void
.end method

.method public setPaid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->paid:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AppDeleteResponse;->seid:Ljava/lang/String;

    return-void
.end method
