.class public Lcom/alipay/sdk/tid/TidHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;
    .locals 4

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance p0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/sdk/tid/b;->i()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 141
    :try_start_0
    new-instance v1, Lcom/alipay/sdk/packet/impl/c;

    invoke-direct {v1}, Lcom/alipay/sdk/packet/impl/c;-><init>()V

    .line 142
    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/alipay/sdk/packet/impl/c;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Lcom/alipay/sdk/packet/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 145
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/sdk/packet/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v1

    const-string/jumbo v3, "tid"

    .line 147
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "client_key"

    .line 148
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {v1, v3, v2}, Lcom/alipay/sdk/tid/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-static {p0, v1}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static clearTID(Landroid/content/Context;)V
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->g()V

    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 117
    invoke-static {p0}, Lcom/alipay/sdk/util/a;->a(Landroid/content/Context;)Lcom/alipay/sdk/util/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/sdk/util/a;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getTIDValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/Tid;->getTid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVirtualImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 121
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVirtualImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 127
    invoke-static {}, Lcom/alipay/sdk/data/c;->b()Lcom/alipay/sdk/data/c;

    invoke-static {}, Lcom/alipay/sdk/data/c;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadLocalTid(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 5

    .line 173
    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 179
    :cond_0
    new-instance v0, Lcom/alipay/sdk/tid/Tid;

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/sdk/tid/b;->i()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/sdk/tid/Tid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static declared-synchronized loadOrCreateTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 4

    const-class v0, Lcom/alipay/sdk/tid/TidHelper;

    monitor-enter v0

    :try_start_0
    const-string v1, "mspl"

    const-string v2, "load_create_tid"

    .line 51
    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 53
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    .line 56
    monitor-exit v0

    return-object p0

    .line 59
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catchall_0
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadTID(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;
    .locals 2

    .line 35
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 36
    invoke-static {p0}, Lcom/alipay/sdk/tid/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/tid/b;

    move-result-object v0

    .line 37
    invoke-static {p0, v0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;Lcom/alipay/sdk/tid/b;)Lcom/alipay/sdk/tid/Tid;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "mspl"

    const-string v1, "load_tid null"

    .line 39
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static resetTID(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "mspl"

    const-string/jumbo v1, "reset_tid"

    .line 82
    invoke-static {v0, v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 86
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->a(Landroid/content/Context;)V

    .line 88
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->clearTID(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/tid/TidHelper;->b(Landroid/content/Context;)Lcom/alipay/sdk/tid/Tid;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 96
    :goto_0
    invoke-static {v0}, Lcom/alipay/sdk/tid/Tid;->isEmpty(Lcom/alipay/sdk/tid/Tid;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Must be called on worker thread"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
