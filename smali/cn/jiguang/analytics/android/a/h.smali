.class final Lcn/jiguang/analytics/android/a/h;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/a/n;->run()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcn/jiguang/analytics/android/a/h;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage e"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PeriodTaskManager"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
