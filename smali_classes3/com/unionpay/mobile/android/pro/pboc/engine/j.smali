.class final Lcom/unionpay/mobile/android/pro/pboc/engine/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "UPCardEngine"

    const-string v2, " se_return : 8"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->f(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/d;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->f(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Lcom/unionpay/mobile/android/pboctransaction/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    const-string v4, "com.unionpay.tsmservice"

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v3}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v3}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/pboc/engine/j;->a:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/b;)Landroid/os/Handler;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
