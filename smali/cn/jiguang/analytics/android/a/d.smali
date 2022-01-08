.class public final Lcn/jiguang/analytics/android/a/d;
.super Lcn/jiguang/analytics/android/a/b;


# static fields
.field private static b:Lcn/jiguang/analytics/android/a/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static b()Lcn/jiguang/analytics/android/a/d;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/a/d;->b:Lcn/jiguang/analytics/android/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/a/d;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/a/d;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/a/d;->b:Lcn/jiguang/analytics/android/a/d;

    :cond_0
    sget-object v0, Lcn/jiguang/analytics/android/a/d;->b:Lcn/jiguang/analytics/android/a/d;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    const-string v1, "keyevent"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/analytics/android/a/o;->a(Lcn/jiguang/analytics/android/a/b;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Event;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "EventManager"

    const-string/jumbo p2, "onEvent context is null"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/d;->a:Landroid/content/Context;

    new-instance p1, Lcn/jiguang/analytics/android/b/b;

    invoke-direct {p1}, Lcn/jiguang/analytics/android/b/b;-><init>()V

    instance-of v0, p2, Lcn/jiguang/analytics/android/api/CalculateEvent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/jiguang/analytics/android/b/b;->a(I)V

    :cond_1
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getReportTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcn/jiguang/analytics/android/api/Event;->setItime(J)Lcn/jiguang/analytics/android/api/Event;

    invoke-virtual {p1, p2}, Lcn/jiguang/analytics/android/b/b;->a(Lcn/jiguang/analytics/android/api/Event;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance p2, Lcn/jiguang/analytics/android/a/e;

    invoke-direct {p2, p0, p1, v0, v1}, Lcn/jiguang/analytics/android/a/e;-><init>(Lcn/jiguang/analytics/android/a/d;Lcn/jiguang/analytics/android/b/b;J)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    const-string v0, "ANALYTICS"

    invoke-static {v0, p2, p1}, Lcn/jiguang/api/JCoreInterface;->execute(Ljava/lang/String;Ljava/lang/Runnable;[I)V

    return-void
.end method
