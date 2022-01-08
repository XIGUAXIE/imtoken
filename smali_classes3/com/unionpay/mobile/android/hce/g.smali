.class final Lcom/unionpay/mobile/android/hce/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/hce/f;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/hce/f;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->b(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/hce/d;

    iget-object v1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v1}, Lcom/unionpay/mobile/android/hce/f;->c(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/hce/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/d;->f()V

    iget-object v2, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v2}, Lcom/unionpay/mobile/android/hce/f;->b(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/hce/l;->e()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0}, Lcom/unionpay/mobile/android/hce/f;->c(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/hce/f;->a(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_2

    const-string v0, "pkgName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reserved"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "yitong"

    invoke-static {v4, v3}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {v3}, Lcom/unionpay/mobile/android/hce/f;->b(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unionpay/mobile/android/hce/d;

    if-nez v3, :cond_0

    new-instance v3, Lcom/unionpay/mobile/android/hce/d;

    invoke-direct {v3, v0}, Lcom/unionpay/mobile/android/hce/d;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v3, v2}, Lcom/unionpay/mobile/android/hce/d;->a(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/unionpay/mobile/android/hce/d;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/unionpay/mobile/android/hce/d;->e()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->b(Lcom/unionpay/mobile/android/hce/f;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/hce/f;->a(Lcom/unionpay/mobile/android/hce/f;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-static {p1}, Lcom/unionpay/mobile/android/hce/f;->a(Lcom/unionpay/mobile/android/hce/f;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/hce/g;->a:Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/hce/f;->b()V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
