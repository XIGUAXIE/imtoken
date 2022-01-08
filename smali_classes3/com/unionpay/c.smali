.class final Lcom/unionpay/c;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/unionpay/a/c;

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->l()Lcom/unionpay/a/d;

    move-result-object v2

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->c()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/unionpay/a/c;-><init>(Lcom/unionpay/a/d;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/unionpay/a/c;->a()I

    invoke-virtual {v0}, Lcom/unionpay/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x3ea

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/unionpay/UPPayAssistEx;->k()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
