.class final Lcom/unionpay/mobile/android/upwidget/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->getScrollY()I

    move-result p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->b(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView;I)I

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->a(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/upwidget/v;->a:Lcom/unionpay/mobile/android/upwidget/UPScrollView;

    invoke-static {v0}, Lcom/unionpay/mobile/android/upwidget/UPScrollView;->c(Lcom/unionpay/mobile/android/upwidget/UPScrollView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;

    invoke-interface {v0, p1}, Lcom/unionpay/mobile/android/upwidget/UPScrollView$a;->e(I)V

    :cond_1
    return-void
.end method
