.class Lproguard/ftsafe/c/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/c/b;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lproguard/ftsafe/c/c;->a:Lproguard/ftsafe/c/b;

    invoke-static {v0}, Lproguard/ftsafe/c/b;->a(Lproguard/ftsafe/c/b;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, -0x1

    const-string v0, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object p1, p0, Lproguard/ftsafe/c/c;->a:Lproguard/ftsafe/c/b;

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lproguard/ftsafe/c/c;->a:Lproguard/ftsafe/c/b;

    const/4 p2, 0x1

    :goto_1
    invoke-static {p1, p2}, Lproguard/ftsafe/c/b;->a(Lproguard/ftsafe/c/b;Z)Z

    iget-object p1, p0, Lproguard/ftsafe/c/c;->a:Lproguard/ftsafe/c/b;

    invoke-static {p1}, Lproguard/ftsafe/c/b;->b(Lproguard/ftsafe/c/b;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    :pswitch_1
    const/16 p1, 0xb

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
