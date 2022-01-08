.class Lproguard/ftsafe/e/c;
.super Landroid/bluetooth/BluetoothGattCallback;


# instance fields
.field final synthetic a:Lproguard/ftsafe/e/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/e/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCharacteristicChanged enter"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recv len="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/sdk/utils/StrUtil;->byteArr2HexStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ft_log"

    invoke-static {v0, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->g(Lproguard/ftsafe/e/b;)[B

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->h(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/e;

    move-result-object p2

    if-eqz p2, :cond_1

    array-length p2, p1

    invoke-static {p1, p2}, Lproguard/ftsafe/f/a;->c([BI)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->h(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/e;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->i(Lproguard/ftsafe/e/b;)Lproguard/ftsafe/c/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lproguard/ftsafe/c/e;->b(Lproguard/ftsafe/c/a;)V

    return-void

    :cond_1
    sget-boolean p1, Lproguard/ftsafe/f/a;->a:Z

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->j(Lproguard/ftsafe/e/b;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lproguard/ftsafe/e/e;

    invoke-direct {p2, p0}, Lproguard/ftsafe/e/e;-><init>(Lproguard/ftsafe/e/c;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCharacteristicWrite enter"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lproguard/ftsafe/e/b;->b(Lproguard/ftsafe/e/b;Z)Z

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->f(Lproguard/ftsafe/e/b;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->f(Lproguard/ftsafe/e/b;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p3}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "STATE_CONNECTED enter"

    invoke-static {p3, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;Z)Z

    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->b(Lproguard/ftsafe/e/b;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lproguard/ftsafe/e/d;

    invoke-direct {p3, p0, p1}, Lproguard/ftsafe/e/d;-><init>(Lproguard/ftsafe/e/c;Landroid/bluetooth/BluetoothGatt;)V

    const-wide/16 v0, 0x258

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->c(Lproguard/ftsafe/e/b;)V

    goto :goto_1

    :cond_1
    if-nez p3, :cond_4

    const/16 p3, 0x85

    if-eq p2, p3, :cond_3

    const/16 p3, 0x89

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "STATE_DISCONNECTED enter"

    invoke-static {p2, p3}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2, p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;Landroid/bluetooth/BluetoothGatt;)Z

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-virtual {p1}, Lproguard/ftsafe/e/b;->c()V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DISCONNECTED: 0x85 || 0x89"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->c(Lproguard/ftsafe/e/b;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 0

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onDescriptorWrite enter"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notify end:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->a(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    if-nez p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lproguard/ftsafe/e/b;->c(Lproguard/ftsafe/e/b;Z)Z

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->k(Lproguard/ftsafe/e/b;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p2}, Lproguard/ftsafe/e/b;->k(Lproguard/ftsafe/e/b;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServicesDiscovered enter"

    invoke-static {p1, v0}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->d(Lproguard/ftsafe/e/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->e(Lproguard/ftsafe/e/b;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;Ljava/util/List;)Ljava/util/List;

    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    sget-object p2, Lproguard/ftsafe/b/a;->a:Lproguard/ftsafe/b/a;

    invoke-static {p1, p2}, Lproguard/ftsafe/e/b;->a(Lproguard/ftsafe/e/b;Lproguard/ftsafe/b/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproguard/ftsafe/e/c;->a:Lproguard/ftsafe/e/b;

    invoke-static {p1}, Lproguard/ftsafe/e/b;->c(Lproguard/ftsafe/e/b;)V

    :goto_0
    return-void
.end method
