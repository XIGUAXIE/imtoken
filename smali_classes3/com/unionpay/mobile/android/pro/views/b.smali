.class final Lcom/unionpay/mobile/android/pro/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/a;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d4

    const/16 v2, 0x7d6

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->h(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/a;->b(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/hce/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/hce/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/hce/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->d(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v1

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pro/views/a;->b(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->e(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/upviews/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->f(Lcom/unionpay/mobile/android/pro/views/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v1}, Lcom/unionpay/mobile/android/pro/views/a;->c(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/a;->g(Lcom/unionpay/mobile/android/pro/views/a;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pro/views/a;->c(Lcom/unionpay/mobile/android/pro/views/a;Ljava/lang/String;)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
