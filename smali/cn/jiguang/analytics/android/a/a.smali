.class public final Lcn/jiguang/analytics/android/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 p0, 0x3ed

    const-string v0, "failed, please call JAnalyticsInterface.init(context) first"

    :goto_0
    invoke-static {p1, p0, v0}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/AccountCallback;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/api/Account;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x3e9

    const-string v0, "account_id can not be empty"

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v1}, Lcn/jiguang/analytics/android/api/Account;->fillJson(Lorg/json/JSONObject;)Lcn/jiguang/analytics/android/e/d/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/e/d/b;->a()I

    move-result p0

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/e/d/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/g/j;->a(J)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 p0, 0x3eb

    const-string/jumbo v0, "operation is too busy, please try it later"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/api/Account;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/api/JCoreInterface;->setAccountId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/api/Account;->getAccountId()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "identify_account"

    invoke-static {v1, p0}, Lcn/jiguang/api/JCoreInterface;->fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcn/jiguang/api/JCoreInterface;->report(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    const/4 p0, 0x0

    const-string v0, "identify account succeed"

    goto :goto_0
.end method

.method public static a(Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x3ed

    const-string v1, "failed, please call JAnalyticsInterface.init(context) first"

    :goto_0
    invoke-static {p0, v0, v1}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/AccountCallback;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcn/jiguang/api/JCoreInterface;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x3ea

    const-string v1, "detach failed because account_id is empty"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/g/j;->a(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x3eb

    const-string/jumbo v1, "operation is too busy, please try it later"

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "detach_account"

    invoke-static {v1, v2}, Lcn/jiguang/api/JCoreInterface;->fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/JCoreInterface;->report(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/a/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/api/JCoreInterface;->setAccountId(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "detach account succeed"

    goto :goto_0
.end method

.method private static a(Lcn/jiguang/analytics/android/api/AccountCallback;ILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "JAnalyticsInterface"

    if-nez p1, :cond_0

    invoke-static {v0, p2}, Lcn/jiguang/analytics/android/e/a/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p0, p1, p2}, Lcn/jiguang/analytics/android/api/AccountCallback;->callback(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
