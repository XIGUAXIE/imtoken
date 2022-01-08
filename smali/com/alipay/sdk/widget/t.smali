.class Lcom/alipay/sdk/widget/t;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/p$b;->c(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/sdk/widget/p$b;->a(Lcom/alipay/sdk/widget/p;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/sdk/widget/p$b;->a(Lcom/alipay/sdk/widget/p;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/t;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {v0, v1, p2}, Lcom/alipay/sdk/widget/p$b;->b(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
