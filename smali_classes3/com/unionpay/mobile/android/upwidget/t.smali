.class final Lcom/unionpay/mobile/android/upwidget/t;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->invalidate()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->b(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/upwidget/t;->a:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-static {p1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->c(Lcom/unionpay/mobile/android/upwidget/UPRadiationView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method
