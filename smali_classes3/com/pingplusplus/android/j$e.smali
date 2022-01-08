.class public final Lcom/pingplusplus/android/j$e;
.super Lcom/pingplusplus/android/WebViewEx$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/j$e;->a:Lcom/pingplusplus/android/j;

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

    iget-object p1, p0, Lcom/pingplusplus/android/j$e;->a:Lcom/pingplusplus/android/j;

    invoke-virtual {p1}, Lcom/pingplusplus/android/j;->c()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "description"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failingUrl"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/pingplusplus/android/j$e;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string p2, "fail"

    invoke-virtual {p1, p2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    return-void
.end method
