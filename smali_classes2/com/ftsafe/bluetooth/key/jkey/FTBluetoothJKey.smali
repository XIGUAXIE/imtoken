.class public Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ftsafe/bluetooth/key/jkey/IFTBluetoothKeyInterface;


# static fields
.field private static final BLE_PACKAGE_SIZE:I = 0x14

.field private static final CLASSIC_BUFFER_SIZE:I = 0x400

.field private static final FT_COMMTYPE_BT3:I = 0x3

.field private static final FT_COMMTYPE_BT4:I = 0x4

.field private static final SDK_VERSION:Ljava/lang/String; = "1.1.6"

.field private static findUUID:Z = false

.field private static isInit:Z = false

.field private static mContext:Landroid/content/Context;

.field private static mFTBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# instance fields
.field private ScanedDevMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;",
            "Lproguard/ftsafe/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final bluetoothtConnCallback:Lproguard/ftsafe/c/d;

.field private btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

.field private cDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

.field private connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

.field private isConnectTimeOut:Z

.field private mBondLock:Ljava/lang/Object;

.field private mFTConnectEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

.field private mFTRecvDataEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

.field private mLocale:Ljava/util/Locale;

.field private reConnectTimes:I

.field private scheduleAtFixedRate:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private targetDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mBondLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->targetDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->cDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduleAtFixedRate:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isConnectTimeOut:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->reConnectTimes:I

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/c;

    invoke-direct {v0, p0}, Lcom/ftsafe/bluetooth/key/jkey/c;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->bluetoothtConnCallback:Lproguard/ftsafe/c/d;

    sput-object p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTConnectEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lproguard/ftsafe/c/d;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->bluetoothtConnCallback:Lproguard/ftsafe/c/d;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->targetDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->targetDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTRecvDataEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mBondLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->findUUID:Z

    return p0
.end method

