.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$_properties:Lorg/json/JSONObject;

.field final synthetic val$disableCallback:Z

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-boolean p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$disableCallback:Z

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1686
    sget-boolean v0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->mIsMainProcess:Z

    if-nez v0, :cond_0

    return-void

    .line 1691
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$disableCallback:Z

    if-eqz v0, :cond_1

    .line 1692
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$900(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 1698
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1100(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->mergeUtmByMetaData(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 1702
    :cond_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "$gaid"

    if-nez v1, :cond_4

    .line 1703
    :try_start_2
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1100(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1704
    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1200(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Ljava/lang/String;

    move-result-object v3

    .line 1703
    invoke-static {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1705
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "%s##gaid=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/4 v1, 0x1

    .line 1706
    iget-object v5, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1708
    :cond_3
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    const-string v4, "$ios_install_source"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1711
    :cond_4
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1712
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1715
    :cond_5
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$disableCallback:Z

    if-eqz v1, :cond_6

    .line 1716
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    const-string v2, "$ios_install_disable_callback"

    iget-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$disableCallback:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1719
    :try_start_3
    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1723
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/EventType;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$800(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1726
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1727
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v2, "$first_visit_time"

    .line 1728
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1729
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/EventType;->PROFILE_SET_ONCE:Lcom/sensorsdata/analytics/android/sdk/EventType;

    invoke-static {v2, v3, v5, v1, v5}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$800(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1731
    iget-boolean v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->val$disableCallback:Z

    if-eqz v1, :cond_7

    .line 1732
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$900(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallationWithCallback;->commit(Ljava/lang/Object;)V

    goto :goto_2

    .line 1734
    :cond_7
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1000(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/data/persistent/PersistentFirstTrackInstallation;->commit(Ljava/lang/Object;)V

    .line 1737
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$7;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->flushSync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1739
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method
