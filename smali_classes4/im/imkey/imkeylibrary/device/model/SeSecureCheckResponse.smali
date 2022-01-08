.class public Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;
.super Lim/imkey/imkeylibrary/device/model/CommonResponse;
.source "SeSecureCheckResponse.java"


# instance fields
.field private seid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lim/imkey/imkeylibrary/device/model/CommonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->seid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeSecureCheckResponse{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/SeSecureCheckResponse;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
