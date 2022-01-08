.class final Lcn/jiguang/analytics/android/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/a;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/view/a;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/b;->a:Lcn/jiguang/analytics/android/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/b;->a:Lcn/jiguang/analytics/android/view/a;

    iget-object v0, v0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {v0}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
