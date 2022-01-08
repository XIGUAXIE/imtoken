.class public Lcom/unionpay/mobile/android/pro/views/h;
.super Lcom/unionpay/mobile/android/nocard/views/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/l;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/h;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/h;->w()V

    return-void
.end method


# virtual methods
.method public final v()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "uppay-pro"

    const-string v1, "checkAndGetSDCardsList +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "00"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/h;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "95"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/h;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/plugin/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/h;->y()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v1

    new-instance v2, Lcom/unionpay/mobile/android/pro/views/i;

    invoke-direct {v2, p0}, Lcom/unionpay/mobile/android/pro/views/i;-><init>(Lcom/unionpay/mobile/android/pro/views/h;)V

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/h;->y()Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a(Lcom/unionpay/mobile/android/pro/pboc/engine/a;Z)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/a;->a(Ljava/util/ArrayList;)V

    :goto_2
    const-string v0, "uppay-pro"

    const-string v1, "checkAndGetSDCardsList ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public y()Lcom/unionpay/mobile/android/pro/pboc/engine/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
