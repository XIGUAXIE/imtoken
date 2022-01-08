.class public final Lcom/pingplusplus/android/PaymentActivity$e;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingplusplus/android/PaymentActivity;->a(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/pingplusplus/android/PaymentActivity$delayedShowMiddlePageView$1",
        "Ljava/lang/Thread;",
        "run",
        "",
        "pingpp-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/pingplusplus/android/PaymentActivity;

.field final synthetic b:D


# direct methods
.method constructor <init>(Lcom/pingplusplus/android/PaymentActivity;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pingplusplus/android/PaymentActivity$e;->a:Lcom/pingplusplus/android/PaymentActivity;

    iput-wide p2, p0, Lcom/pingplusplus/android/PaymentActivity$e;->b:D

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Lcom/pingplusplus/android/PaymentActivity$e;->b:D

    const/16 v2, 0x3e8

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$e;->a:Lcom/pingplusplus/android/PaymentActivity;

    new-instance v1, Lcom/pingplusplus/android/PaymentActivity$e$a;

    invoke-direct {v1, p0}, Lcom/pingplusplus/android/PaymentActivity$e$a;-><init>(Lcom/pingplusplus/android/PaymentActivity$e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pingplusplus/android/PaymentActivity$e;->a:Lcom/pingplusplus/android/PaymentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pingplusplus/android/PaymentActivity;->c(Lcom/pingplusplus/android/PaymentActivity;Z)V

    return-void
.end method
