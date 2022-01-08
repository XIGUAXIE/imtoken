.class Lproguard/ftsafe/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothGatt;

.field final synthetic b:Lproguard/ftsafe/e/c;


# direct methods
.method constructor <init>(Lproguard/ftsafe/e/c;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/d;->b:Lproguard/ftsafe/e/c;

    iput-object p2, p0, Lproguard/ftsafe/e/d;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/e/d;->a:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method
