.class Lcom/ftsafe/bluetooth/key/jkey/c;
.super Ljava/lang/Object;

# interfaces
.implements Lproguard/ftsafe/c/d;


# instance fields
.field final synthetic a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;


# direct methods
.method constructor <init>(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)V
    .locals 0

    iput-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lproguard/ftsafe/c/a;Lproguard/ftsafe/b/a;Lproguard/ftsafe/b/c;)V
    .locals 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lproguard/ftsafe/c/a;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/ftsafe/bluetooth/key/jkey/k;->a:[I

    invoke-virtual {p2}, Lproguard/ftsafe/b/a;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p2, v1, :cond_6

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$302(Z)Z

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p2

    if-eqz p2, :cond_a

    sget-object p2, Lproguard/ftsafe/b/c;->c:Lproguard/ftsafe/b/c;

    if-ne p3, p2, :cond_2

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$400(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p2

    sget-object p3, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_TIMEOUT:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {p2, p3}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2, p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$402(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Z)Z

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$602(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtDisconnected(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lproguard/ftsafe/b/c;->b:Lproguard/ftsafe/b/c;

    if-ne p3, p1, :cond_5

    const-string p1, "ft_log"

    const-string p2, "CONNECT_FAIL"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$700(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)I

    move-result p2

    if-lez p2, :cond_3

    const-string p2, "RECONNECT"

    invoke-static {p1, p2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$710(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)I

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$800(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproguard/ftsafe/c/a;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$900()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p3}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$1000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lproguard/ftsafe/c/d;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lproguard/ftsafe/c/a;->a(Landroid/content/Context;Lproguard/ftsafe/c/d;)Lproguard/ftsafe/b/d;

    return-void

    :cond_3
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p1

    sget-object p2, Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;->FT_BTkey_CONNECT_FAILED:Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;

    invoke-interface {p1, p2}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnectFail(Lcom/ftsafe/bluetooth/key/FTBtKeyErrCode;)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$102(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$200(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2, v2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$202(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_7
    move-object p2, p1

    check-cast p2, Lproguard/ftsafe/e/i;

    invoke-virtual {p2}, Lproguard/ftsafe/e/i;->h()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/a;->a(Ljava/util/List;)Z

    move-result p2

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$302(Z)Z

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$400(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/ftsafe/bluetooth/key/jkey/d;

    invoke-direct {p3, p0, p1}, Lcom/ftsafe/bluetooth/key/jkey/d;-><init>(Lcom/ftsafe/bluetooth/key/jkey/c;Lproguard/ftsafe/c/a;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1, v1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$702(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;I)I

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p1}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$000(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;

    move-result-object p1

    iget-object p2, p0, Lcom/ftsafe/bluetooth/key/jkey/c;->a:Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;

    invoke-static {p2}, Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;->access$100(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothJKey;)Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/ftsafe/bluetooth/key/jkey/IFTConnectEventCallback;->onFTBtConnecting(Lcom/ftsafe/bluetooth/key/jkey/FTBluetoothDevice;)V

    :cond_a
    :goto_2
    return-void
.end method
