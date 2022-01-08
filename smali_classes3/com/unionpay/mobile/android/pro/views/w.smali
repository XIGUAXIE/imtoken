.class final Lcom/unionpay/mobile/android/pro/views/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/v;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/v;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "1003100020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/v;->b(Lcom/unionpay/mobile/android/pro/views/v;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/v;->c(Lcom/unionpay/mobile/android/pro/views/v;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    const-string v1, "fail"

    invoke-static {p1, v0, v1}, Lcom/unionpay/mobile/android/pro/views/v;->a(Lcom/unionpay/mobile/android/pro/views/v;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/v;->d(Lcom/unionpay/mobile/android/pro/views/v;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pro/views/v;->b(Lcom/unionpay/mobile/android/pro/views/v;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unionpay/mobile/android/model/a;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/pro/views/v;->a(Lcom/unionpay/mobile/android/pro/views/v;Lcom/unionpay/mobile/android/model/a;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/w;->a:Lcom/unionpay/mobile/android/pro/views/v;

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/v;->a(Lcom/unionpay/mobile/android/pro/views/v;)Lcom/unionpay/mobile/android/model/b;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pro/views/v;->a(Lcom/unionpay/mobile/android/pro/views/v;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
