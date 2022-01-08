.class public final Lcn/jiguang/analytics/android/api/JAnalyticsInterface;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "JAnalyticsInterface"

.field private static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v0}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcn/jiguang/analytics/android/c;

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->initAction(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detachAccount(Landroid/content/Context;Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public static detachAccount(Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public static identifyAccount(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public static identifyAccount(Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/a/a;->a(Lcn/jiguang/analytics/android/api/Account;Lcn/jiguang/analytics/android/api/AccountCallback;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "JAnalyticsInterface"

    if-nez p0, :cond_1

    const-string p0, "context is null"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "JAnalyticsInterface init...version:2.1.0 ,buildId:50"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1002

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/jiguang/api/JCoreInterface;->si(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {p0}, Lcn/jiguang/analytics/android/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "JAnalytics init succeed"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "JAnalytics init failed"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initCrashHandler(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->initCrashHandler(Landroid/content/Context;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Event;)V
    .locals 2

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    const-string v0, "JAnalyticsInterface"

    if-nez p1, :cond_0

    const-string p0, " NULL Event"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcn/jiguang/analytics/android/api/Event;->checkEvent()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "invalide Event :"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/api/Event;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcn/jiguang/analytics/android/a/d;->b()Lcn/jiguang/analytics/android/a/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/a/d;->a(Landroid/content/Context;Lcn/jiguang/analytics/android/api/Event;)V

    return-void
.end method

.method public static onPageEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/j;->b()Lcn/jiguang/analytics/android/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/a/j;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static onPageStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/j;->b()Lcn/jiguang/analytics/android/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/analytics/android/a/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static requestPermission(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->requestPermission(Landroid/content/Context;)V

    return-void
.end method

.method public static setAnalyticsReportPeriod(I)V
    .locals 1

    const/16 v0, 0x1111

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/a/g;->a(II)V

    return-void
.end method

.method public static setAnalyticsReportPeriod(Landroid/content/Context;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcn/jiguang/analytics/android/api/JAnalyticsInterface;->init(Landroid/content/Context;)V

    :cond_0
    const/16 p0, 0x1111

    invoke-static {p0, p1}, Lcn/jiguang/analytics/android/a/g;->a(II)V

    return-void
.end method

.method public static setChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x1000

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/JCoreInterface;->si(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->setDebugMode(Z)V

    sput-boolean p0, Lcn/jiguang/analytics/android/d;->a:Z

    return-void
.end method

.method public static stopCrashHandler(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/jiguang/api/JCoreInterface;->stopCrashHandler(Landroid/content/Context;)V

    return-void
.end method
