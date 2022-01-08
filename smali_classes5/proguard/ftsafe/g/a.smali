.class public Lproguard/ftsafe/g/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lproguard/ftsafe/g/e;


# direct methods
.method public static a(Landroid/content/Context;Lproguard/ftsafe/b/b;ILjava/util/List;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lproguard/ftsafe/b/b;",
            "I",
            "Ljava/util/List<",
            "Lproguard/ftsafe/g/b;",
            ">;",
            "Lproguard/ftsafe/g/f;",
            ")",
            "Lproguard/ftsafe/b/d;"
        }
    .end annotation

    const-string v0, "BluetoothScan"

    const-string v1, "btCommStartScan enter"

    invoke-static {v0, v1}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    sget-object v0, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lproguard/ftsafe/g/e;->a()Lproguard/ftsafe/b/d;

    :cond_0
    sget-object v0, Lproguard/ftsafe/b/b;->a:Lproguard/ftsafe/b/b;

    if-ne p1, v0, :cond_1

    sget-object p1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    instance-of p1, p1, Lproguard/ftsafe/h/a;

    if-nez p1, :cond_2

    new-instance p1, Lproguard/ftsafe/h/a;

    invoke-direct {p1}, Lproguard/ftsafe/h/a;-><init>()V

    :goto_0
    sput-object p1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    goto :goto_1

    :cond_1
    sget-object v0, Lproguard/ftsafe/b/b;->b:Lproguard/ftsafe/b/b;

    if-ne p1, v0, :cond_3

    sget-object p1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    instance-of p1, p1, Lproguard/ftsafe/i/b;

    if-nez p1, :cond_2

    new-instance p1, Lproguard/ftsafe/i/b;

    invoke-direct {p1}, Lproguard/ftsafe/i/b;-><init>()V

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    invoke-interface {p1, p0, p2, p3, p4}, Lproguard/ftsafe/g/e;->a(Landroid/content/Context;ILjava/util/List;Lproguard/ftsafe/g/f;)Lproguard/ftsafe/b/d;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Lproguard/ftsafe/b/d;->g:Lproguard/ftsafe/b/d;

    return-object p0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Lproguard/ftsafe/g/a;

    monitor-enter v0

    :try_start_0
    const-string v1, "BluetoothScan"

    const-string v2, "btCommstopScan enter"

    invoke-static {v1, v2}, Lcom/ftsafe/bluetooth/sdk/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)I

    sget-object v1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    if-eqz v1, :cond_0

    sget-object v1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;

    invoke-interface {v1}, Lproguard/ftsafe/g/e;->a()Lproguard/ftsafe/b/d;

    const/4 v1, 0x0

    sput-object v1, Lproguard/ftsafe/g/a;->a:Lproguard/ftsafe/g/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
