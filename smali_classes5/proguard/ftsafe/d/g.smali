.class Lproguard/ftsafe/d/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lproguard/ftsafe/d/a;


# direct methods
.method public constructor <init>(Lproguard/ftsafe/d/a;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    iput-object p1, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lproguard/ftsafe/d/a;->b(Lproguard/ftsafe/d/a;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lproguard/ftsafe/d/a;->b(Lproguard/ftsafe/d/a;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/d/a;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p1}, Lproguard/ftsafe/d/a;->d(Lproguard/ftsafe/d/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lproguard/ftsafe/d/a;->c(Lproguard/ftsafe/d/a;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->g(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-virtual {v0}, Lproguard/ftsafe/d/a;->a()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->g(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lproguard/ftsafe/d/f;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    sget-object v1, Lproguard/ftsafe/b/a;->a:Lproguard/ftsafe/b/a;

    invoke-static {v0, v1}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/d/a;Lproguard/ftsafe/b/a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lproguard/ftsafe/d/g;->a:Lproguard/ftsafe/d/a;

    invoke-static {v0}, Lproguard/ftsafe/d/a;->f(Lproguard/ftsafe/d/a;)V

    return-void
.end method
