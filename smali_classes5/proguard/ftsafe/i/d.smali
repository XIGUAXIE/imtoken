.class Lproguard/ftsafe/i/d;
.super Landroid/bluetooth/le/ScanCallback;


# instance fields
.field final synthetic a:Lproguard/ftsafe/i/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/i/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 3

    iget-object v0, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {v0}, Lproguard/ftsafe/i/b;->b(Lproguard/ftsafe/i/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFailed errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->d(Ljava/lang/Object;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 12

    iget-object p1, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p1}, Lproguard/ftsafe/i/b;->b(Lproguard/ftsafe/i/b;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanResult enter - Thread id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p1}, Lproguard/ftsafe/i/b;->b(Lproguard/ftsafe/i/b;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanResult enter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const/16 v3, 0x96e

    invoke-virtual {p2, v3}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    iget-object v4, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {v4}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {v4}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    iget-object v4, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {v4}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lproguard/ftsafe/g/b;

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->e()[B

    move-result-object v9

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->d()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->f()I

    move-result v11

    invoke-virtual {v5}, Lproguard/ftsafe/g/b;->g()I

    move-result v5

    if-eqz v6, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    invoke-static {v9, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    if-gt v0, v11, :cond_2

    if-ge v0, v5, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v10, :cond_7

    if-eqz v1, :cond_2

    invoke-interface {v1, v10}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v7, :cond_8

    if-eqz v2, :cond_2

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lproguard/ftsafe/i/a;->a([B)Lproguard/ftsafe/i/a;

    move-result-object p2

    new-instance v1, Lproguard/ftsafe/e/k;

    invoke-direct {v1, p1}, Lproguard/ftsafe/e/k;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    invoke-virtual {v1, p1}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lproguard/ftsafe/e/k;->a(I)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/i/a;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/e/k;->a()Lproguard/ftsafe/e/i;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lproguard/ftsafe/i/e;

    invoke-direct {v0, p0, p1}, Lproguard/ftsafe/i/e;-><init>(Lproguard/ftsafe/i/d;Lproguard/ftsafe/e/i;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lproguard/ftsafe/i/a;->a([B)Lproguard/ftsafe/i/a;

    move-result-object p2

    new-instance v1, Lproguard/ftsafe/e/k;

    invoke-direct {v1, p1}, Lproguard/ftsafe/e/k;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    invoke-virtual {v1, p1}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, v0}, Lproguard/ftsafe/e/k;->a(I)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/i/a;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/e/k;->a()Lproguard/ftsafe/e/i;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lproguard/ftsafe/i/d;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lproguard/ftsafe/i/f;

    invoke-direct {v0, p0, p1}, Lproguard/ftsafe/i/f;-><init>(Lproguard/ftsafe/i/d;Lproguard/ftsafe/e/i;)V

    :goto_1
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method
