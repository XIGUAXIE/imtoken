.class public final Lcn/jiguang/analytics/android/f/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn/jiguang/analytics/android/e/f/c;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/f/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/m;->c(Landroid/content/Context;)V

    sget-object v1, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, v0}, Lcn/jiguang/analytics/android/e/f/c;->a(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/m;->c(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/m;->c(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save key:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  , jsonStr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordSp"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/e/f/c;->b(Ljava/lang/String;Ljava/io/Serializable;)Z

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/analytics/android/f/m;->c(Landroid/content/Context;)V

    sget-object p0, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/f/c;->b()Z

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/f/m;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

    if-nez v1, :cond_0

    const-string/jumbo v1, "record"

    invoke-static {p0, v1}, Lcn/jiguang/analytics/android/e/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcn/jiguang/analytics/android/e/f/c;

    move-result-object p0

    sput-object p0, Lcn/jiguang/analytics/android/f/m;->a:Lcn/jiguang/analytics/android/e/f/c;

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
