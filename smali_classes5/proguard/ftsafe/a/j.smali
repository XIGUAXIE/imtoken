.class Lproguard/ftsafe/a/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lproguard/ftsafe/a/i;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/i;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lproguard/ftsafe/a/i;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>> pair request receiver - order: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v2}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    const/high16 v2, -0x80000000

    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;I)I

    invoke-static {}, Lproguard/ftsafe/a/i;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pair type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v4}, Lproguard/ftsafe/a/i;->b(Lproguard/ftsafe/a/i;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v1, Lproguard/ftsafe/b/x;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v1}, Lproguard/ftsafe/a/i;->b(Lproguard/ftsafe/a/i;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v1, v0}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v1}, Lproguard/ftsafe/a/i;->b(Lproguard/ftsafe/a/i;)I

    move-result v1

    iget-object v2, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v2, v0}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lproguard/ftsafe/a/j;->abortBroadcast()V

    iget-object v0, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {v0, p1}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lproguard/ftsafe/a/k;

    invoke-direct {v1, p0, p1, p2}, Lproguard/ftsafe/a/k;-><init>(Lproguard/ftsafe/a/j;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    const/16 p2, 0xa

    if-ne v0, p2, :cond_3

    iget-object p2, p0, Lproguard/ftsafe/a/j;->a:Lproguard/ftsafe/a/i;

    invoke-static {p2, p1}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/content/Context;)V

    :cond_3
    return-void
.end method
