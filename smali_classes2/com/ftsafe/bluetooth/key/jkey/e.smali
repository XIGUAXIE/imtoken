.class Lcom/ftsafe/bluetooth/key/jkey/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/d;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/d;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/e;->a:Lcom/ftsafe/bluetooth/key/jkey/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/e;->a:Lcom/ftsafe/bluetooth/key/jkey/d;

    iget-object v0, v0, Lcom/ftsafe/bluetooth/key/jkey/d;->b:Lcom/ftsafe/bluetooth/key/jkey/c;

    iget-object v0, v0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object v0

    sget-object v1, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_BOND_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {v0, v1}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    return-void
.end method
