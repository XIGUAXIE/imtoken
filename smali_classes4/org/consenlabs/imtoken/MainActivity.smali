.class public Lorg/consenlabs/imtoken/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/imagepicker/permissions/OnImagePickerPermissionsCallback;


# static fields
.field private static PERMISSIONS_REQUEST_LOCATION:I = 0x2

.field private static REQUEST_ENABLE_BT:I = 0x1

.field public static sInstance:Lorg/consenlabs/imtoken/MainActivity;

.field private static sWeakInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/consenlabs/imtoken/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private listener:Lcom/facebook/react/modules/core/PermissionListener;

.field public mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

.field public mPermissionResult:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    return-void
.end method

.method public static getInstance()Lorg/consenlabs/imtoken/MainActivity;
    .locals 1

    .line 55
    sget-object v0, Lorg/consenlabs/imtoken/MainActivity;->sWeakInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/consenlabs/imtoken/MainActivity;

    return-object v0
.end method

.method public static final isLocationPoweron(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "location"

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 207
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "network"

    .line 208
    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public checkDeviceLocationPowerOn()V
    .locals 2

    .line 161
    invoke-static {p0}, Lorg/consenlabs/imtoken/MainActivity;->isLocationPoweron(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "location_power_off"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 2

    .line 61
    new-instance v0, Lorg/consenlabs/imtoken/MainActivity$1;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lorg/consenlabs/imtoken/MainActivity$1;-><init>(Lorg/consenlabs/imtoken/MainActivity;Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method public enableBluetooth()V
    .locals 4

    .line 108
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 117
    iput v1, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    .line 118
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 119
    invoke-static {}, Lorg/consenlabs/imtoken/MainActivity;->getInstance()Lorg/consenlabs/imtoken/MainActivity;

    move-result-object v2

    sget v3, Lorg/consenlabs/imtoken/MainActivity;->REQUEST_ENABLE_BT:I

    invoke-virtual {v2, v0, v3}, Lorg/consenlabs/imtoken/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    iget v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "enable_bluetooth_failed"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "operation_timeout"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 111
    :cond_2
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "device_not_support_bluetooth"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableLocationPermission()V
    .locals 3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 136
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    .line 145
    iput v1, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 146
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/consenlabs/imtoken/MainActivity;->PERMISSIONS_REQUEST_LOCATION:I

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    iget v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "enable_location_failed"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catch_0
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "operation_timeout"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    new-instance v0, Lorg/consenlabs/tokencore/wallet/model/TokenException;

    const-string v1, "location_permission_forbidden"

    invoke-direct {v0, v1}, Lorg/consenlabs/tokencore/wallet/model/TokenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "token"

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 168
    sget v0, Lorg/consenlabs/imtoken/MainActivity;->REQUEST_ENABLE_BT:I

    if-ne p1, v0, :cond_0

    .line 169
    iput p2, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    .line 170
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 174
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/ReactActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lorg/consenlabs/imtoken/MainActivity;->sWeakInstance:Ljava/lang/ref/WeakReference;

    .line 86
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/consenlabs/imtoken/MainActivity;->mUIHandler:Landroid/os/Handler;

    .line 87
    sput-object p0, Lorg/consenlabs/imtoken/MainActivity;->sInstance:Lorg/consenlabs/imtoken/MainActivity;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 103
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 184
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainActivity;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/react/modules/core/PermissionListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 188
    :cond_0
    sget v0, Lorg/consenlabs/imtoken/MainActivity;->PERMISSIONS_REQUEST_LOCATION:I

    if-ne p1, v0, :cond_2

    .line 189
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p3, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 191
    iput v3, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionResult:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/MainActivity;->mPermissionLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    .line 199
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 201
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/ReactActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/facebook/react/ReactActivity;->onResume()V

    .line 94
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const p1, 0x1020002

    .line 73
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method public setPermissionListener(Lcom/facebook/react/modules/core/PermissionListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lorg/consenlabs/imtoken/MainActivity;->listener:Lcom/facebook/react/modules/core/PermissionListener;

    return-void
.end method
