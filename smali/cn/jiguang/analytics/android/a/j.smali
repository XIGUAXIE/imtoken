.class public final Lcn/jiguang/analytics/android/a/j;
.super Lcn/jiguang/analytics/android/a/b;


# static fields
.field private static a:Lcn/jiguang/analytics/android/a/j;


# instance fields
.field private b:Lcn/jiguang/analytics/android/b/e;

.field private c:Lcn/jiguang/analytics/android/b/d;

.field private d:Landroid/content/Context;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/j;Lcn/jiguang/analytics/android/b/d;)Lcn/jiguang/analytics/android/b/d;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/j;->c:Lcn/jiguang/analytics/android/b/d;

    return-object p1
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/j;Ljava/lang/String;)Lcn/jiguang/analytics/android/b/d;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action - generatePageEntity pageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionManager"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    if-nez v0, :cond_0

    const-string/jumbo v0, "please check something about session..."

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/a/j;->b(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcn/jiguang/analytics/android/b/d;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/b/d;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/analytics/android/b/d;->a(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/analytics/android/b/d;->b(J)V

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/b/d;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/b/e;->b()Lcn/jiguang/analytics/android/b/d;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/b/d;->a(Lcn/jiguang/analytics/android/b/d;)V

    :cond_1
    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/b/e;->c()I

    move-result p0

    invoke-virtual {v0, p0}, Lcn/jiguang/analytics/android/b/d;->a(I)V

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/analytics/android/a/j;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static b()Lcn/jiguang/analytics/android/a/j;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/a/j;->a:Lcn/jiguang/analytics/android/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/a/j;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/a/j;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/a/j;->a:Lcn/jiguang/analytics/android/a/j;

    :cond_0
    sget-object v0, Lcn/jiguang/analytics/android/a/j;->a:Lcn/jiguang/analytics/android/a/j;

    return-object v0
.end method

.method static synthetic b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/j;->c()V

    new-instance v0, Lcn/jiguang/analytics/android/b/e;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/b/e;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastresumetime"

    invoke-virtual {v0, v3, v1, v2}, Lcn/jiguang/analytics/android/e/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p1}, Lcn/jiguang/api/JCoreInterface;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/analytics/android/e/g/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jiguang/analytics/android/b/e;->a(J)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jiguang/analytics/android/b/e;->b(J)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v1, v0}, Lcn/jiguang/analytics/android/b/e;->a(Ljava/lang/String;)V

    new-instance v0, Lcn/jiguang/analytics/android/b/c;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/b/c;-><init>()V

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/b/c;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v1, v0}, Lcn/jiguang/analytics/android/b/e;->b(Lcn/jiguang/analytics/android/b/c;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/j;->c:Lcn/jiguang/analytics/android/b/d;

    invoke-static {p1}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const-string v1, "keycursession"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcn/jiguang/analytics/android/b/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const-string v2, "keycursession"

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    check-cast v0, Lcn/jiguang/analytics/android/b/e;

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const-string v2, "keysession"

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SessionManager"

    const-string v3, "have same session..."

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/jiguang/analytics/android/b/e;->e()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const-string v2, "keysession"

    invoke-static {v0, v2, v1}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "SessionManager"

    const-string v1, "last session is null"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcn/jiguang/analytics/android/a/j;)V
    .locals 3

    const-string v0, "SessionManager"

    const-string v1, "Action - flushSessionWithResume"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastresumetime"

    invoke-virtual {p0, v2, v0, v1}, Lcn/jiguang/analytics/android/e/b/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "save cur session :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/jiguang/analytics/android/b/e;->b(J)V

    new-instance v0, Lcn/jiguang/analytics/android/b/c;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/b/c;-><init>()V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/b/c;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v1, v0}, Lcn/jiguang/analytics/android/b/e;->a(Lcn/jiguang/analytics/android/b/c;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const-string v1, "keycursession"

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {v0, v1, v2}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcn/jiguang/analytics/android/a/j;)V
    .locals 3

    const-string v0, "SessionManager"

    const-string v1, "Action - flushSessionWithPause"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastpausetime"

    invoke-virtual {p0, v2, v0, v1}, Lcn/jiguang/analytics/android/e/b/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic e(Lcn/jiguang/analytics/android/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/j;->d()V

    return-void
.end method

.method static synthetic f(Lcn/jiguang/analytics/android/a/j;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/jiguang/analytics/android/a/j;->f:Z

    return p0
.end method

.method static synthetic g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/j;->c:Lcn/jiguang/analytics/android/b/d;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "SessionManager"

    if-nez v0, :cond_0

    const-string v0, "context is null,can not load data"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v3, "keysession"

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/j;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v4, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Lcn/jiguang/analytics/android/e/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    const-string v4, "keycursession"

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v5, v3, Lcn/jiguang/analytics/android/b/e;

    if-eqz v5, :cond_1

    check-cast v3, Lcn/jiguang/analytics/android/b/e;

    iput-object v3, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    :cond_1
    iget-object v3, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/b/e;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/b/e;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_3
    iget-object v5, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/b/e;->a()Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "current session="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    if-nez v3, :cond_5

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/e;->g()V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/j;->b:Lcn/jiguang/analytics/android/b/e;

    invoke-static {v2, v4, v3}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-static {v0}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return-object v0

    :cond_6
    return-object v1
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "SessionManager"

    const-string v0, "context is null,init failed"

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/j;->d:Landroid/content/Context;

    new-instance p1, Lcn/jiguang/analytics/android/a/m;

    invoke-direct {p1, p0}, Lcn/jiguang/analytics/android/a/m;-><init>(Lcn/jiguang/analytics/android/a/j;)V

    invoke-static {p1}, Lcn/jiguang/api/JCoreInterface;->setAnalysisAction(Lcn/jiguang/api/JAnalyticsAction;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/analytics/android/a/o;->a(Lcn/jiguang/analytics/android/a/b;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/a/j;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SessionManager"

    const-string/jumbo p2, "onPageStart pageName is null"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcn/jiguang/analytics/android/a/l;

    sget v1, Lcn/jiguang/analytics/android/a/k;->c:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/jiguang/analytics/android/a/l;-><init>(Lcn/jiguang/analytics/android/a/j;ILandroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    const-string p2, "ANALYTICS"

    invoke-static {p2, v0, p1}, Lcn/jiguang/api/JCoreInterface;->execute(Ljava/lang/String;Ljava/lang/Runnable;[I)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SessionManager"

    const-string/jumbo p2, "onPageEnd pageName is null"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcn/jiguang/analytics/android/a/l;

    sget v1, Lcn/jiguang/analytics/android/a/k;->d:I

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/jiguang/analytics/android/a/l;-><init>(Lcn/jiguang/analytics/android/a/j;ILandroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [I

    const-string p2, "ANALYTICS"

    invoke-static {p2, v0, p1}, Lcn/jiguang/api/JCoreInterface;->execute(Ljava/lang/String;Ljava/lang/Runnable;[I)V

    return-void
.end method
