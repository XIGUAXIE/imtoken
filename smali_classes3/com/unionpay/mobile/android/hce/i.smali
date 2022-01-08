.class final Lcom/unionpay/mobile/android/hce/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/unionpay/mobile/android/hce/f;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    iput-object p2, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/hce/i;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    const/16 v1, 0x7d6

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/unionpay/mobile/android/hce/service/a$a;->a(Landroid/os/IBinder;)Lcom/unionpay/mobile/android/hce/service/a;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->f(Lcom/unionpay/mobile/android/hce/f;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v2}, Lcom/unionpay/mobile/android/hce/f;->g(Lcom/unionpay/mobile/android/hce/f;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/unionpay/mobile/android/hce/b;

    const/16 v4, 0x7d3

    iget-object v5, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v6}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/unionpay/mobile/android/hce/b;-><init>(ILjava/lang/String;Landroid/os/Handler;)V

    invoke-interface {p2, v0, v2, v3}, Lcom/unionpay/mobile/android/hce/service/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/unionpay/mobile/android/hce/service/b;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v1}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v2}, Lcom/unionpay/mobile/android/hce/f;->e(Lcom/unionpay/mobile/android/hce/f;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/hce/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->c(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/hce/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/hce/l;

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/unionpay/mobile/android/hce/l;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/hce/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/unionpay/mobile/android/hce/l;->a(Lcom/unionpay/mobile/android/hce/service/a;)V

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/l;->d()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->c(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x7d2

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p2}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    const/16 v1, 0x7d6

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->a:Ljava/lang/String;

    const/16 v1, 0x7d5

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/i;->c:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->d(Lcom/unionpay/mobile/android/hce/f;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
