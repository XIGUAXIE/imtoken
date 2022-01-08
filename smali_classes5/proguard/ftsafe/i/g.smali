.class Lproguard/ftsafe/i/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field final synthetic a:Lproguard/ftsafe/i/b;


# direct methods
.method constructor <init>(Lproguard/ftsafe/i/b;)V
    .locals 0

    iput-object p1, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 11

    iget-object v0, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v0}, Lproguard/ftsafe/i/b;->b(Lproguard/ftsafe/i/b;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeScan enter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-static {p3}, Lproguard/ftsafe/i/a;->a([B)Lproguard/ftsafe/i/a;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lproguard/ftsafe/i/a;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x96e

    invoke-virtual {p3, v1}, Lproguard/ftsafe/i/a;->a(I)[B

    move-result-object v1

    invoke-virtual {p3}, Lproguard/ftsafe/i/a;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v3}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v3}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v3, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {v3}, Lproguard/ftsafe/i/b;->c(Lproguard/ftsafe/i/b;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lproguard/ftsafe/g/b;

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->e()[B

    move-result-object v8

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->d()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->f()I

    move-result v10

    invoke-virtual {v4}, Lproguard/ftsafe/g/b;->g()I

    move-result v4

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    if-gt p2, v10, :cond_1

    if-ge p2, v4, :cond_5

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_1

    invoke-interface {v2, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v0, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    new-instance v0, Lproguard/ftsafe/e/k;

    invoke-direct {v0, p1}, Lproguard/ftsafe/e/k;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    invoke-virtual {v0, p1}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/e/k;->a(I)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p3}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/i/a;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/e/k;->a()Lproguard/ftsafe/e/i;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lproguard/ftsafe/i/h;

    invoke-direct {p3, p0, p1}, Lproguard/ftsafe/i/h;-><init>(Lproguard/ftsafe/i/g;Lproguard/ftsafe/e/i;)V

    goto :goto_1

    :cond_8
    new-instance v0, Lproguard/ftsafe/e/k;

    invoke-direct {v0, p1}, Lproguard/ftsafe/e/k;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    sget-object p1, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    invoke-virtual {v0, p1}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/b/b;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p2}, Lproguard/ftsafe/e/k;->a(I)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1, p3}, Lproguard/ftsafe/e/k;->a(Lproguard/ftsafe/i/a;)Lproguard/ftsafe/e/k;

    move-result-object p1

    invoke-virtual {p1}, Lproguard/ftsafe/e/k;->a()Lproguard/ftsafe/e/i;

    move-result-object p1

    iget-object p2, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lproguard/ftsafe/i/g;->a:Lproguard/ftsafe/i/b;

    invoke-static {p2}, Lproguard/ftsafe/i/b;->d(Lproguard/ftsafe/i/b;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lproguard/ftsafe/i/i;

    invoke-direct {p3, p0, p1}, Lproguard/ftsafe/i/i;-><init>(Lproguard/ftsafe/i/g;Lproguard/ftsafe/e/i;)V

    :goto_1
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method
