.class Lcom/ftsafe/bluetooth/key/jkey/g;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/g/f;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;

.field final synthetic b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->a:Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->a:Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;

    invoke-interface {v0}, Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;->onScanStarted()V

    return-void
.end method

.method public a(Lproguard/ftsafe/c/a;)V
    .locals 2

    if-eqz p1, :cond_1

    new-instance v0, Lcom/ftsafe/bluetooth/key/jkey/b;

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/b;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0}, Lcom/ftsafe/bluetooth/key/jkey/b;->a()Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->a:Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;

    invoke-interface {p1, v0}, Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;->onScanDevice(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/g;->a:Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;

    invoke-interface {v0}, Lcom/ftsafe/bluetooth/key/jkey/IFTScanCallback;->onScanStopped()V

    return-void
.end method
