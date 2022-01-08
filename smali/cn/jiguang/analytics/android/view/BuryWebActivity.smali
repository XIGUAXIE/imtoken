.class public Lcn/jiguang/analytics/android/view/BuryWebActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->b:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static a(Landroid/view/View;)V
    .locals 5

    const-string v0, "BuryWebActivity_xxx"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bury action view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/m;->d(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bury action activityView = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/e/a;->c()Landroid/app/Activity;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string p0, "bury action activity = null ,return"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Lcn/jiguang/analytics/android/view/n;->a(Z)V

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->d()V

    const-string v2, "https://localhost/img"

    invoke-static {p0, v2}, Lcn/jiguang/analytics/android/e/d;->a(Landroid/view/View;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bury action json = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/jiguang/analytics/android/d/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bury action json.toString = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcn/jiguang/analytics/android/view/e;

    invoke-direct {v3, v1, v2}, Lcn/jiguang/analytics/android/view/e;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic c(Lcn/jiguang/analytics/android/view/BuryWebActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "BuryWebActivity_xxx"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcn/jiguang/analytics/android/view/n;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ProgressBar;

    const v4, 0x1010078

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->b:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v6, "#1b75bb"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v6, 0x3

    invoke-direct {v2, v4, v6, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iget-object v4, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {p0, v4}, Lcn/jiguang/analytics/android/e/m;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v1, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v3, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v5}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->setContentView(Landroid/view/View;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/n;->a(Landroid/webkit/WebView;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcn/jiguang/analytics/android/view/a;

    invoke-direct {v1, p0}, Lcn/jiguang/analytics/android/view/a;-><init>(Lcn/jiguang/analytics/android/view/BuryWebActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcn/jiguang/analytics/android/view/c;

    invoke-direct {v1, p0}, Lcn/jiguang/analytics/android/view/c;-><init>(Lcn/jiguang/analytics/android/view/BuryWebActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    const-string v1, "buryInterface"

    new-instance v2, Lcn/jiguang/analytics/android/view/d;

    iget-object v3, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-direct {v2, p0, v3}, Lcn/jiguang/analytics/android/view/d;-><init>(Lcn/jiguang/analytics/android/view/BuryWebActivity;Landroid/webkit/WebView;)V

    invoke-static {p1, v1, v2}, Lcn/jiguang/analytics/android/e/n;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->c:Ljava/lang/String;

    const-string p1, "go_2_bury"

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcn/jiguang/analytics/android/view/BuryWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Visual Track"

    const-string/jumbo v1, "please scan QRCode then circle a view to enter this page"

    invoke-static {p1, v1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/view/BuryWebActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 6

    const-string v0, "UiTraverse"

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    invoke-static {}, Lcn/jiguang/analytics/android/e/a;->a()Lcn/jiguang/analytics/android/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/e/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/analytics/android/view/n;->a(Z)V

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Lcn/jiguang/analytics/android/view/n;->a(Landroid/content/Context;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcn/jiguang/analytics/android/e/g/h;->d()[Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "windowViews:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "windowView:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-void

    :catchall_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onStop e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BuryWebActivity_xxx"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
