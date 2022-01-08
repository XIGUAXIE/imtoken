.class public final Lcom/unionpay/mobile/android/nocard/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/unionpay/mobile/android/callback/UPAndroidCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/unionpay/mobile/android/model/b;)V
    .locals 10

    const-string v0, "exit() +++"

    const-string v1, "uppay"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reqId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v3, v3, Lcom/unionpay/mobile/android/plugin/c;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    check-cast v2, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v3, v3, Lcom/unionpay/mobile/android/plugin/c;->a:I

    const/4 v4, -0x1

    const-string v5, "pay_result"

    if-eqz v3, :cond_7

    const/16 v6, 0x3e8

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    const/4 v9, 0x2

    if-eq v3, v9, :cond_7

    const/4 v9, 0x3

    if-eq v3, v9, :cond_0

    if-eq v3, v7, :cond_1

    const/4 v9, 0x5

    if-eq v3, v9, :cond_7

    if-eq v3, v6, :cond_1

    goto/16 :goto_4

    :cond_0
    const-string v3, "notifyTencentJarResult() +++"

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v6, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->h:Ljava/lang/String;

    const-string v6, "tencentWID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->g:Ljava/lang/String;

    const-string v6, "tencentUID"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->j:Ljava/lang/String;

    const-string v6, "bankInfo"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->k:Ljava/lang/String;

    const-string v6, "cardType"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->i:Ljava/lang/String;

    const-string v6, "cardNo"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const-string v3, "notifyTencentJarResult() ---"

    :goto_0
    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    const-string v3, " notifyBrowserResult() +++ "

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "1"

    goto :goto_1

    :cond_2
    const-string v5, "cancel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "-1"

    goto :goto_1

    :cond_3
    const-string v4, "0"

    :goto_1
    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v5, v5, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.UCMobile.PluginApp.ActivityState"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "ActivityState"

    const-string v7, "inactive"

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.unionpay.uppay.resultURL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, " uc browser "

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v5, v5, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, " other browser "

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " result Action="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v7, v7, Lcom/unionpay/mobile/android/plugin/c;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;

    const-string v7, "exit"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/unionpay/mobile/android/model/b;->r:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "result URL= "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget v5, v5, Lcom/unionpay/mobile/android/plugin/c;->a:I

    if-ne v6, v5, :cond_6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    :cond_6
    const-string v5, "ResultURL"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v3, " notifyBrowserResult() --- "

    goto/16 :goto_0

    :cond_7
    const-string v3, "notifyAppResult() +++"

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v6, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->bj:Ljava/lang/String;

    const-string v6, "result_data"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    iget-boolean v5, p1, Lcom/unionpay/mobile/android/model/b;->U:Z

    if-nez v5, :cond_8

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    const-string v6, "notify_url"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    const-string v6, "notify_msg"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    const-string v6, "qn"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->k:Ljava/lang/String;

    const-string v6, "sid"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/lang/String;

    const-string v6, "secret"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    sget-object v5, Lcom/unionpay/mobile/android/nocard/utils/d;->a:Lcom/unionpay/mobile/android/callback/UPAndroidCallback;

    if-eqz v5, :cond_a

    iget-object v6, p1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    iget-object v8, p1, Lcom/unionpay/mobile/android/model/b;->k:Ljava/lang/String;

    iget-object v9, p1, Lcom/unionpay/mobile/android/model/b;->l:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/unionpay/mobile/android/callback/UPAndroidCallback;->UPAndroidOK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object v5, v2

    check-cast v5, Lcom/unionpay/mobile/android/plugin/BaseActivity;

    invoke-virtual {v5, v4, v3}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setResult(ILandroid/content/Intent;)V

    const-string v3, "notifyAppResult() ---"

    goto/16 :goto_0

    :cond_b
    :goto_4
    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    iget-boolean v3, p1, Lcom/unionpay/mobile/android/model/b;->U:Z

    iget-object v4, p1, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/unionpay/mobile/android/nocard/utils/e;

    invoke-direct {v5, v4, p1, p0}, Lcom/unionpay/mobile/android/nocard/utils/e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_c
    invoke-virtual {v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->finish()V

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
