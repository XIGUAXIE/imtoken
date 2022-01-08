.class public final Lcn/jiguang/analytics/android/e/d;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "app_ver"

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "analytics_ver"

    const-string v2, "2.1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_key"

    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pkg_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "platform"

    const-string v1, "a"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "token"

    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toAppInfoJson err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BuryProtocol"

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object v0

    new-instance v1, Lcn/jiguang/analytics/android/f/i;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;

    move-result-object v2

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcn/jiguang/analytics/android/f/i;-><init>(Landroid/view/View;Lcn/jiguang/analytics/android/f/p;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcn/jiguang/analytics/android/e/d;->a(Ljava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/m;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object p0

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object v0

    new-instance v3, Lcn/jiguang/analytics/android/f/i;

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;

    move-result-object v4

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, p0, v4, v5, v0}, Lcn/jiguang/analytics/android/f/i;-><init>(Landroid/view/View;Lcn/jiguang/analytics/android/f/p;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcn/jiguang/analytics/android/e/b;

    invoke-direct {p0, v3, v1, v2}, Lcn/jiguang/analytics/android/e/b;-><init>(Lcn/jiguang/analytics/android/f/i;Lcn/jiguang/analytics/android/f/i;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcn/jiguang/analytics/android/e/b;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "app_info"

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/d;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object p0

    :catchall_1
    move-exception p0

    const-string p1, "BuryProtocol"

    const-string/jumbo v0, "toBuryActionJson e:"

    invoke-static {p1, v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "records"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p0, "visual_track"

    invoke-static {v1, p0}, Lcn/jiguang/api/JCoreInterface;->fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toUpdateJson err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BuryProtocol"

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/jiguang/analytics/android/f/i;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcn/jiguang/analytics/android/f/p;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean v1, v0, Lcn/jiguang/analytics/android/f/p;->e:Z

    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p3, v0, Lcn/jiguang/analytics/android/f/p;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcn/jiguang/analytics/android/f/p;->b:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/m;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcn/jiguang/analytics/android/f/i;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->b(Landroid/view/View;)Lcn/jiguang/analytics/android/f/p;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcn/jiguang/analytics/android/f/i;-><init>(Landroid/view/View;Lcn/jiguang/analytics/android/f/p;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcn/jiguang/analytics/android/f/i;->g:Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    instance-of v0, p1, Landroid/webkit/WebView;

    if-nez v0, :cond_3

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0, v1, p2, p3}, Lcn/jiguang/analytics/android/e/d;->a(Ljava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
