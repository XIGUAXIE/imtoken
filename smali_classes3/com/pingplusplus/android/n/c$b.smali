.class public final Lcom/pingplusplus/android/n/c$b;
.super Lcom/pingplusplus/android/WebViewEx$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/n/c;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/n/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

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

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->c(Lcom/pingplusplus/android/n/c;)Landroid/widget/ProgressBar;

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

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->d(Lcom/pingplusplus/android/n/c;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->d(Lcom/pingplusplus/android/n/c;)Ljava/lang/String;

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

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->b(Lcom/pingplusplus/android/n/c;)Z

    move-result p1

    const-string p2, "success"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;Z)V

    iget-object p1, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {p1}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object p1

    iput-object p2, p1, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "http://shouyin.yeepay.com/nc-cashier-wap/wap/query/result"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    const-string v4, "success"

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {v3}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v3

    iput-object v4, v3, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;Z)V

    :cond_0
    const-string v3, "https://ok.yeepay.com/paymobile/query/pay/success?"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http://mobiletest.yeepay.com/paymobile/query/pay/success?"

    invoke-static {p2, v3, v2, v1, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/pingplusplus/android/n/c$b;->a:Lcom/pingplusplus/android/n/c;

    invoke-static {v0}, Lcom/pingplusplus/android/n/c;->a(Lcom/pingplusplus/android/n/c;)Lcom/pingplusplus/android/PaymentActivity;

    move-result-object v0

    iput-object v4, v0, Lcom/pingplusplus/android/PaymentActivity;->e:Ljava/lang/String;

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
