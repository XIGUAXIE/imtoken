.class final Lcom/unionpay/mobile/android/pro/pboc/engine/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "UPCardEngine"

    const-string v2, " ic_return : 4"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->e(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/i;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
