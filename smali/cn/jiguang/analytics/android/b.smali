.class public final Lcn/jiguang/analytics/android/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Landroid/content/Context;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jiguang/analytics/android/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    sput-boolean v0, Lcn/jiguang/analytics/android/b;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcn/jiguang/analytics/android/b;->b:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcn/jiguang/analytics/android/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4

    const-string v0, "JAnalytics"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/visual_bury"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/f/q;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleActivityIntent e"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/b;->c:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    sget-object v0, Lcn/jiguang/analytics/android/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "ANALYTICS"

    invoke-static {v2}, Lcn/jiguang/api/JCoreInterface;->putSingleExecutor(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "JAnalytics"

    const-string/jumbo v1, "unexcepted - context was null"

    invoke-static {p0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->c()V

    invoke-static {}, Lcn/jiguang/analytics/android/a/j;->b()Lcn/jiguang/analytics/android/a/j;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/jiguang/analytics/android/a/j;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/jiguang/analytics/android/a/o;->a(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/d;->b()Lcn/jiguang/analytics/android/a/d;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcn/jiguang/analytics/android/a/d;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->register(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/d/a;->a()Lcn/jiguang/analytics/android/e/d/a;

    move-result-object v2

    sget-object v3, Lcn/jiguang/analytics/android/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/jiguang/analytics/android/e/d/a;->a(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/content/Context;Z)V

    instance-of v2, p0, Landroid/app/Application;

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    check-cast p0, Landroid/app/Application;

    new-instance v2, Lcn/jiguang/analytics/android/e/g/g;

    invoke-direct {v2}, Lcn/jiguang/analytics/android/e/g/g;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-boolean v0, Lcn/jiguang/analytics/android/b;->c:Z

    :cond_2
    sget-object p0, Lcn/jiguang/analytics/android/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    return v0
.end method
