.class final Lcom/unionpay/mobile/android/pro/views/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/unionpay/mobile/android/pro/views/k;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/s;->c:Lcom/unionpay/mobile/android/pro/views/k;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/s;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pro/views/s;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/s;->c:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/s;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/k;->v(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/s;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/s;->c:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/k;->w(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/s;->c:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/views/k;->w(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
