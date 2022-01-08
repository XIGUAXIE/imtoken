.class public Lcn/jiguang/analytics/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/api/JAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;JILjava/lang/Object;Ljava/nio/ByteBuffer;)J
    .locals 0

    const/16 p1, 0x1a

    if-eq p4, p1, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    new-instance p1, Lcn/jiguang/analytics/android/a;

    invoke-direct {p1, p5, p6}, Lcn/jiguang/analytics/android/a;-><init>(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iget p4, p1, Lcn/jiguang/api/JResponse;->code:I

    invoke-static {p2, p3, p4}, Lcn/jiguang/analytics/android/a/f;->a(JI)V

    invoke-virtual {p1}, Lcn/jiguang/api/JResponse;->getRid()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public dispatchTimeOutMessage(Landroid/content/Context;JJI)V
    .locals 0

    const/16 p1, 0x1a

    if-eq p6, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4, p5}, Lcn/jiguang/analytics/android/a/f;->a(J)V

    :goto_0
    return-void
.end method

.method public getBinderByType(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.1.0"

    return-object v0
.end method

.method public handleMessage(Landroid/content/Context;JLjava/lang/Object;)V
    .locals 0

    instance-of p1, p4, Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "JAnalyticsAction"

    const-string p2, "handleMessage unknown object "

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isSupportedCMD(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActionRun(Landroid/content/Context;JLandroid/os/Bundle;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lcn/jiguang/analytics/android/b;->b(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "JAnalyticsAction"

    const-string p2, "Action - onActionRun , JAnalytics init failed"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p4}, Lcn/jiguang/analytics/android/a/f;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public onEvent(Landroid/content/Context;JI)V
    .locals 0

    return-void
.end method
