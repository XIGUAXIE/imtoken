.class public final Lproguard/ftsafe/h/a;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/g/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/bluetooth/BluetoothAdapter;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lproguard/ftsafe/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lproguard/ftsafe/g/f;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/h/a;->a:Ljava/lang/String;

    new-instance v0, Lproguard/ftsafe/h/c;

    invoke-direct {v0, p0}, Lproguard/ftsafe/h/c;-><init>(Lproguard/ftsafe/h/a;)V

    iput-object v0, p0, Lproguard/ftsafe/h/a;->h:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/h/a;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic a(Lproguard/ftsafe/h/a;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/g/f;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/h/a;->e:Lproguard/ftsafe/g/f;

    return-object p1
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/h/a;->a:Ljava/lang/String;

    const-string v1, "destroyBtScan enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/h/a;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lproguard/ftsafe/h/a;->g:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproguard/ftsafe/h/a;->f:Landroid/os/Handler;

    iget-object v2, p0, Lproguard/ftsafe/h/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lproguard/ftsafe/h/a;->g:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lproguard/ftsafe/h/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lproguard/ftsafe/h/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lproguard/ftsafe/h/a;->f:Landroid/os/Handler;

    iput-object v1, p0, Lproguard/ftsafe/h/a;->b:Landroid/content/Context;

    iput-object v1, p0, Lproguard/ftsafe/h/a;->d:Ljava/util/List;

    iput-object v1, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lproguard/ftsafe/h/a;)V
    .locals 0

    invoke-direct {p0}, Lproguard/ftsafe/h/a;->b()V

    return-void
.end method

.method static synthetic c(Lproguard/ftsafe/h/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/h/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lproguard/ftsafe/h/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/h/a;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lproguard/ftsafe/h/a;)Lproguard/ftsafe/g/f;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/h/a;->e:Lproguard/ftsafe/g/f;

    return-object p0
.end method


# virtual methods
.method public a()Lproguard/ftsafe/b/d;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/h/a;->a:Ljava/lang/String;

    const-string v1, "stopBtScan enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lproguard/ftsafe/h/a;->b()V

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    goto :goto_0

    :cond_2
    sget-object v0, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/util/List;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/b/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lproguard/ftsafe/g/b;",
            ">;",
            "Lproguard/ftsafe/g/f;",
            ")",
            "Lproguard/ftsafe/b/d;"
        }
    .end annotation

    iget-object v0, p0, Lproguard/ftsafe/h/a;->a:Ljava/lang/String;

    const-string v1, "startBtScan enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    if-eqz p1, :cond_6

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    sget-object p1, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/h/a;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p1, p0, Lproguard/ftsafe/h/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lproguard/ftsafe/h/a;->d:Ljava/util/List;

    iput-object p4, p0, Lproguard/ftsafe/h/a;->e:Lproguard/ftsafe/g/f;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lproguard/ftsafe/h/a;->f:Landroid/os/Handler;

    new-instance p1, Lproguard/ftsafe/h/b;

    invoke-direct {p1, p0}, Lproguard/ftsafe/h/b;-><init>(Lproguard/ftsafe/h/a;)V

    iput-object p1, p0, Lproguard/ftsafe/h/a;->g:Ljava/lang/Runnable;

    iget-object p1, p0, Lproguard/ftsafe/h/a;->c:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p1

    if-eqz p1, :cond_4

    if-lez p2, :cond_4

    iget-object p3, p0, Lproguard/ftsafe/h/a;->f:Landroid/os/Handler;

    iget-object p4, p0, Lproguard/ftsafe/h/a;->g:Ljava/lang/Runnable;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    if-eqz p1, :cond_5

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    goto :goto_0

    :cond_5
    sget-object p1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    :goto_0
    return-object p1

    :cond_6
    :goto_1
    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1
.end method
