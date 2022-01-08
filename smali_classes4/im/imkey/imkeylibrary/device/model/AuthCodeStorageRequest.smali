.class public Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;
.super Lim/imkey/imkeylibrary/device/model/CommonRequest;
.source "AuthCodeStorageRequest.java"


# instance fields
.field public authCode:Ljava/lang/String;

.field public seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageRequest;->seid:Ljava/lang/String;

    return-void
.end method
