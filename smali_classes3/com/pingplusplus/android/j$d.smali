.class public final Lcom/pingplusplus/android/j$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/j;


# direct methods
.method public constructor <init>(Lcom/pingplusplus/android/j;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "mContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final paymentResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "unknown_error"

    const-string v1, "fail"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "success"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "unknown_error"

    const-string v1, "fail"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "success"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final testmodeResult(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "unknown_error"

    const-string v1, "fail"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6f4abffd

    if-eq v2, v3, :cond_4

    const v3, -0x5185d186

    if-eq v2, v3, :cond_3

    const v3, 0x2fd71e

    if-eq v2, v3, :cond_2

    const v3, 0x5c4d208

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "testmode_notify_failed"

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "channel_returns_fail"

    goto :goto_1

    :cond_3
    const-string v2, "cancel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    const-string v0, "user_cancelled"

    invoke-virtual {p1, v2, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v2, "success"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    invoke-virtual {p1, v2}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/pingplusplus/android/j$d;->a:Lcom/pingplusplus/android/j;

    iget-object p1, p1, Lcom/pingplusplus/android/j;->b:Lcom/pingplusplus/android/PaymentActivity;

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/pingplusplus/android/PaymentActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
