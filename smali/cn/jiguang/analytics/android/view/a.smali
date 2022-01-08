.class final Lcn/jiguang/analytics/android/view/a;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/view/BuryWebActivity;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/view/BuryWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    new-instance p2, Lcn/jiguang/analytics/android/view/b;

    invoke-direct {p2, p0}, Lcn/jiguang/analytics/android/view/b;-><init>(Lcn/jiguang/analytics/android/view/a;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/a;->a:Lcn/jiguang/analytics/android/view/BuryWebActivity;

    invoke-static {p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
