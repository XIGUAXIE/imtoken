.class public final Lcn/jiguang/analytics/android/e/g/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/jiguang/analytics/android/e/a;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/a;->f(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/e/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/e/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/jiguang/analytics/android/e/a;->e(Landroid/app/Activity;)V

    return-void
.end method
