.class public Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;
.super Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;
.source "DAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DAppWebViewClient"
.end annotation


# instance fields
.field private isInjected:Z

.field private final jsInjectorClient:Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

.field private final lock:Ljava/lang/Object;

.field final synthetic this$0:Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;

.field private final urlHandlerManager:Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;


# direct methods
.method public constructor <init>(Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->this$0:Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser;

    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;-><init>()V

    .line 107
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->lock:Ljava/lang/Object;

    .line 115
    iput-object p2, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->jsInjectorClient:Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

    .line 116
    iput-object p3, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->urlHandlerManager:Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;

    return-void
.end method

.method private shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;ZZ)Z
    .locals 5

    .line 217
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 218
    :try_start_0
    iput-boolean v1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->isInjected:Z

    .line 219
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->urlHandlerManager:Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;

    invoke-virtual {v0, p2}, Lorg/consenlabs/imtoken/dappbrowser/UrlHandlerManager;->handle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alipay"

    .line 221
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string v2, "wechat"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "weixin"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "bilibili"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "http"

    .line 223
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v1, 0x1

    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    move-object v0, p2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 233
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 235
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/consenlabs/imtoken/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 243
    :cond_4
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :catch_0
    :cond_5
    :goto_3
    return v3

    :catchall_0
    move-exception p1

    .line 219
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public bridge synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3, p4}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public bridge synthetic onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onReload()V
    .locals 2

    .line 210
    iget-object v0, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 211
    :try_start_0
    iput-boolean v1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->isInjected:Z

    .line 212
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setIgnoreErrFailedForThisURL(Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->setIgnoreErrFailedForThisURL(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->setProgressChangedFilter(Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebView$ProgressChangedFilter;)V

    return-void
.end method

.method public bridge synthetic setUrlPrefixesForDefaultIntent(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->setUrlPrefixesForDefaultIntent(Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 141
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p2

    .line 145
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 146
    new-array v1, v1, [B

    .line 147
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    iget-object p2, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->jsInjectorClient:Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v2}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->injectJS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 152
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebResourceResponse;->setData(Ljava/io/InputStream;)V

    return-object p1

    .line 149
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Nothing is read."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "INJECT AFTER_EXTERNAL"

    const-string v1, ""

    .line 155
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    return-object v0

    .line 163
    :cond_2
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".pdf"

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object v0

    .line 172
    :cond_5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    if-nez v1, :cond_7

    .line 175
    :cond_6
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ".html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 183
    :cond_7
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 187
    :cond_8
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object p2

    .line 190
    :try_start_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->jsInjectorClient:Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorClient;->loadUrl(Ljava/lang/String;Ljava/util/Map;)Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p1, :cond_a

    .line 194
    iget-object p2, p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->data:Ljava/lang/String;

    if-eqz p2, :cond_a

    iget-boolean p2, p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->isRedirect:Z

    if-eqz p2, :cond_9

    goto :goto_2

    .line 197
    :cond_9
    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object v0, p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 198
    new-instance v0, Landroid/webkit/WebResourceResponse;

    iget-object v1, p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->mime:Ljava/lang/String;

    iget-object p1, p1, Lorg/consenlabs/imtoken/dappbrowser/JsInjectorResponse;->charset:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 200
    iget-object p1, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_2
    iput-boolean v2, p0, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->isInjected:Z

    .line 202
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :catch_1
    :cond_a
    :goto_2
    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v2

    .line 133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 134
    :cond_1
    invoke-direct {p0, p1, v1, v2, v0}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 121
    invoke-super {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewManager$RNCWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, v1, v1}, Lorg/consenlabs/imtoken/dappbrowser/DAppBrowser$DAppWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
