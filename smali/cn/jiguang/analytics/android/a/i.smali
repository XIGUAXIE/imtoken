.class final Lcn/jiguang/analytics/android/a/i;
.super Lcn/jiguang/analytics/android/a/n;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "analytics_report_period"

    invoke-static {v0, v2, v1}, Lcn/jiguang/api/MultiSpHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v1, 0x15180

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const v0, 0x15180

    :cond_2
    :goto_0
    return v0
.end method

.method final a(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    const v1, 0x15180

    if-le p1, v1, :cond_1

    :cond_0
    const-string p1, "JAnalyticsInterface"

    const-string/jumbo v1, "period should be in [10,86400]"

    invoke-static {p1, v1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/a/i;->a()I

    move-result v1

    if-eq p1, v1, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "analytics_report_period"

    invoke-static {v0, v1, p1}, Lcn/jiguang/api/MultiSpHelper;->commitInt(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/a/o;->d()V

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/content/Context;)V

    return-void
.end method
