.class Lproguard/ftsafe/b/s;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/b/r;


# direct methods
.method constructor <init>(Lproguard/ftsafe/b/r;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    const-string v0, "BluetoothBondEnable"

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, ">>>> BOND_BONDED"

    invoke-static {v0, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->a(Lproguard/ftsafe/b/r;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->a(Lproguard/ftsafe/b/r;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lproguard/ftsafe/b/v;

    invoke-direct {v0, p0}, Lproguard/ftsafe/b/v;-><init>(Lproguard/ftsafe/b/s;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    const-string p1, ">>>> BOND_BONDING"

    invoke-static {v0, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lproguard/ftsafe/b/t;

    invoke-direct {v0, p0}, Lproguard/ftsafe/b/t;-><init>(Lproguard/ftsafe/b/s;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_2
    const-string p1, ">>>> BOND_NONE"

    invoke-static {v0, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->a(Lproguard/ftsafe/b/r;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->a(Lproguard/ftsafe/b/r;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lproguard/ftsafe/b/s;->a:Lproguard/ftsafe/b/r;

    invoke-static {p1}, Lproguard/ftsafe/b/r;->b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;

    move-result-object p1

    invoke-interface {p1}, Lproguard/ftsafe/b/w;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lproguard/ftsafe/b/s;->a(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BluetoothBondEnable"

    const-string p2, ">>>> receiver is null or extra is empty"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    return-void
.end method
