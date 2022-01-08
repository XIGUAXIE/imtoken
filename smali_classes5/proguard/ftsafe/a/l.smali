.class Lproguard/ftsafe/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/a/h;


# instance fields
.field final synthetic a:Landroid/bluetooth/BluetoothDevice;

.field final synthetic b:Lproguard/ftsafe/a/i;


# direct methods
.method constructor <init>(Lproguard/ftsafe/a/i;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/a/l;->b:Lproguard/ftsafe/a/i;

    iput-object p2, p0, Lproguard/ftsafe/a/l;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lproguard/ftsafe/a/i;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, ">>>> negative"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/a/l;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1}, Lproguard/ftsafe/a/i;->a(Landroid/bluetooth/BluetoothDevice;)Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lproguard/ftsafe/a/i;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>> positive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/a/l;->b:Lproguard/ftsafe/a/i;

    iget-object v0, p0, Lproguard/ftsafe/a/l;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0, p2}, Lproguard/ftsafe/a/i;->a(Lproguard/ftsafe/a/i;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    invoke-static {}, Lproguard/ftsafe/a/i;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>> setPin result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    return-void
.end method
