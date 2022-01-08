.class Lcom/alipay/sdk/widget/s;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/p;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .line 210
    iget-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {p1}, Lcom/alipay/sdk/widget/p;->e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/sdk/widget/p$a;->a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/4 p1, 0x4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 199
    iget-object p2, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {p2}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {v0}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {p1}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {p1}, Lcom/alipay/sdk/widget/p;->d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-static {p1}, Lcom/alipay/sdk/widget/p;->e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/sdk/widget/s;->a:Lcom/alipay/sdk/widget/p;

    invoke-interface {p1, v0, p2}, Lcom/alipay/sdk/widget/p$a;->a(Lcom/alipay/sdk/widget/p;Ljava/lang/String;)V

    return-void
.end method
