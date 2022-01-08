.class public final Lcom/unionpay/mobile/android/hce/b;
.super Lcom/unionpay/mobile/android/hce/service/b$a;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/hce/service/b$a;-><init>()V

    iput p1, p0, Lcom/unionpay/mobile/android/hce/b;->a:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/hce/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/hce/b;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/unionpay/mobile/android/hce/b;->a:I

    const-string v1, "errCode"

    const/4 v2, 0x0

    const-string v3, "success"

    const/16 v4, 0x7d3

    if-eq v0, v4, :cond_1

    const/16 v4, 0x7d4

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/b;->c:Landroid/os/Handler;

    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v5, p0, Lcom/unionpay/mobile/android/hce/b;->b:Ljava/lang/String;

    const-string v6, "pkgName"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/b;->c:Landroid/os/Handler;

    invoke-static {p1, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lcom/unionpay/mobile/android/hce/b;->a:I

    const-string v1, "reserved"

    const-string v2, "result"

    const/4 v3, 0x1

    const-string v4, "success"

    const/16 v5, 0x7d3

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7d4

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/b;->c:Landroid/os/Handler;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/hce/b;->b:Ljava/lang/String;

    const-string v7, "pkgName"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/b;->c:Landroid/os/Handler;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