.method static synthetic access$400(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isConnectTimeOut:Z

    return p0
.end method

.method static synthetic access$402(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isConnectTimeOut:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->checkBlePermission(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->cDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)I
    .locals 0

    iget p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->reConnectTimes:I

    return p0
.end method

.method static synthetic access$702(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;I)I
    .locals 0

    iput p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->reConnectTimes:I

    return p1
.end method

.method static synthetic access$710(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)I
    .locals 2

    iget v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->reConnectTimes:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->reConnectTimes:I

    return v0
.end method

.method static synthetic access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized checkBlePermission(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-object v2, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->setLanguage(Landroid/content/Context;)V

    new-instance v2, Lproguard/ftsafe/a/i;

    sget-object v3, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lproguard/ftsafe/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lproguard/ftsafe/a/i;->a()V

    new-instance v3, Lproguard/ftsafe/b/r;

    sget-object v4, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7530

    new-instance v6, Lcom/ftsafe/bluetooth/key/jkey/j;

    invoke-direct {v6, p0, v0}, Lcom/ftsafe/bluetooth/key/jkey/j;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-direct {v3, v4, v5, v6}, Lproguard/ftsafe/b/r;-><init>(Landroid/content/Context;ILproguard/ftsafe/b/w;)V

    invoke-virtual {v3}, Lproguard/ftsafe/b/r;->a()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lproguard/ftsafe/b/r;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ft_log"

    const-string v5, "\u672a\u914d\u5bf9"

    invoke-static {v4, v5}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lproguard/ftsafe/b/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mBondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mBondLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lproguard/ftsafe/a/i;->b()V

    invoke-virtual {v3}, Lproguard/ftsafe/b/r;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_5
    invoke-virtual {v2}, Lproguard/ftsafe/a/i;->b()V

    invoke-virtual {v3}, Lproguard/ftsafe/b/r;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;
    .locals 1

    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-direct {v0, p0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    goto :goto_0

    :cond_0
    sput-object p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    :goto_0
    sget-object p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    return-object p0
.end method

.method private initLocales()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private sendDataAsync(Lproguard/ftsafe/c/a;[BIILproguard/ftsafe/c/e;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 9

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->c()Lproguard/ftsafe/b/b;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->findUUID:Z

    if-eqz v0, :cond_0

    new-instance v0, Lproguard/ftsafe/e/a;

    sget-object v2, Lcom/ftsafe/bluetooth/key/a;->a:Ljava/util/UUID;

    const/4 v3, 0x0

    sget-object v4, Lcom/ftsafe/bluetooth/key/a;->a:Ljava/util/UUID;

    sget-object v5, Lcom/ftsafe/bluetooth/key/a;->b:Ljava/util/UUID;

    const/4 v6, 0x0

    sget-object v7, Lcom/ftsafe/bluetooth/key/a;->c:Ljava/util/UUID;

    sget-object v8, Lcom/ftsafe/bluetooth/key/a;->d:Ljava/util/UUID;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lproguard/ftsafe/e/a;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    const/16 v1, 0x14

    move-object v7, v0

    const/16 v6, 0x14

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_MATCH_UUID_FAIL:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0x400

    move-object v7, v0

    const/16 v6, 0x400

    :goto_0
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v2 .. v7}, Lproguard/ftsafe/c/a;->a([BILproguard/ftsafe/c/e;ILjava/lang/Object;)Lproguard/ftsafe/b/d;

    move-result-object p1

    sget-object p2, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduleAtFixedRate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Lcom/ftsafe/bluetooth/key/jkey/m;

    invoke-direct {p3, p0}, Lcom/ftsafe/bluetooth/key/jkey/m;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V

    int-to-long p4, p4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, p4, p5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    invoke-virtual {p1}, Lproguard/ftsafe/b/d;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    return-object p1
.end method

.method private setLanguage(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->initLocales()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public ftBTKeyComm_CheckBtEnv(Z)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 2

    invoke-static {}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a()Lproguard/ftsafe/b/d;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-eq v0, v1, :cond_1

    sget-object v1, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;

    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->a()V

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/b;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    goto :goto_0

    :cond_0
    sget-object p1, Lproguard/ftsafe/b/d;->k:Lproguard/ftsafe/b/d;

    :goto_0
    move-object v0, p1

    :cond_1
    invoke-virtual {v0}, Lproguard/ftsafe/b/d;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    return-object p1
.end method

.method public ftBTKeyComm_Connect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 3

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_0
    if-eqz p1, :cond_9

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproguard/ftsafe/c/a;

    if-nez v0, :cond_3

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_3
    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->cDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    if-eqz v1, :cond_4

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_ALREADY_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_4
    if-gtz p2, :cond_5

    const/16 p2, 0x1e

    :cond_5
    iput-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTConnectEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    new-instance p3, Lcom/ftsafe/bluetooth/key/jkey/b;

    invoke-virtual {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/ftsafe/bluetooth/key/jkey/b;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p3}, Lcom/ftsafe/bluetooth/key/jkey/b;->a()Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    sget-object p1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->bluetoothtConnCallback:Lproguard/ftsafe/c/d;

    invoke-virtual {v0, p1, p3}, Lproguard/ftsafe/c/a;->a(Landroid/content/Context;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;

    move-result-object p1

    sget-object p3, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-ne p1, p3, :cond_7

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isConnectTimeOut:Z

    iget-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_6
    iget-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduleAtFixedRate:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/l;

    invoke-direct {v0, p0}, Lcom/ftsafe/bluetooth/key/jkey/l;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    invoke-virtual {p1}, Lproguard/ftsafe/b/d;->a()I

    move-result p1

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_0
    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_FIND_DEVICE_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_9
    :goto_1
    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1
.end method

.method public ftBTKeyComm_ConnectDirectly(ILjava/lang/String;ILcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 8

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    if-gtz p3, :cond_2

    const/16 p3, 0x1e

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->targetDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    new-instance v7, Lcom/ftsafe/bluetooth/key/jkey/h;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ftsafe/bluetooth/key/jkey/h;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/lang/String;IJLcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;)V

    invoke-virtual {p0, p1, p3, v7}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ftBTKeyComm_StartScan(IILcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1
.end method

.method public ftBTKeyComm_Disconnect(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 1

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproguard/ftsafe/c/a;

    if-nez p1, :cond_2

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->a()V

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1
.end method

.method public ftBTKeyComm_Finalize()V
    .locals 3

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    :cond_0
    invoke-static {}, Lproguard/ftsafe/g/a;->a()V

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproguard/ftsafe/c/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lproguard/ftsafe/c/a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    sput-object v1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTBluetoothJKey:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    sput-object v1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    return-void
.end method

.method public ftBTKeyComm_GetLibVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.1.6"

    return-object v0
.end method

.method public ftBTKeyComm_Initialize()Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    invoke-direct {v1}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;-><init>()V

    iput-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    sget-object v1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->btStateChangedReceiver:Lcom/ftsafe/bluetooth/sdk/bluetoothutil/BluetoothStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    invoke-static {}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a()Lproguard/ftsafe/b/d;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lproguard/ftsafe/b/d;->a()I

    move-result v0

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/a;->a(Landroid/content/Context;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    sget-object v0, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object v0
.end method

.method public ftBTKeyComm_SendAndRecvAsync(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;[BIILcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 6

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->connectDevice:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproguard/ftsafe/c/a;

    if-nez p1, :cond_2

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_CONNECTED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_2
    if-gtz p4, :cond_3

    const/4 p4, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_3
    move v4, p4

    :goto_0
    iget-object p4, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p4, :cond_4

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_SEND_DATA_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_4
    iput-object p5, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mFTRecvDataEventCallback:Lcom/ftsafe/bluetooth/key/jkey/IFTRecvDataEventCallback;

    new-instance v5, Lcom/ftsafe/bluetooth/key/jkey/i;

    invoke-direct {v5, p0}, Lcom/ftsafe/bluetooth/key/jkey/i;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->sendDataAsync(Lproguard/ftsafe/c/a;[BIILproguard/ftsafe/c/e;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p2

    sget-object p3, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTKey_SUCCESS:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    if-eq p2, p3, :cond_6

    iget-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p3, :cond_5

    const/4 p4, 0x1

    invoke-interface {p3, p4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_5
    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->b()V

    :cond_6
    return-object p2
.end method

.method public ftBTKeyComm_SetLibLanguage(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mLocale:Ljava/util/Locale;

    return-void
.end method

.method public ftBTKeyComm_StartScan(IILcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;
    .locals 4

    sget-boolean v0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->isInit:Z

    if-nez v0, :cond_0

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_NOT_INIT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a()Lproguard/ftsafe/b/d;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-eq v0, v1, :cond_1

    invoke-virtual {v0}, Lproguard/ftsafe/b/d;->a()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->mapErrorCode(I)Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    sget-object p1, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    sget-object p1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    :goto_1
    if-nez p3, :cond_3

    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1

    :cond_3
    if-gtz p2, :cond_4

    const/16 p2, 0x1e

    :cond_4
    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->ScanedDevMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/UUID;

    const/4 v2, 0x0

    sget-object v3, Lcom/ftsafe/bluetooth/key/a;->C:Ljava/util/UUID;

    aput-object v3, v1, v2

    new-instance v2, Lproguard/ftsafe/g/d;

    invoke-direct {v2}, Lproguard/ftsafe/g/d;-><init>()V

    invoke-virtual {v2, v1}, Lproguard/ftsafe/g/d;->a([Ljava/util/UUID;)Lproguard/ftsafe/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lproguard/ftsafe/g/d;->a()Lproguard/ftsafe/g/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/ftsafe/bluetooth/key/jkey/g;

    invoke-direct {v2, p0, p3}, Lcom/ftsafe/bluetooth/key/jkey/g;-><init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)V

    invoke-static {v1, p1, p2, v0, v2}, Lproguard/ftsafe/g/a;->a(Landroid/content/Context;Lproguard/ftsafe/b/b;ILjava/util/List;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/b/d;->a()I

    move-result p1

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_PARA_ERR:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    return-object p1
.end method

.method public ftBTKeyComm_StopScan()V
    .locals 0

    invoke-static {}, Lproguard/ftsafe/g/a;->a()V

    return-void
.end method
