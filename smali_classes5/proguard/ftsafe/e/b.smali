.class public Lproguard/ftsafe/e/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/HandlerThread;

.field private g:Lproguard/ftsafe/b/a;

.field private h:Lproguard/ftsafe/b/c;

.field private i:Landroid/bluetooth/BluetoothGatt;

.field private j:Lproguard/ftsafe/c/a;

.field private k:Lproguard/ftsafe/c/d;

.field private l:Lproguard/ftsafe/c/e;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lproguard/ftsafe/e/a;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/UUID;

.field private v:Ljava/util/UUID;

.field private w:Ljava/util/UUID;

.field private final x:Landroid/bluetooth/BluetoothGattCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lproguard/ftsafe/e/b;->b:[B

    sget-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    iput-object v0, p0, Lproguard/ftsafe/e/b;->g:Lproguard/ftsafe/b/a;

    sget-object v0, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/e/b;->h:Lproguard/ftsafe/b/c;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproguard/ftsafe/e/b;->o:Z

    iput-boolean v0, p0, Lproguard/ftsafe/e/b;->p:Z

    iput-boolean v0, p0, Lproguard/ftsafe/e/b;->q:Z

    iput-boolean v0, p0, Lproguard/ftsafe/e/b;->r:Z

    new-instance v0, Lproguard/ftsafe/e/c;

    invoke-direct {v0, p0}, Lproguard/ftsafe/e/c;-><init>(Lproguard/ftsafe/e/b;)V

    iput-object v0, p0, Lproguard/ftsafe/e/b;->x:Landroid/bluetooth/BluetoothGattCallback;

    return-void

    :array_0
    .array-data 1
        0x50t
        0x3t
    .end array-data
.end method

.method static synthetic a(Lproguard/ftsafe/e/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lproguard/ftsafe/e/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/b;->t:Ljava/util/List;

    return-object p1
.end method

.method private declared-synchronized a(Lproguard/ftsafe/b/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "setConnectionState enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iput-object p1, p0, Lproguard/ftsafe/e/b;->g:Lproguard/ftsafe/b/a;

    sget-object v0, Lproguard/ftsafe/e/h;->a:[I

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
    iget-object p1, p0, Lproguard/ftsafe/e/b;->d:Landroid/os/Handler;

    new-instance v0, Lproguard/ftsafe/e/g;

    invoke-direct {v0, p0}, Lproguard/ftsafe/e/g;-><init>(Lproguard/ftsafe/e/b;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lproguard/ftsafe/e/b;->d:Landroid/os/Handler;

    new-instance v0, Lproguard/ftsafe/e/f;

    invoke-direct {v0, p0}, Lproguard/ftsafe/e/f;-><init>(Lproguard/ftsafe/e/b;)V
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

.method static synthetic a(Lproguard/ftsafe/e/b;Lproguard/ftsafe/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/b/a;)V

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "refresh"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget-object v1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method static synthetic a(Lproguard/ftsafe/e/b;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 0

    invoke-direct {p0, p1}, Lproguard/ftsafe/e/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lproguard/ftsafe/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lproguard/ftsafe/e/b;->r:Z

    return p1
.end method

.method private a(Z)Z
    .locals 9

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCharacteristicNotification enter\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Lproguard/ftsafe/e/a;->b()Ljava/util/UUID;

    move-result-object v0

    iget-object v2, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    invoke-virtual {v2}, Lproguard/ftsafe/e/a;->d()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    invoke-virtual {v3}, Lproguard/ftsafe/e/a;->e()Ljava/util/UUID;

    move-result-object v3

    iget-boolean v4, p0, Lproguard/ftsafe/e/b;->q:Z

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Lproguard/ftsafe/e/b;->u:Ljava/util/UUID;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lproguard/ftsafe/e/b;->v:Ljava/util/UUID;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lproguard/ftsafe/e/b;->w:Ljava/util/UUID;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v0, "00"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v4, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v5, "121212"

    invoke-static {v4, v5}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v4, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-nez v4, :cond_2

    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v0, "BluetoothGatt == null"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v4, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v5, "2"

    invoke-static {v4, v5}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v4, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-object v5, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v6, "3"

    invoke-static {v5, v6}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v5, v4, p1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iput-boolean v1, p0, Lproguard/ftsafe/e/b;->p:Z

    iget-object v6, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify before:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v4

    if-eqz v4, :cond_5

    sget-object v6, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v6, v4}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    :try_start_1
    iget-object v1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v4, "11"

    invoke-static {v1, v4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v1, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-object v1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v4, "22"

    invoke-static {v1, v4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v4, "33"

    invoke-static {v1, v4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-boolean v1, p0, Lproguard/ftsafe/e/b;->p:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v4, "44"

    invoke-static {v1, v4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iput-boolean p1, p0, Lproguard/ftsafe/e/b;->q:Z

    iput-object v0, p0, Lproguard/ftsafe/e/b;->u:Ljava/util/UUID;

    iput-object v2, p0, Lproguard/ftsafe/e/b;->v:Ljava/util/UUID;

    iput-object v3, p0, Lproguard/ftsafe/e/b;->w:Ljava/util/UUID;

    :cond_4
    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-boolean p1, p0, Lproguard/ftsafe/e/b;->p:Z

    monitor-exit v5

    return p1

    :cond_5
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_6
    :goto_1
    return v1
.end method

.method static synthetic b(Lproguard/ftsafe/e/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lproguard/ftsafe/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lproguard/ftsafe/e/b;->o:Z

    return p1
.end method

.method static synthetic c(Lproguard/ftsafe/e/b;)V
    .locals 0

    invoke-direct {p0}, Lproguard/ftsafe/e/b;->f()V

    return-void
.end method

.method static synthetic c(Lproguard/ftsafe/e/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lproguard/ftsafe/e/b;->p:Z

    return p1
.end method

.method static synthetic d(Lproguard/ftsafe/e/b;)Z
    .locals 0

    iget-boolean p0, p0, Lproguard/ftsafe/e/b;->r:Z

    return p0
.end method

.method static synthetic e(Lproguard/ftsafe/e/b;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    return-object p0
.end method

.method static synthetic f(Lproguard/ftsafe/e/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    return-object p0
.end method

.method private f()V
    .locals 1

    sget-object v0, Lproguard/ftsafe/b/c;->b:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/e/b;->h:Lproguard/ftsafe/b/c;

    invoke-virtual {p0}, Lproguard/ftsafe/e/b;->c()V

    return-void
.end method

.method static synthetic g(Lproguard/ftsafe/e/b;)[B
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->b:[B

    return-object p0
.end method

.method static synthetic h(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/e;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->l:Lproguard/ftsafe/c/e;

    return-object p0
.end method

.method static synthetic i(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/a;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->j:Lproguard/ftsafe/c/a;

    return-object p0
.end method

.method static synthetic j(Lproguard/ftsafe/e/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic k(Lproguard/ftsafe/e/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic l(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/b/a;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->g:Lproguard/ftsafe/b/a;

    return-object p0
.end method

.method static synthetic m(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/b/c;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->h:Lproguard/ftsafe/b/c;

    return-object p0
.end method

.method static synthetic n(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/d;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/e/b;->k:Lproguard/ftsafe/c/d;

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lproguard/ftsafe/e/b;->t:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Lproguard/ftsafe/b/d;
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_1

    sget-object p1, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object p1, Lproguard/ftsafe/b/d;->c:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_3
    iput-object p1, p0, Lproguard/ftsafe/e/b;->c:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lproguard/ftsafe/e/b;->d:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Thread handler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lproguard/ftsafe/e/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lproguard/ftsafe/e/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lproguard/ftsafe/e/b;->e:Landroid/os/Handler;

    sget-object p1, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    iput-object p1, p0, Lproguard/ftsafe/e/b;->g:Lproguard/ftsafe/b/a;

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1
.end method

.method public a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_1
    iput-object p2, p0, Lproguard/ftsafe/e/b;->k:Lproguard/ftsafe/c/d;

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-object v0, p0, Lproguard/ftsafe/e/b;->c:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lproguard/ftsafe/e/b;->x:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p2, v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    iput-object p2, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-nez p2, :cond_2

    sget-object p1, Lproguard/ftsafe/b/d;->l:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_2
    iget-object p2, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btConnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    iput-object p1, p0, Lproguard/ftsafe/e/b;->j:Lproguard/ftsafe/c/a;

    sget-object p1, Lproguard/ftsafe/b/a;->b:Lproguard/ftsafe/b/a;

    invoke-direct {p0, p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/b/a;)V

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1
.end method

.method public a([BIILproguard/ftsafe/c/e;Lproguard/ftsafe/e/a;)Lproguard/ftsafe/b/d;
    .locals 1

    iget-object p2, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v0, "sendDataRecvByCallback enter"

    invoke-static {p2, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iput-object p4, p0, Lproguard/ftsafe/e/b;->l:Lproguard/ftsafe/c/e;

    iput-object p5, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    const/4 p2, 0x1

    invoke-direct {p0, p2}, Lproguard/ftsafe/e/b;->a(Z)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string p2, "notification fail"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    sget-object p1, Lproguard/ftsafe/b/d;->i:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    iget-object p2, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string p4, "notification ok"

    invoke-static {p2, p4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    const/16 p2, 0x14

    :try_start_0
    invoke-static {p1, p2}, Lproguard/ftsafe/f/a;->b([BI)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/b;->a(Ljava/util/List;)[B

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "fido apdu: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/StrUtil;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    array-length p2, p1

    invoke-virtual {p0, p1, p2, p3}, Lproguard/ftsafe/e/b;->a([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    goto :goto_0

    :cond_1
    sget-object p1, Lproguard/ftsafe/b/d;->j:Lproguard/ftsafe/b/d;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    sget-object p1, Lproguard/ftsafe/b/d;->j:Lproguard/ftsafe/b/d;

    return-object p1
.end method

.method public a([BII)Z
    .locals 7

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "writeData enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/StrUtil;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ft_log"

    invoke-static {v1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Lproguard/ftsafe/e/a;->a()Ljava/util/UUID;

    move-result-object v0

    iget-object v2, p0, Lproguard/ftsafe/e/b;->s:Lproguard/ftsafe/e/a;

    invoke-virtual {v2}, Lproguard/ftsafe/e/a;->c()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_5

    add-int v3, v2, p3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget-object v4, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-boolean v1, p0, Lproguard/ftsafe/e/b;->o:Z

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    :try_start_1
    iget-object v2, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    iget-boolean v2, p0, Lproguard/ftsafe/e/b;->o:Z

    if-nez v2, :cond_4

    monitor-exit v4

    goto :goto_3

    :cond_4
    monitor-exit v4

    move v2, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    :goto_3
    iget-object p1, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string p2, "writeData leave"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-boolean p1, p0, Lproguard/ftsafe/e/b;->o:Z

    return p1

    :cond_6
    :goto_4
    return v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "btDisconnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    sget-object v0, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    iput-object v0, p0, Lproguard/ftsafe/e/b;->h:Lproguard/ftsafe/b/c;

    iget-boolean v0, p0, Lproguard/ftsafe/e/b;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "btDisconnect 1"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "btDisconnect 2"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "btDisconnect 3"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "btDisconnect 4"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p0}, Lproguard/ftsafe/e/b;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/e/b;->a:Ljava/lang/String;

    const-string v1, "destroyBtConnect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproguard/ftsafe/e/b;->r:Z

    iget-object v0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    iget-object v0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/e/b;->i:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    sget-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    invoke-direct {p0, v0}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/b/a;)V

    iget-object v0, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lproguard/ftsafe/e/b;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lproguard/ftsafe/e/b;->j:Lproguard/ftsafe/c/a;

    invoke-virtual {v0}, Lproguard/ftsafe/c/a;->f()V

    iget-object v1, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lproguard/ftsafe/e/b;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lproguard/ftsafe/e/b;->l:Lproguard/ftsafe/c/e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lproguard/ftsafe/e/b;->j:Lproguard/ftsafe/c/a;

    invoke-interface {v0, v1}, Lproguard/ftsafe/c/e;->a(Lproguard/ftsafe/c/a;)V

    :cond_1
    iget-object v0, p0, Lproguard/ftsafe/e/b;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/e/b;->l:Lproguard/ftsafe/c/e;

    invoke-static {}, Lproguard/ftsafe/f/a;->b()V

    return-void
.end method

.method public e()Lproguard/ftsafe/b/a;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/e/b;->g:Lproguard/ftsafe/b/a;

    return-object v0
.end method
