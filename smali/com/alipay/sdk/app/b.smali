.class public Lcom/alipay/sdk/app/b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private final c:Lcom/alipay/sdk/sys/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    .line 37
    iput-object p2, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/b;)Lcom/alipay/sdk/sys/a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 87
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/sdk/util/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "biz"

    const-string v1, "h5ldd"

    invoke-static {p1, v0, v1, p2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alipay/sdk/util/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "biz"

    const-string v3, "h5ld"

    invoke-static {v0, v2, v3, v1}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/alipay/sdk/app/b;->b:Z

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .line 50
    iget-object p1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "net"

    const-string v2, "SSLError"

    invoke-static {v0, v1, v2, p3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p3, Lcom/alipay/sdk/app/c;

    invoke-direct {p3, p0, p1, p2}, Lcom/alipay/sdk/app/c;-><init>(Lcom/alipay/sdk/app/b;Landroid/app/Activity;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/alipay/sdk/app/b;->c:Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/b;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/webkit/WebView;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
