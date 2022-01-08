.class final Lcn/jiguang/analytics/android/a/p;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/a/o;


# direct methods
.method public constructor <init>(Lcn/jiguang/analytics/android/a/o;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/p;->a:Lcn/jiguang/analytics/android/a/o;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/jiguang/analytics/android/a/p;->a:Lcn/jiguang/analytics/android/a/o;

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/o;->b(Lcn/jiguang/analytics/android/a/o;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/a/p;->a:Lcn/jiguang/analytics/android/a/o;

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/o;->a(Lcn/jiguang/analytics/android/a/o;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcn/jiguang/analytics/android/a/p;->a:Lcn/jiguang/analytics/android/a/o;

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/o;->a(Lcn/jiguang/analytics/android/a/o;)V

    return-void
.end method
