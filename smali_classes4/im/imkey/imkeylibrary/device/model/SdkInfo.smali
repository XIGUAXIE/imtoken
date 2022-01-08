.class public Lim/imkey/imkeylibrary/device/model/SdkInfo;
.super Ljava/lang/Object;
.source "SdkInfo.java"


# instance fields
.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SdkInfo;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SdkInfo;->sdkVersion:Ljava/lang/String;

    return-void
.end method
