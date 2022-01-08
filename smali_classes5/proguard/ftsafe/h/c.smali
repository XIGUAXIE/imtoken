.class Lproguard/ftsafe/h/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/h/a;


# direct methods
.method constructor <init>(Lproguard/ftsafe/h/a;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->c(Lproguard/ftsafe/h/a;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ACTION_FOUND enter"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result p2

    if-eqz p1, :cond_6

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {v1}, Lproguard/ftsafe/h/a;->d(Lproguard/ftsafe/h/a;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {v1}, Lproguard/ftsafe/h/a;->d(Lproguard/ftsafe/h/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {v1}, Lproguard/ftsafe/h/a;->d(Lproguard/ftsafe/h/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproguard/ftsafe/g/b;

    invoke-virtual {v2}, Lproguard/ftsafe/g/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lproguard/ftsafe/g/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lproguard/ftsafe/g/b;->f()I

    move-result v5

    invoke-virtual {v2}, Lproguard/ftsafe/g/b;->g()I

    move-result v2

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-gt p2, v5, :cond_1

    if-ge p2, v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lproguard/ftsafe/d/j;

    invoke-direct {v0, p1}, Lproguard/ftsafe/d/j;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    invoke-virtual {v0, p1}, Lproguard/ftsafe/d/j;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/d/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/d/j;->a(I)Lproguard/ftsafe/d/j;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/d/j;->a()Lproguard/ftsafe/d/h;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p2}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p2

    if-eqz p2, :cond_9

    :goto_1
    iget-object p2, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p2}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p2

    invoke-interface {p2, p1}, Lproguard/ftsafe/g/f;->a(Lproguard/ftsafe/c/a;)V

    goto :goto_3

    :cond_5
    new-instance v0, Lproguard/ftsafe/d/j;

    invoke-direct {v0, p1}, Lproguard/ftsafe/d/j;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    invoke-virtual {v0, p1}, Lproguard/ftsafe/d/j;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/d/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/d/j;->a(I)Lproguard/ftsafe/d/j;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/d/j;->a()Lproguard/ftsafe/d/h;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p2}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p2

    if-eqz p2, :cond_9

    goto :goto_1

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p1

    invoke-interface {p1}, Lproguard/ftsafe/g/f;->a()V

    goto :goto_3

    :cond_8
    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->b(Lproguard/ftsafe/h/a;)V

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    invoke-static {p1}, Lproguard/ftsafe/h/a;->e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;

    move-result-object p1

    invoke-interface {p1}, Lproguard/ftsafe/g/f;->b()V

    iget-object p1, p0, Lproguard/ftsafe/h/c;->a:Lproguard/ftsafe/h/a;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lproguard/ftsafe/h/a;->a(Lproguard/ftsafe/h/a;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/g/f;

    :cond_9
    :goto_3
    return-void
.end method
