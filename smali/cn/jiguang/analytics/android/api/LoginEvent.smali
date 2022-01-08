.class public Lcn/jiguang/analytics/android/api/LoginEvent;
.super Lcn/jiguang/analytics/android/api/Event;


# static fields
.field private static final TAG:Ljava/lang/String; = "LoginEvent"

.field private static final serialVersionUID:J = -0x9280be49d27723cL


# instance fields
.field private isInitLoginSuccess:Z

.field private loginMethod:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "login_method"
    .end annotation
.end field

.field private loginSuccess:Z
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "login_success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "custom_login"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->isInitLoginSuccess:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "custom_login"

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/api/Event;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->isInitLoginSuccess:Z

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->isInitLoginSuccess:Z

    return-void
.end method


# virtual methods
.method public checkEvent()Z
    .locals 5

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->checkEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->extMap:Ljava/util/Map;

    const-string v2, "LoginEvent"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->extMap:Ljava/util/Map;

    const-string v3, "login_method"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedlogin_method"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/LoginEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->extMap:Ljava/util/Map;

    const-string v3, "login_success"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recordedlogin_success"

    invoke-virtual {p0, v2, v0}, Lcn/jiguang/analytics/android/api/LoginEvent;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->extMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "loginMethod"

    invoke-virtual {p0, v0, v4, v3}, Lcn/jiguang/analytics/android/api/LoginEvent;->isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->isInitLoginSuccess:Z

    if-nez v0, :cond_4

    const-string v0, "invalide LoginEvent - loginSuccess must set value"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcn/jiguang/analytics/android/api/Event;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcn/jiguang/analytics/android/api/LoginEvent;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-boolean v2, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    iget-boolean p1, p1, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    if-ne v2, p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getLoginMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public setLoginMethod(Ljava/lang/String;)Lcn/jiguang/analytics/android/api/LoginEvent;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginSuccess(Z)Lcn/jiguang/analytics/android/api/LoginEvent;
    .locals 0

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->isInitLoginSuccess:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginEvent{loginMethod=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", loginSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/api/LoginEvent;->loginSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcn/jiguang/analytics/android/api/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
