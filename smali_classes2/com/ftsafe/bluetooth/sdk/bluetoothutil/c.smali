.class Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;->a:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;->a:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;

    const/4 p2, 0x1

    goto :goto_1

    :goto_0
    :pswitch_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;->a:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;

    :goto_1
    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;Z)Z

    iget-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;->a:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
