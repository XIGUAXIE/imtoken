.class public final Lcom/pingplusplus/android/n/a$a;
.super Lcom/pingplusplus/android/WebViewEx$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/n/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/n/a;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/n/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file:///android_asset/pingpp_web.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v1}, Lcom/pingplusplus/android/n/a;->g(Lcom/pingplusplus/android/n/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0, v2}, Lcom/pingplusplus/android/n/a;->a(Lcom/pingplusplus/android/n/a;Z)V

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->f(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v1}, Lcom/pingplusplus/android/n/a;->e(Lcom/pingplusplus/android/n/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v1}, Lcom/pingplusplus/android/n/a;->g(Lcom/pingplusplus/android/n/a;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v1}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->d(Lcom/pingplusplus/android/n/a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v3, "#PayResult"

    invoke-static {p2, v3, v2, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;Z)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1}, Lcom/pingplusplus/android/n/a;->a(Lcom/pingplusplus/android/n/a;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1}, Lcom/pingplusplus/android/n/a;->a(Lcom/pingplusplus/android/n/a;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, p3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1}, Lcom/pingplusplus/android/n/a;->c(Lcom/pingplusplus/android/n/a;)Z

    move-result p1

    const-string p2, "success"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    iput-object p2, p1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "https://www.baifubao.com/wap/0/wallet/0/transaction/0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    const-string v1, "success"

    iput-object v1, v0, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "https://m.baifubao.com/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v0}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {v1}, Lcom/pingplusplus/android/n/a;->b(Lcom/pingplusplus/android/n/a;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "http://wappass.baidu.com/passport/reg?"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "http://wappass.baidu.com/passport/getpass?"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "http://wappass.baidu.com/passport/agreement?"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/pingplusplus/android/n/a$a;->a:Lcom/pingplusplus/android/n/a;

    invoke-static {p1, p2}, Lcom/pingplusplus/android/n/a;->a(Lcom/pingplusplus/android/n/a;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
