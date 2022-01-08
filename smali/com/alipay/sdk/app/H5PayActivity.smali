.class public Lcom/alipay/sdk/app/H5PayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/alipay/sdk/widget/g;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    :try_start_0
    invoke-super {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 121
    sget-object v0, Lcom/alipay/sdk/app/PayTask;->a:Ljava/lang/Object;

    .line 122
    monitor-enter v0

    .line 124
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 127
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->a()V

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    instance-of v1, v0, Lcom/alipay/sdk/widget/h;

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->b()Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 109
    :cond_1
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/app/j;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/alipay/sdk/app/H5PayActivity;->b()V

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object p1

    if-nez p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 54
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setRequestedOrientation(I)V

    .line 57
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    .line 59
    invoke-static {v1}, Lcom/alipay/sdk/util/n;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void

    :cond_2
    const-string v1, "cookie"

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->d:Ljava/lang/String;

    const-string v1, "method"

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->c:Ljava/lang/String;

    const-string/jumbo v1, "title"

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Ljava/lang/String;

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "v1"

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Ljava/lang/String;

    const-string v1, "backisexit"

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v0, "v2"

    .line 74
    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Lcom/alipay/sdk/widget/j;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/widget/j;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setContentView(Landroid/view/View;)V

    .line 77
    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/alipay/sdk/app/H5PayActivity;->f:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/j;->a(Ljava/lang/String;)V

    .line 79
    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    goto :goto_1

    .line 81
    :cond_3
    new-instance v0, Lcom/alipay/sdk/widget/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/sdk/widget/h;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    .line 82
    invoke-virtual {p0, v0}, Lcom/alipay/sdk/app/H5PayActivity;->setContentView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/sdk/app/H5PayActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/widget/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    iget-object v1, p0, Lcom/alipay/sdk/app/H5PayActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/widget/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "biz"

    const-string v2, "GetInstalledAppEx"

    .line 87
    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void

    .line 70
    :catch_0
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void

    .line 48
    :catch_1
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    iget-object v0, p0, Lcom/alipay/sdk/app/H5PayActivity;->a:Lcom/alipay/sdk/widget/g;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/g;->a()V

    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/sdk/app/H5PayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/sdk/sys/a$a;->a(Landroid/content/Intent;)Lcom/alipay/sdk/sys/a;

    move-result-object v0

    const-string v1, "biz"

    const-string v2, "H5PayDataAnalysisError"

    .line 150
    invoke-static {v0, v1, v2, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_0
    return-void
.end method
