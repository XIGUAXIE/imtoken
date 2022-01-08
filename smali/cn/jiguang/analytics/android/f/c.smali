.class public final Lcn/jiguang/analytics/android/f/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/analytics/android/e/f/c;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/f/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->d(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    const-string v0, ""

    if-eqz p0, :cond_0

    const-string v1, "bury_filter"

    invoke-virtual {p0, v1, v0}, Lcn/jiguang/analytics/android/e/f/c;->a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->d(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-eqz p0, :cond_0

    const-string v0, "bury_filter"

    invoke-virtual {p0, v0, p1}, Lcn/jiguang/analytics/android/e/f/c;->b(Ljava/lang/String;Ljava/io/Serializable;)Z

    const-wide/16 p0, 0x0

    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "filter_last_update"

    invoke-virtual {p0, p2, p1}, Lcn/jiguang/analytics/android/e/f/c;->b(Ljava/lang/String;Ljava/io/Serializable;)Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->d(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "circle_need_show"

    invoke-virtual {p0, v0, p1}, Lcn/jiguang/analytics/android/e/f/c;->b(Ljava/lang/String;Ljava/io/Serializable;)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->d(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "circle_need_show"

    invoke-virtual {p0, v1, v0}, Lcn/jiguang/analytics/android/e/f/c;->a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->d(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "filter_last_update"

    invoke-virtual {p0, v1, v0}, Lcn/jiguang/analytics/android/e/f/c;->a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/f/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-nez v1, :cond_0

    const-string v1, "bury"

    invoke-static {p0, v1}, Lcn/jiguang/analytics/android/e/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/analytics/android/e/f/c;

    move-result-object p0

    sput-object p0, Lcn/jiguang/analytics/android/f/c;->a:Lcn/jiguang/analytics/android/e/f/c;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
