.class public Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private volatile c:Z

.field private d:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;

    invoke-direct {v0, p0}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/c;-><init>(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;)V

    iput-object v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->d:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->b:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic a(Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void
.end method

.method public b()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->c:Z

    return v0
.end method
