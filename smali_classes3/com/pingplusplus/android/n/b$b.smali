.class public final Lcom/pingplusplus/android/n/b$b;
.super Lcom/pingplusplus/android/WebViewEx$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/n/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/n/b;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/n/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-direct {p0}, Lcom/pingplusplus/android/WebViewEx$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/pingplusplus/android/WebViewEx$c;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->f(Lcom/pingplusplus/android/n/b;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/pingplusplus/android/WebViewEx$c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->b(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->b(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;

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

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->e(Lcom/pingplusplus/android/n/b;)Z

    move-result p1

    const-string p2, "success"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->d(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->d(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    iput-object p2, p1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/pingplusplus/android/n/b;->b(Lcom/pingplusplus/android/n/b;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {v0}, Lcom/pingplusplus/android/n/b;->b(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->d(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    const-string p2, "success"

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->g(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1, v3}, Lcom/pingplusplus/android/n/b;->a(Lcom/pingplusplus/android/n/b;Lcom/pingplusplus/android/WebViewEx;)V

    const-string p1, "jdPay success"

    :goto_0
    invoke-static {p1}, Lcom/pingplusplus/android/PingppLog;->d(Ljava/lang/String;)V

    return v4

    :cond_2
    iget-object v0, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {v0}, Lcom/pingplusplus/android/n/b;->a(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->d(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    const-string p2, "fail"

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1}, Lcom/pingplusplus/android/n/b;->g(Lcom/pingplusplus/android/n/b;)Lcom/pingplusplus/android/WebViewEx;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    iget-object p1, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {p1, v3}, Lcom/pingplusplus/android/n/b;->a(Lcom/pingplusplus/android/n/b;Lcom/pingplusplus/android/WebViewEx;)V

    const-string p1, "jdPay fail"

    goto :goto_0

    :cond_4
    const-string v0, "https://www.jdpay.com/"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {v0, p2}, Lcom/pingplusplus/android/n/b;->a(Lcom/pingplusplus/android/n/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {v0}, Lcom/pingplusplus/android/n/b;->c(Lcom/pingplusplus/android/n/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v2, v1, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/pingplusplus/android/n/b$b;->a:Lcom/pingplusplus/android/n/b;

    invoke-static {v0, v2}, Lcom/pingplusplus/android/n/b;->a(Lcom/pingplusplus/android/n/b;Z)V

    :cond_6
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
