.class final Lcom/unionpay/mobile/android/widgets/ar;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unionpay/mobile/android/widgets/ap;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/widgets/ap;I)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/widgets/ar;->b:Lcom/unionpay/mobile/android/widgets/ap;

    iput p2, p0, Lcom/unionpay/mobile/android/widgets/ar;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ar;->b:Lcom/unionpay/mobile/android/widgets/ap;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ap;->b(Lcom/unionpay/mobile/android/widgets/ap;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/unionpay/mobile/android/widgets/ar;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-gtz v5, :cond_0

    sub-long v2, v0, v2

    iget v5, p0, Lcom/unionpay/mobile/android/widgets/ar;->a:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v3, v2

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v7, 0x0

    iput v7, v2, Landroid/os/Message;->what:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/unionpay/mobile/android/widgets/ar;->b:Lcom/unionpay/mobile/android/widgets/ap;

    invoke-static {v3}, Lcom/unionpay/mobile/android/widgets/ap;->b(Lcom/unionpay/mobile/android/widgets/ap;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-static {v5, v6}, Lcom/unionpay/mobile/android/widgets/ar;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ar;->b:Lcom/unionpay/mobile/android/widgets/ap;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ap;->b(Lcom/unionpay/mobile/android/widgets/ap;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/ar;->b:Lcom/unionpay/mobile/android/widgets/ap;

    invoke-static {v0}, Lcom/unionpay/mobile/android/widgets/ap;->b(Lcom/unionpay/mobile/android/widgets/ap;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
