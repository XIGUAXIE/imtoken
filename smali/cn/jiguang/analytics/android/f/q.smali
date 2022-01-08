.class public final Lcn/jiguang/analytics/android/f/q;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/String; = "SDK is uninitialized"

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/f/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SDK init failed\uff0cplease check integration guide"

    :goto_0
    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/f/q;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-boolean v0, Lcn/jiguang/analytics/android/f/q;->a:Z

    if-nez v0, :cond_1

    sget-object p1, Lcn/jiguang/analytics/android/f/q;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_2

    const-string/jumbo p1, "to open circle, Android API should be above 17"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p1, "token is invalid\uff0cplease try again"

    goto :goto_0

    :cond_3
    sput-object v0, Lcn/jiguang/analytics/android/f/q;->c:Ljava/lang/String;

    const-string/jumbo v0, "signature"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "illegal argument signature"

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timestamp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&appKey="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&jiguang"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "signature="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " md5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VisualTrackInterface_xxx"

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "illegal request"

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "VisualTrackInterface_xxx"

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcn/jiguang/analytics/android/f/q;->a:Z

    return v0
.end method

.method public static c()V
    .locals 5

    const-string v0, "VisualTrackInterface_xxx"

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;

    const-string v3, "PLUGIN_VER"

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/e/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string v2, "get Field PLUGIN_VER failed"

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    :goto_0
    :try_start_1
    const-class v3, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;

    const-string v4, "AOP_BIND_VER"

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/e/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const-string v3, "get Field AOP_BIND_VER failed"

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x0

    if-nez v1, :cond_0

    sput-boolean v3, Lcn/jiguang/analytics/android/f/q;->a:Z

    const-string v1, "janalytics-gradle-plugin does NOT work, please check integration guide"

    sput-object v1, Lcn/jiguang/analytics/android/f/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-boolean v3, Lcn/jiguang/analytics/android/f/q;->a:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "janalytics-gradle-plugin("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") does NOT support this janalytics-SDK(3"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), please check janalytics-gradle-plugin version"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/jiguang/analytics/android/f/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcn/jiguang/analytics/android/f/q;->a:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "VisualTrack init done... plugin ver"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bind ver"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
