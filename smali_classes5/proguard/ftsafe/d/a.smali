.class public Lproguard/ftsafe/d/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/UUID;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Lproguard/ftsafe/b/a;

.field private f:Lproguard/ftsafe/b/c;

.field private g:Landroid/bluetooth/BluetoothDevice;

.field private h:Lproguard/ftsafe/c/a;

.field private i:Landroid/bluetooth/BluetoothSocket;

.field private j:Lproguard/ftsafe/d/g;

.field private k:Lproguard/ftsafe/d/f;

.field private l:Lproguard/ftsafe/c/d;

.field private m:Lproguard/ftsafe/c/e;

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->b:Ljava/util/UUID;

    sget-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    iput-object v0, p0, Lproguard/ftsafe/d/a;->e:Lproguard/ftsafe/b/a;

    sget-object v0, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/d/a;->f:Lproguard/ftsafe/b/c;

    new-instance v0, Lproguard/ftsafe/d/b;

    invoke-direct {v0, p0}, Lproguard/ftsafe/d/b;-><init>(Lproguard/ftsafe/d/a;)V

    iput-object v0, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/d/a;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/d/a;->i:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic a(Lproguard/ftsafe/d/a;Lproguard/ftsafe/b/c;)Lproguard/ftsafe/b/c;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/d/a;->f:Lproguard/ftsafe/b/c;

    return-object p1
.end method

.method static synthetic a(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/g;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;

    return-object p0
.end method

.method private declared-synchronized a(Lproguard/ftsafe/b/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v1, "setConnectionState enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iput-object p1, p0, Lproguard/ftsafe/d/a;->e:Lproguard/ftsafe/b/a;

    sget-object v0, Lproguard/ftsafe/d/e;->a:[I

    invoke-virtual {p1}, Lproguard/ftsafe/b/a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lproguard/ftsafe/d/a;->d:Landroid/os/Handler;

    new-instance v0, Lproguard/ftsafe/d/d;

    invoke-direct {v0, p0}, Lproguard/ftsafe/d/d;-><init>(Lproguard/ftsafe/d/a;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lproguard/ftsafe/d/a;->d:Landroid/os/Handler;

    new-instance v0, Lproguard/ftsafe/d/c;

    invoke-direct {v0, p0}, Lproguard/ftsafe/d/c;-><init>(Lproguard/ftsafe/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lproguard/ftsafe/d/a;Lproguard/ftsafe/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/b/a;)V

    return-void
.end method

.method static synthetic b(Lproguard/ftsafe/d/a;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->b:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic c(Lproguard/ftsafe/d/a;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic d(Lproguard/ftsafe/d/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lproguard/ftsafe/d/a;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->i:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method private e()V
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/c;->b:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/d/a;->f:Lproguard/ftsafe/b/c;

    iget-object v0, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lproguard/ftsafe/d/g;->a()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lproguard/ftsafe/d/a;)V
    .locals 0

    invoke-direct {p0}, Lproguard/ftsafe/d/a;->e()V

    return-void
.end method

.method static synthetic g(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/d/f;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;

    return-object p0
.end method

.method static synthetic h(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/e;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->m:Lproguard/ftsafe/c/e;

    return-object p0
.end method

.method static synthetic i(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/a;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->h:Lproguard/ftsafe/c/a;

    return-object p0
.end method

.method static synthetic j(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/b/a;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->e:Lproguard/ftsafe/b/a;

    return-object p0
.end method

.method static synthetic k(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/c/d;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->l:Lproguard/ftsafe/c/d;

    return-object p0
.end method

.method static synthetic l(Lproguard/ftsafe/d/a;)Lproguard/ftsafe/b/c;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/d/a;->f:Lproguard/ftsafe/b/c;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lproguard/ftsafe/b/d;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v1, "initBtConnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    if-nez p1, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_2
    iput-object p1, p0, Lproguard/ftsafe/d/a;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lproguard/ftsafe/d/a;->d:Landroid/os/Handler;

    sget-object p1, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    iput-object p1, p0, Lproguard/ftsafe/d/a;->e:Lproguard/ftsafe/b/a;

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1
.end method

.method public a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v1, "btConnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/d/a;->h:Lproguard/ftsafe/c/a;

    invoke-virtual {v0}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->g:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_1
    iput-object p2, p0, Lproguard/ftsafe/d/a;->l:Lproguard/ftsafe/c/d;

    :try_start_0
    new-instance p2, Lproguard/ftsafe/d/g;

    iget-object v0, p0, Lproguard/ftsafe/d/a;->g:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p2, p0, v0}, Lproguard/ftsafe/d/g;-><init>(Lproguard/ftsafe/d/a;Landroid/bluetooth/BluetoothDevice;)V

    iput-object p2, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lproguard/ftsafe/d/g;->start()V

    iput-object p1, p0, Lproguard/ftsafe/d/a;->h:Lproguard/ftsafe/c/a;

    sget-object p1, Lproguard/ftsafe/b/a;->b:Lproguard/ftsafe/b/a;

    invoke-direct {p0, p1}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/b/a;)V

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    sget-object p1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1
.end method

.method public a([BIILproguard/ftsafe/c/e;)Lproguard/ftsafe/b/d;
    .locals 0

    iput-object p4, p0, Lproguard/ftsafe/d/a;->m:Lproguard/ftsafe/c/e;

    iget-object p4, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;

    if-nez p4, :cond_0

    :try_start_0
    new-instance p4, Lproguard/ftsafe/d/f;

    invoke-direct {p4, p0, p3}, Lproguard/ftsafe/d/f;-><init>(Lproguard/ftsafe/d/a;I)V

    iput-object p4, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p4}, Lproguard/ftsafe/d/f;->start()V

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    sget-object p1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    :goto_0
    iget-object p3, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;

    invoke-virtual {p3}, Lproguard/ftsafe/d/f;->a()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;

    invoke-virtual {p3, p1, p2}, Lproguard/ftsafe/d/f;->a([BI)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    goto :goto_1

    :cond_2
    sget-object p1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    :goto_1
    return-object p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v1, "destroyBtConnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->k:Lproguard/ftsafe/d/f;

    iput-object v0, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;

    iget-object v1, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lproguard/ftsafe/d/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    :cond_0
    sget-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    invoke-direct {p0, v0}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/b/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/d/a;->a:Ljava/lang/String;

    const-string v1, "btDisconnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    sget-object v0, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/d/a;->f:Lproguard/ftsafe/b/c;

    iget-object v0, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/d/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->n:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/d/a;->j:Lproguard/ftsafe/d/g;

    invoke-virtual {v0}, Lproguard/ftsafe/d/g;->a()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/d/a;->m:Lproguard/ftsafe/c/e;

    return-void
.end method

.method public d()Lproguard/ftsafe/b/a;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/a;->e:Lproguard/ftsafe/b/a;

    return-object v0
.end method
