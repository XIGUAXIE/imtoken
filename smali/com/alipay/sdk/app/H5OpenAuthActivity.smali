.class public Lcom/alipay/sdk/app/H5OpenAuthActivity;
.super Lcom/alipay/sdk/app/H5PayActivity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 59
    iget-object v2, v0, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :catchall_0
    :cond_0
    invoke-super {p0}, Lcom/alipay/sdk/app/H5PayActivity;->onDestroy()V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 4

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 37
    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lcom/alipay/sdk/app/H5PayActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alipays://platformapi/startapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, "null"

    :goto_1
    const-string v2, "biz"

    const-string v3, "StartActivityEx"

    .line 40
    invoke-static {v0, v2, v3, v1, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/alipay/sdk/app/H5OpenAuthActivity;->a:Z

    .line 42
    throw v1

    .line 33
    :catchall_1
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5OpenAuthActivity;->finish()V

    return-void
.end method
