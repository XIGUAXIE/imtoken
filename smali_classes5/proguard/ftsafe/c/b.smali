.class public Lproguard/ftsafe/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Landroid/bluetooth/BluetoothDevice;

.field private d:Lproguard/ftsafe/c/c;

.field private volatile e:Ljava/util/concurrent/CountDownLatch;

.field private volatile f:Z


# direct methods
.method static synthetic a(Lproguard/ftsafe/c/b;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/c/b;->c:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic a(Lproguard/ftsafe/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lproguard/ftsafe/c/b;->f:Z

    return p1
.end method

.method static synthetic b(Lproguard/ftsafe/c/b;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/c/b;->e:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/c/b;->e:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/c/b;->e:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/c/b;->d:Lproguard/ftsafe/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/c/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/c/b;->d:Lproguard/ftsafe/c/c;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/c/b;->d:Lproguard/ftsafe/c/c;

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/c/b;->c:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :try_start_0
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    const-string v1, "cancelBondProcess"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/c/b;->c:Landroid/bluetooth/BluetoothDevice;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lproguard/ftsafe/c/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lproguard/ftsafe/c/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
