.class public Lcn/jiguang/plugins/push/receiver/JPushModuleReceiver;
.super Lcn/jpush/android/service/JPushMessageReceiver;
.source "JPushModuleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcn/jpush/android/service/JPushMessageReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 1

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAliasOperatorResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 98
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertJPushMessageToMap(ILcn/jpush/android/api/JPushMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "TagAliasEvent"

    .line 99
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onCheckTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 1

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckTagOperatorResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 91
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertJPushMessageToMap(ILcn/jpush/android/api/JPushMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "TagAliasEvent"

    .line 92
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onCommandResult(Landroid/content/Context;Lcn/jpush/android/api/CmdMessage;)V
    .locals 2

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCommandResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/CmdMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 74
    iget v0, p2, Lcn/jpush/android/api/CmdMessage;->cmd:I

    const-string v1, "command"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 75
    iget-object v0, p2, Lcn/jpush/android/api/CmdMessage;->extra:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "commandExtra"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p2, Lcn/jpush/android/api/CmdMessage;->msg:Ljava/lang/String;

    const-string v1, "commandMessage"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget p2, p2, Lcn/jpush/android/api/CmdMessage;->errorCode:I

    const-string v0, "commandResult"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "CommandEvent"

    .line 78
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onConnected(Landroid/content/Context;Z)V
    .locals 1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConnected state:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string v0, "connectEnable"

    .line 66
    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "ConnectEvent"

    .line 67
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onMessage(Landroid/content/Context;Lcn/jpush/android/api/CustomMessage;)V
    .locals 1

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onMessage:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/CustomMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertCustomMessage(Lcn/jpush/android/api/CustomMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "CustomMessageEvent"

    .line 24
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onMobileNumberOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 2

    .line 104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onMobileNumberOperatorResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->getErrorCode()I

    move-result v0

    const-string v1, "code"

    invoke-interface {p1, v1, v0}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    .line 107
    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->getSequence()I

    move-result p2

    const-string/jumbo v0, "sequence"

    invoke-interface {p1, v0, p2}, Lcom/facebook/react/bridge/WritableMap;->putInt(Ljava/lang/String;I)V

    const-string p2, "MobileNumberEvent"

    .line 108
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .locals 1

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNotifyMessageArrived:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const-string p1, "notificationArrived"

    .line 30
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertNotificationToMap(Ljava/lang/String;Lcn/jpush/android/api/NotificationMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    .line 31
    iget p2, p2, Lcn/jpush/android/api/NotificationMessage;->notificationType:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const-string p2, "NotificationEvent"

    .line 32
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    :cond_0
    const-string p2, "LocalNotificationEvent"

    .line 34
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    :goto_0
    return-void
.end method

.method public onNotifyMessageDismiss(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .locals 1

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNotifyMessageDismiss:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const-string p1, "notificationDismissed"

    .line 53
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertNotificationToMap(Ljava/lang/String;Lcn/jpush/android/api/NotificationMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "NotificationEvent"

    .line 54
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method

.method public onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNotifyMessageOpened:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/NotificationMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcn/jiguang/plugins/push/JPushModule;->reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    if-eqz v0, :cond_1

    .line 42
    sget-boolean v0, Lcn/jiguang/plugins/push/JPushModule;->isAppForeground:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->launchApp(Landroid/content/Context;)V

    :cond_0
    const-string p1, "notificationOpened"

    .line 43
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertNotificationToMap(Ljava/lang/String;Lcn/jpush/android/api/NotificationMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "NotificationEvent"

    .line 44
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/jpush/android/service/JPushMessageReceiver;->onNotifyMessageOpened(Landroid/content/Context;Lcn/jpush/android/api/NotificationMessage;)V

    :goto_0
    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onRegister:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onTagOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
    .locals 1

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTagOperatorResult:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/jpush/android/api/JPushMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 84
    invoke-static {p1, p2}, Lcn/jiguang/plugins/push/helper/JPushHelper;->convertJPushMessageToMap(ILcn/jpush/android/api/JPushMessage;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p1

    const-string p2, "TagAliasEvent"

    .line 85
    invoke-static {p2, p1}, Lcn/jiguang/plugins/push/helper/JPushHelper;->sendEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    return-void
.end method
