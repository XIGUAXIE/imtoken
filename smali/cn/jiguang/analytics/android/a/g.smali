.class public final Lcn/jiguang/analytics/android/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/Handler;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/a/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Lcn/jiguang/analytics/android/a/n;
    .locals 1

    const/16 v0, 0x1111

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcn/jiguang/analytics/android/a/i;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/i;-><init>()V

    return-object p0
.end method

.method public static a(II)V
    .locals 2

    const/4 p0, 0x0

    invoke-static {p0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PeriodTaskManager"

    const-string/jumbo p1, "set failed, please call JAnalyticsInterface.init(context) first"

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x1111

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcn/jiguang/analytics/android/a/n;->a(I)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/a/g;->a(IZ)V

    if-eqz v1, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "period"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "analytics_report_period"

    invoke-static {v0, p1}, Lcn/jiguang/api/JCoreInterface;->fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/JCoreInterface;->report(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    nop

    :catch_0
    :cond_1
    return-void
.end method

.method public static a(IZ)V
    .locals 5

    sget-object v0, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/a/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PeriodTask"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcn/jiguang/analytics/android/a/h;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Lcn/jiguang/analytics/android/a/h;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz p1, :cond_4

    sget-object p1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    if-lez v0, :cond_5

    sget-object p1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    int-to-long v3, v0

    mul-long v3, v3, v1

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_4
    if-lez v0, :cond_5

    sget-object p1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    sget-object p1, Lcn/jiguang/analytics/android/a/g;->a:Landroid/os/Handler;

    int-to-long v3, v0

    mul-long v3, v3, v1

    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    return-void
.end method
