.class final Lcom/unionpay/mobile/android/upviews/b$d;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/upviews/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upviews/b;


# direct methods
.method private constructor <init>(Lcom/unionpay/mobile/android/upviews/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unionpay/mobile/android/upviews/b;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/upviews/b$d;-><init>(Lcom/unionpay/mobile/android/upviews/b;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upviews/b;->c(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upviews/b;->c(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/upviews/b;->a(Lcom/unionpay/mobile/android/upviews/b;Ljava/util/Timer;)Ljava/util/Timer;

    new-instance p1, Lcom/unionpay/mobile/android/upviews/c;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/upviews/c;-><init>(Lcom/unionpay/mobile/android/upviews/b$d;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p2}, Lcom/unionpay/mobile/android/upviews/b;->c(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/Timer;

    move-result-object p2

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upviews/b;->d(Lcom/unionpay/mobile/android/upviews/b;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upviews/b;->e(Lcom/unionpay/mobile/android/upviews/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upviews/b;->a(Lcom/unionpay/mobile/android/upviews/b;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/unionpay/mobile/android/upviews/b$d;->a:Lcom/unionpay/mobile/android/upviews/b;

    invoke-static {p2}, Lcom/unionpay/mobile/android/upviews/b;->a(Lcom/unionpay/mobile/android/upviews/b;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v0

    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v0
.end method
