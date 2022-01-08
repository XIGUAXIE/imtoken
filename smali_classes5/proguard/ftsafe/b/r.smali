.class public Lproguard/ftsafe/b/r;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Landroid/bluetooth/BluetoothManager;

.field private d:Lproguard/ftsafe/b/w;

.field private e:Landroid/os/CountDownTimer;

.field private f:I

.field private final g:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILproguard/ftsafe/b/w;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7530

    iput v0, p0, Lproguard/ftsafe/b/r;->f:I

    new-instance v1, Lproguard/ftsafe/b/s;

    invoke-direct {v1, p0}, Lproguard/ftsafe/b/s;-><init>(Lproguard/ftsafe/b/r;)V

    iput-object v1, p0, Lproguard/ftsafe/b/r;->g:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lproguard/ftsafe/b/r;->a:Landroid/content/Context;

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x7530

    :goto_0
    iput p2, p0, Lproguard/ftsafe/b/r;->f:I

    iput-object p3, p0, Lproguard/ftsafe/b/r;->d:Lproguard/ftsafe/b/w;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lproguard/ftsafe/b/r;->b:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, Lproguard/ftsafe/b/r;->a:Landroid/content/Context;

    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    iput-object p1, p0, Lproguard/ftsafe/b/r;->c:Landroid/bluetooth/BluetoothManager;

    return-void
.end method

.method static synthetic a(Lproguard/ftsafe/b/r;)Landroid/os/CountDownTimer;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/b/r;->e:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic a(Lproguard/ftsafe/b/r;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/b/r;->e:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic b(Lproguard/ftsafe/b/r;)Lproguard/ftsafe/b/w;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/b/r;->d:Lproguard/ftsafe/b/w;

    return-object p0
.end method

.method static synthetic c(Lproguard/ftsafe/b/r;)I
    .locals 0

    iget p0, p0, Lproguard/ftsafe/b/r;->f:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "BluetoothBondEnable"

    const-string v1, ">>>> permission registerReceiver"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lproguard/ftsafe/b/r;->a:Landroid/content/Context;

    iget-object v2, p0, Lproguard/ftsafe/b/r;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lproguard/ftsafe/b/r;->c:Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothManager;->getConnectedDevices(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "BluetoothBondEnable"

    const-string v1, ">>>> permission unregisterReceiver"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object v0, p0, Lproguard/ftsafe/b/r;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproguard/ftsafe/b/r;->g:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/BroadcastReceiver;->setOrderedHint(Z)V

    iget-object v0, p0, Lproguard/ftsafe/b/r;->a:Landroid/content/Context;

    iget-object v1, p0, Lproguard/ftsafe/b/r;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/b/r;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    :goto_0
    iget-object p1, p0, Lproguard/ftsafe/b/r;->d:Lproguard/ftsafe/b/w;

    invoke-interface {p1}, Lproguard/ftsafe/b/w;->b()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-void
.end method
