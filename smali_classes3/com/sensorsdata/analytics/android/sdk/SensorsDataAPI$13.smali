.class Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;
.super Ljava/lang/Object;
.source "SensorsDataAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->trackTimerState(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$isPause:Z

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;Ljava/lang/String;ZJ)V
    .locals 0

    .line 1885
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$eventName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$isPause:Z

    iput-wide p4, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1889
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$eventName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/util/SADataHelper;->assertKey(Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1300(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1891
    :try_start_1
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->this$0:Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;->access$1300(Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$eventName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/EventTimer;

    if-eqz v1, :cond_0

    .line 1892
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/EventTimer;->isPaused()Z

    move-result v2

    iget-boolean v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$isPause:Z

    if-eq v2, v3, :cond_0

    .line 1893
    iget-boolean v2, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$isPause:Z

    iget-wide v3, p0, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAPI$13;->val$startTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/sensorsdata/analytics/android/sdk/EventTimer;->setTimerState(ZJ)V

    .line 1895
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 1897
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
