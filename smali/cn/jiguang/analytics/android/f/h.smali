.class final Lcn/jiguang/analytics/android/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/jiguang/analytics/android/f/g;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/f/g;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/f/h;->b:Lcn/jiguang/analytics/android/f/g;

    iput-object p2, p0, Lcn/jiguang/analytics/android/f/h;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/f/h;->a:Landroid/view/View;

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindListener e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterList"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
