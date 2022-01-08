.class Lcom/ftsafe/bluetooth/key/jkey/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lproguard/ftsafe/c/a;

.field final synthetic b:Lcom/ftsafe/bluetooth/key/jkey/c;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/c;Lproguard/ftsafe/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->a:Lproguard/ftsafe/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v1, v1, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    iget-object v2, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->a:Lproguard/ftsafe/c/a;

    invoke-virtual {v2}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$500(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ftsafe/bluetooth/key/jkey/e;

    invoke-direct {v1, p0}, Lcom/ftsafe/bluetooth/key/jkey/e;-><init>(Lcom/ftsafe/bluetooth/key/jkey/d;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v1, v1, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    iget-object v2, p0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v2, v2, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$602(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    new-instance v1, Lcom/ftsafe/bluetooth/key/jkey/f;

    invoke-direct {v1, p0}, Lcom/ftsafe/bluetooth/key/jkey/f;-><init>(Lcom/ftsafe/bluetooth/key/jkey/d;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
