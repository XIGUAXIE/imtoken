.class public final Lcom/unionpay/mobile/android/utils/n;
.super Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

# interfaces
.implements Lcom/unionpay/mobile/android/fully/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "reqtm"

    invoke-static {}, Lcom/unionpay/mobile/android/utils/n;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "post message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/utils/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/n;->d()Lcom/unionpay/mobile/android/net/d;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v3, "sid"

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/n;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/unionpay/mobile/android/net/d;->a(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/n;->g()V

    iget-object p1, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/c;

    if-nez p1, :cond_0

    new-instance p1, Lcom/unionpay/mobile/android/net/c;

    iget-object v3, p0, Lcom/unionpay/mobile/android/utils/n;->b:Landroid/content/Context;

    invoke-direct {p1, v0, v3}, Lcom/unionpay/mobile/android/net/c;-><init>(Lcom/unionpay/mobile/android/net/d;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/c;

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/c;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/net/c;->a()I

    move-result p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/utils/n;->a:Lcom/unionpay/mobile/android/net/c;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/net/c;->b()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/utils/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[ response msg ] "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/utils/n;->e()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    return-object v2
.end method
