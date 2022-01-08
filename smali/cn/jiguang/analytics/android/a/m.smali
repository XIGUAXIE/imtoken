.class final Lcn/jiguang/analytics/android/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/api/JAnalyticsAction;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/a/j;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/a/j;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/m;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPause(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/a/o;->f()V

    return-void
.end method

.method public final dispatchResume(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/a/o;->e()V

    return-void
.end method

.method public final dispatchStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcn/jiguang/analytics/android/e/g/i;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "SessionManager"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "status name was empty"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "statusName:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "onStop"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/a/o;->e()V

    :cond_1
    return-void
.end method
