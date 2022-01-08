.class public Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;
.super Ljava/lang/Object;
.source "CommonResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/imkey/imkeylibrary/device/model/CommonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReturnDataBean"
.end annotation


# instance fields
.field private apduList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nextStepKey:Ljava/lang/String;

.field private seid:Ljava/lang/String;

.field final synthetic this$0:Lim/imkey/imkeylibrary/device/model/CommonResponse;


# direct methods
.method public constructor <init>(Lim/imkey/imkeylibrary/device/model/CommonResponse;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->this$0:Lim/imkey/imkeylibrary/device/model/CommonResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApduList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->apduList:Ljava/util/List;

    return-object v0
.end method

.method public getNextStepKey()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->nextStepKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSeid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->seid:Ljava/lang/String;

    return-object v0
.end method

.method public setApduList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->apduList:Ljava/util/List;

    return-void
.end method

.method public setNextStepKey(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->nextStepKey:Ljava/lang/String;

    return-void
.end method

.method public setSeid(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->seid:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReturnDataBean{seid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->seid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nextStepKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->nextStepKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", apduList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lim/imkey/imkeylibrary/device/model/CommonResponse$ReturnDataBean;->apduList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
