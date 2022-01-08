.class final Lcom/alipay/sdk/app/statistic/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/sdk/app/statistic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v0

    const/4 v1, 0x0

    .line 204
    :try_start_0
    invoke-static {p0, v1, v1}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/alipay/sdk/app/statistic/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-class v0, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/alipay/sdk/app/statistic/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Lcom/alipay/sdk/app/statistic/a$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 197
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v0

    if-nez p0, :cond_0

    .line 211
    monitor-exit v0

    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-static {p0, p1, p2}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    :cond_1
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/app/statistic/b;

    invoke-direct {v1, p1, p0}, Lcom/alipay/sdk/app/statistic/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 192
    invoke-static {p0, p1}, Lcom/alipay/sdk/app/statistic/a$b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-class v0, Lcom/alipay/sdk/app/statistic/a$b;

    monitor-enter v0

    :try_start_0
    const-string v1, "mspl"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stat sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/data/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/sdk/packet/impl/d;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/d;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/alipay/sdk/packet/impl/e;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/e;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 252
    :try_start_1
    invoke-virtual {v1, v2, p0, p1}, Lcom/alipay/sdk/packet/e;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    invoke-static {p0, p1}, Lcom/alipay/sdk/app/statistic/a$a;->a(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 256
    monitor-exit v0

    return p0

    .line 258
    :cond_1
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    .line 261
    :try_start_2
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    monitor-exit v0

    return v3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
