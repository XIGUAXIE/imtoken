.class Lcom/ftsafe/bluetooth/key/jkey/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/d;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/f;->a:Lcom/ftsafe/bluetooth/key/jkey/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/f;->a:Lcom/ftsafe/bluetooth/key/jkey/d;

    iget-object v0, v0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v0, v0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/f;->a:Lcom/ftsafe/bluetooth/key/jkey/d;

    iget-object v1, v1, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v1, v1, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnected(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V

    return-void
.end method
