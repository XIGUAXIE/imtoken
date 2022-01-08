.class public Lproguard/ftsafe/d/h;
.super Lproguard/ftsafe/c/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lproguard/ftsafe/d/a;

.field private c:Lproguard/ftsafe/c/e;

.field private d:Landroid/bluetooth/BluetoothDevice;

.field private e:Lproguard/ftsafe/b/b;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;Lproguard/ftsafe/b/b;I)V
    .locals 1

    invoke-direct {p0, p1}, Lproguard/ftsafe/c/a;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/d/h;->a:Ljava/lang/String;

    iput-object p1, p0, Lproguard/ftsafe/d/h;->d:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lproguard/ftsafe/d/h;->e:Lproguard/ftsafe/b/b;

    iput p3, p0, Lproguard/ftsafe/d/h;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Lproguard/ftsafe/b/b;ILproguard/ftsafe/d/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lproguard/ftsafe/d/h;-><init>(Landroid/bluetooth/BluetoothDevice;Lproguard/ftsafe/b/b;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/d/h;->a:Ljava/lang/String;

    const-string v1, "LeBluetoothDevice connect enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    invoke-virtual {p0}, Lproguard/ftsafe/d/h;->h()Lproguard/ftsafe/b/a;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/a;->a:Lproguard/ftsafe/b/a;

    if-ne v0, v1, :cond_0

    sget-object p1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/ftsafe/bluetooth/sdk/bluetoothutil/d;->a()Lproguard/ftsafe/b/d;

    move-result-object v0

    sget-object v1, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-eq v0, v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lproguard/ftsafe/d/a;

    invoke-direct {v0}, Lproguard/ftsafe/d/a;-><init>()V

    iput-object v0, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    invoke-virtual {v0, p1}, Lproguard/ftsafe/d/a;->a(Landroid/content/Context;)Lproguard/ftsafe/b/d;

    move-result-object p1

    sget-object v0, Lproguard/ftsafe/b/d;->a:Lproguard/ftsafe/b/d;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    invoke-virtual {p1, p0, p2}, Lproguard/ftsafe/d/a;->a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public declared-synchronized a([BILproguard/ftsafe/c/e;ILjava/lang/Object;)Lproguard/ftsafe/b/d;
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p5, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    if-eqz p5, :cond_0

    iput-object p3, p0, Lproguard/ftsafe/d/h;->c:Lproguard/ftsafe/c/e;

    iget-object p5, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    invoke-virtual {p5, p1, p2, p4, p3}, Lproguard/ftsafe/d/a;->a([BIILproguard/ftsafe/c/e;)Lproguard/ftsafe/b/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    sget-object p1, Lproguard/ftsafe/b/d;->e:Lproguard/ftsafe/b/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/h;->c:Lproguard/ftsafe/c/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lproguard/ftsafe/c/e;->a(Lproguard/ftsafe/c/a;)V

    :cond_0
    iget-object v0, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lproguard/ftsafe/d/a;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lproguard/ftsafe/d/a;->c()V

    :cond_0
    return-void
.end method

.method public c()Lproguard/ftsafe/b/b;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/h;->e:Lproguard/ftsafe/b/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/h;->d:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h()Lproguard/ftsafe/b/a;
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/d/h;->b:Lproguard/ftsafe/d/a;

    if-nez v0, :cond_0

    sget-object v0, Lproguard/ftsafe/b/a;->c:Lproguard/ftsafe/b/a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lproguard/ftsafe/d/a;->d()Lproguard/ftsafe/b/a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lproguard/ftsafe/d/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lproguard/ftsafe/d/h;->d:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
