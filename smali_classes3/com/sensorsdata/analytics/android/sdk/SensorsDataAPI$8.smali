.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackChannelEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$_properties:Lorg/json/JSONObject;

.field final synthetic val$eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1768
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1773
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    const-string v1, "$is_channel_callback_event"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1100(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$eventName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isFirstChannelEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1774
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1100(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->mergeUtmByMetaData(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->hasUtmProperties(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1778
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    const-string v1, "$channel_device_info"

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    .line 1779
    invoke-static {v2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1100(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1200(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sensorsdata/analytics/android/sdk/util/ChannelUtils;->getDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1778
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1782
    :try_start_1
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    .line 1786
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/EventType;->TRACK:Lcom/sensorsdata/analytics/android/sdk/EventType;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$8;->val$_properties:Lorg/json/JSONObject;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$800(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Lcom/sensorsdata/analytics/android/sdk/EventType;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1788
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
