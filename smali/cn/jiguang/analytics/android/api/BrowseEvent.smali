.class public Lcn/jiguang/analytics/android/api/BrowseEvent;
.super Lcn/jiguang/analytics/android/api/Event;


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseEvent"

.field private static final serialVersionUID:J = -0xaeaa4f9e55b226fL


# instance fields
.field private browseDuration:F
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "browse_duration"
    .end annotation
.end field

.field private browseId:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "browse_content_id"
    .end annotation
.end field

.field private browseName:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "browse_name"
    .end annotation
.end field

.field private browseType:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "browse_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom_browse"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "custom_browse"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    iput-object p2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    iput-object p3, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    iput p4, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    return-void
.end method


# virtual methods
.method public checkEvent()Z
    .locals 4

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->checkEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    const-string v2, "browse_content_id"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "BrowseEvent"

    if-eqz v0, :cond_1

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedbrowse_content_id"

    invoke-virtual {p0, v3, v0}, Lcn/jiguang/analytics/android/api/BrowseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    const-string v2, "browse_type"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedbrowse_type"

    invoke-virtual {p0, v3, v0}, Lcn/jiguang/analytics/android/api/BrowseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    const-string v2, "browse_duration"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedbrowse_duration"

    invoke-virtual {p0, v3, v0}, Lcn/jiguang/analytics/android/api/BrowseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    const-string v2, "browse_name"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedbrowse_name"

    invoke-virtual {p0, v3, v0}, Lcn/jiguang/analytics/android/api/BrowseEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "browseName"

    invoke-virtual {p0, v0, v3, v2}, Lcn/jiguang/analytics/android/api/BrowseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    const-string v3, "browseId"

    invoke-virtual {p0, v0, v3, v1}, Lcn/jiguang/analytics/android/api/BrowseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    const-string v3, "browseType"

    invoke-virtual {p0, v0, v3, v1}, Lcn/jiguang/analytics/android/api/BrowseEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-super {p0, p1}, Lcn/jiguang/analytics/android/api/Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcn/jiguang/analytics/android/api/BrowseEvent;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    :cond_8
    iget v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    iget p1, p1, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_9

    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public getBrowseDuration()F
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    return v0
.end method

.method public getBrowseId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setBrowseDuration(F)Lcn/jiguang/analytics/android/api/BrowseEvent;
    .locals 0

    iput p1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    return-object p0
.end method

.method public setBrowseId(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/BrowseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    return-object p0
.end method

.method public setBrowseName(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/BrowseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    return-object p0
.end method

.method public setBrowseType(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/BrowseEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrowseEvent{browseId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", browseName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", browseType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", browseDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/analytics/android/api/BrowseEvent;->browseDuration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
