.class public final Lcn/jiguang/analytics/android/f/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/analytics/android/f/f;

.field private static b:J

.field private static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/jiguang/analytics/android/f/f;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/f/f;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/jiguang/analytics/android/f/d;->b:J

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/jiguang/analytics/android/f/d;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(J)J
    .locals 0

    const-wide/16 p0, 0x0

    sput-wide p0, Lcn/jiguang/analytics/android/f/d;->b:J

    return-wide p0
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/f/f;)Lcn/jiguang/analytics/android/f/f;
    .locals 0

    sput-object p0, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcn/jiguang/analytics/android/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "EventFilter"

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/analytics/android/f/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "xxx_updateBury json="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "file://"

    invoke-virtual {v2, v4}, Lcn/jiguang/analytics/android/f/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/analytics/android/d/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    invoke-virtual {v1, p1}, Lcn/jiguang/analytics/android/f/f;->a(Ljava/util/List;)V

    sget-object p1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/f/f;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcn/jiguang/analytics/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBury e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 9

    const-string v0, "EventFilter"

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    if-eqz v1, :cond_1

    sget-object v1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/f/f;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "xxx_fetchFilter from sp : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/analytics/android/f/f;->a(Ljava/lang/String;)Lcn/jiguang/analytics/android/f/f;

    move-result-object v1

    if-eqz v1, :cond_2

    sput-object v1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcn/jiguang/analytics/android/f/d;->b:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    sget-wide v3, Lcn/jiguang/analytics/android/f/d;->b:J

    const-wide/16 v7, 0x7530

    add-long/2addr v3, v7

    cmp-long p1, v1, v3

    if-gez p1, :cond_3

    const-string p0, "is fetching, please wait for result"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p0}, Lcn/jiguang/analytics/android/f/c;->c(Landroid/content/Context;)J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    const-wide/32 v5, 0x36ee80

    add-long/2addr v5, v3

    cmp-long p1, v1, v5

    if-gez p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "no need update list, lastUpdate is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "yyyyMMdd-HH:mm:ss"

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g/b;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcn/jiguang/analytics/android/f/d;->b:J

    sget-object p1, Lcn/jiguang/analytics/android/f/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/jiguang/analytics/android/f/e;

    invoke-direct {v1, p0}, Lcn/jiguang/analytics/android/f/e;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "fetch e:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object v0

    sget-object v1, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v2, v0}, Lcn/jiguang/analytics/android/f/f;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/h;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    const v0, -0xffdffb

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_1
    sget-object v0, Lcn/jiguang/analytics/android/f/d;->a:Lcn/jiguang/analytics/android/f/f;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[0]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcn/jiguang/analytics/android/f/f;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "EventFilter"

    const-string v1, "bindViewListener e"

    invoke-static {v0, v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
