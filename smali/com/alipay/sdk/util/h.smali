.class Lcom/alipay/sdk/util/h;
.super Lcom/alipay/android/app/IRemoteServiceCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/util/e;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-direct {p0}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isHideLoadingScreen()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public payEnd(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "ErrActNull"

    const-string v1, "biz"

    .line 570
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez p4, :cond_0

    .line 573
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    :try_start_0
    const-string v3, "CallingPid"

    .line 576
    invoke-virtual {p4, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    invoke-virtual {v2, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 579
    iget-object p4, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p4}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object p4

    const-string v3, "ErrIntentEx"

    invoke-static {p4, v1, v3, p3}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    :goto_0
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    :try_start_1
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->c(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p2, ""

    if-eqz p1, :cond_1

    .line 586
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 587
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->c(Lcom/alipay/sdk/util/e;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 588
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    const-string/jumbo v2, "stAct2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_1
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    invoke-static {p1, v1, v0, p2}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/sdk/sys/a;->b()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 594
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p1}, Lcom/alipay/sdk/util/e;->d(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/util/e$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/sdk/util/e$a;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 598
    iget-object p2, p0, Lcom/alipay/sdk/util/h;->a:Lcom/alipay/sdk/util/e;

    invoke-static {p2}, Lcom/alipay/sdk/util/e;->a(Lcom/alipay/sdk/util/e;)Lcom/alipay/sdk/sys/a;

    move-result-object p2

    invoke-static {p2, v1, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    throw p1
.end method
