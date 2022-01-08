.class public Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;
.super Ljava/lang/Object;


# direct methods
.method public static a()Lproguard/ftsafe/b/d;
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lproguard/ftsafe/b/d;->b:Lproguard/ftsafe/b/d;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lproguard/ftsafe/b/d;->d:Lproguard/ftsafe/b/d;

    return-object v0

    :cond_1
    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.bluetooth_le"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
