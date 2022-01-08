.class public final Lproguard/ftsafe/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/g/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Landroid/os/Handler;

.field private d:Landroid/bluetooth/BluetoothAdapter;

.field private e:Landroid/bluetooth/le/ScanCallback;

.field private f:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lproguard/ftsafe/g/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lproguard/ftsafe/g/f;

.field private i:Z

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/i/b;->a:Ljava/lang/String;

    const/16 v0, 0x96e

    iput v0, p0, Lproguard/ftsafe/i/b;->b:I

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/i/b;)V
    .locals 0

    invoke-direct {p0}, Lproguard/ftsafe/i/b;->b()V

    return-void
.end method

.method static synthetic b(Lproguard/ftsafe/i/b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/i/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    iget-object v1, p0, Lproguard/ftsafe/i/b;->e:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    iput-object v2, p0, Lproguard/ftsafe/i/b;->e:Landroid/bluetooth/le/ScanCallback;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lproguard/ftsafe/i/b;->f:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    iput-object v2, p0, Lproguard/ftsafe/i/b;->f:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lproguard/ftsafe/i/b;->i:Z

    iput-object v2, p0, Lproguard/ftsafe/i/b;->g:Ljava/util/List;

    iput-object v2, p0, Lproguard/ftsafe/i/b;->c:Landroid/os/Handler;

    iput-object v2, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lproguard/ftsafe/i/b;->h:Lproguard/ftsafe/g/f;

    invoke-interface {v0}, Lproguard/ftsafe/g/f;->b()V

    iput-object v2, p0, Lproguard/ftsafe/i/b;->h:Lproguard/ftsafe/g/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lproguard/ftsafe/i/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/i/b;->g:Ljava/util/List;

    return-object p0
.end method

.method private c()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lproguard/ftsafe/i/d;

    invoke-direct {v0, p0}, Lproguard/ftsafe/i/d;-><init>(Lproguard/ftsafe/i/b;)V

    iput-object v0, p0, Lproguard/ftsafe/i/b;->e:Landroid/bluetooth/le/ScanCallback;

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    new-instance v0, Lproguard/ftsafe/i/g;

    invoke-direct {v0, p0}, Lproguard/ftsafe/i/g;-><init>(Lproguard/ftsafe/i/b;)V

    iput-object v0, p0, Lproguard/ftsafe/i/b;->f:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/i/b;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lproguard/ftsafe/i/b;)Lproguard/ftsafe/g/f;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/i/b;->h:Lproguard/ftsafe/g/f;

    return-object p0
.end method


# virtual methods
.method public a()Lproguard/ftsafe/b/d;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/i/b;->a:Ljava/lang/String;

    const-string v1, "stopBtScan enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-boolean v0, p0, Lproguard/ftsafe/i/b;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object v0

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/i/b;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lproguard/ftsafe/i/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/i/b;->j:Ljava/lang/Runnable;

    :cond_1
    invoke-direct {p0}, Lproguard/ftsafe/i/b;->b()V

    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/util/List;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/b/d;
    .locals 2
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

    iget-boolean v0, p0, Lproguard/ftsafe/i/b;->i:Z

    if-eqz v0, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    if-eqz p1, :cond_9

    if-nez p4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p1, Lproguard/ftsafe/b/d;->c:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_3
    iget-object v0, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object p1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_4
    invoke-direct {p0}, Lproguard/ftsafe/i/b;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproguard/ftsafe/i/b;->i:Z

    iput-object p3, p0, Lproguard/ftsafe/i/b;->g:Ljava/util/List;

    iput-object p4, p0, Lproguard/ftsafe/i/b;->h:Lproguard/ftsafe/g/f;

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lproguard/ftsafe/i/b;->c:Landroid/os/Handler;

    new-instance p1, Lproguard/ftsafe/i/c;

    invoke-direct {p1, p0}, Lproguard/ftsafe/i/c;-><init>(Lproguard/ftsafe/i/b;)V

    iput-object p1, p0, Lproguard/ftsafe/i/b;->j:Ljava/lang/Runnable;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p1, p3, :cond_5

    new-instance p1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {p1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 p3, 0x2

    invoke-virtual {p1, p3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object p1

    iget-object p3, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p3

    const/4 p4, 0x0

    iget-object v0, p0, Lproguard/ftsafe/i/b;->e:Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p3, p4, p1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    goto :goto_0

    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x12

    if-lt p1, p3, :cond_6

    iget-object p1, p0, Lproguard/ftsafe/i/b;->d:Landroid/bluetooth/BluetoothAdapter;

    iget-object p3, p0, Lproguard/ftsafe/i/b;->f:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    :cond_6
    :goto_0
    if-lez p2, :cond_7

    iget-object p1, p0, Lproguard/ftsafe/i/b;->c:Landroid/os/Handler;

    iget-object p3, p0, Lproguard/ftsafe/i/b;->j:Ljava/lang/Runnable;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lproguard/ftsafe/i/b;->i:Z

    iget-object p1, p0, Lproguard/ftsafe/i/b;->h:Lproguard/ftsafe/g/f;

    invoke-interface {p1}, Lproguard/ftsafe/g/f;->a()V

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_8
    :goto_1
    sget-object p1, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_9
    :goto_2
    sget-object p1, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p1
.end method
