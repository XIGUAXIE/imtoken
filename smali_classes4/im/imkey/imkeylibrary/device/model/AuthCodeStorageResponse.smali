.class public Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "AuthCodeStorageResponse.java"


# instance fields
.field public seid:Ljava/lang/String;


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

    .line 11
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/AuthCodeStorageResponse;->seid:Ljava/lang/String;

    return-void
.end method
