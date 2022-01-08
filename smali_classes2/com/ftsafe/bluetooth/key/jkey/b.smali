.class public Lcom/ftsafe/bluetooth/key/jkey/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->a:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public a()Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;
    .locals 8

    new-instance v7, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->a:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->b:I

    iget-object v3, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->e:Ljava/lang/String;

    iget v5, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->c:I

    iget-object v6, p0, Lcom/ftsafe/bluetooth/key/jkey/b;->f:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v7
.end method
