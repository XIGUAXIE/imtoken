.class Lcom/ftsafe/bluetooth/key/jkey/j;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/b/w;


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    iput-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1300(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1300(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v0}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1300(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ftsafe/bluetooth/key/jkey/j;->b:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1300(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
