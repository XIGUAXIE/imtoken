.class public Lcn/jiguang/c/a;
.super Lcn/jiguang/api/JDispatchAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/api/JDispatchAction;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;JILjava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0x13

    if-eq p4, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p4, v0, :cond_3

    const/16 v0, 0x20

    if-eq p4, v0, :cond_3

    const/16 v0, 0x19

    if-eq p4, v0, :cond_2

    const/16 v0, 0x1a

    if-eq p4, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p4

    if-nez p4, :cond_1

    invoke-static {}, Lcn/jiguang/al/k;->a()Lcn/jiguang/al/k;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcn/jiguang/al/k;->a(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcn/jiguang/al/k;->a()Lcn/jiguang/al/k;

    move-result-object p5

    invoke-virtual {p5, p1, p2, p3, p4}, Lcn/jiguang/al/k;->a(Landroid/content/Context;JI)V

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    const-string p4, "RESPONSE_BODY"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p3, "cmd"

    invoke-static {p1, p3, p2}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jiguang/e/a;->b()Lcn/jiguang/e/a;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p4}, Lcn/jiguang/e/a;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcn/jiguang/al/h;->a()Lcn/jiguang/al/h;

    move-result-object p2

    const/4 p3, 0x0

    const-string/jumbo p4, "tcp_a18"

    invoke-virtual {p2, p1, p4, p3}, Lcn/jiguang/al/h;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/content/Context;Ljava/lang/String;IIJJLjava/nio/ByteBuffer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p7

    move v4, p3

    move-object v5, p9

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcn/jiguang/c/a;->a(Landroid/content/Context;JILjava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "dispatchMessage failed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JCoreDispatchAction"

    invoke-static {p2, p1}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLogPriority(Ljava/lang/String;)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getLoginFlag(Ljava/lang/String;)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRegFlag(Ljava/lang/String;)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRegPriority(Ljava/lang/String;)S
    .locals 0

    const/4 p1, 0x3

    return p1
.end method

.method public getReportVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p1, "core_sdk_ver"

    return-object p1
.end method

.method public getSdkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p1, Lcn/jiguang/a/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public getUserCtrlProperty(Ljava/lang/String;)S
    .locals 0

    const/4 p1, 0x6

    return p1
.end method

.method public handleMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public isSupportedCMD(Ljava/lang/String;I)Z
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    const/16 v0, 0x13

    if-eq p2, v0, :cond_1

    const/16 v0, 0x19

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1a

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p2, v0, :cond_1

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public onActionRun(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10

    const-string p2, "onActionRun failed:"

    const-string v0, "JCoreDispatchAction"

    if-eqz p4, :cond_9

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "asm"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/jiguang/e/a;->b()Lcn/jiguang/e/a;

    move-result-object p3

    invoke-virtual {p3, p1, p4}, Lcn/jiguang/e/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "asmr"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/jiguang/e/a;->b()Lcn/jiguang/e/a;

    move-result-object p3

    invoke-virtual {p3, p1, p4}, Lcn/jiguang/e/a;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "lbsenable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {p1, p3, p4}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_9

    const-string p3, "enable"

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    new-array p4, v3, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->z()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p3

    aput-object p3, p4, v2

    invoke-static {p1, p4}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "lbsforenry"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_5

    :try_start_1
    const-string p3, "forenry"

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLbsPermissionDialogShieldDelay="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/g/a;->x()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    new-array v1, v3, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->x()Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_3
    new-array v1, v3, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->y()Lcn/jiguang/g/a;

    move-result-object v3

    cmp-long v4, p3, v6

    if-lez v4, :cond_4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v3, p3}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p3

    aput-object p3, v1, v2

    invoke-static {p1, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/af/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v1, "notification_state"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    invoke-static {p1, p3, p4}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v1, "old_cmd"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_7
    const-string/jumbo v1, "user_present"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "set_wake_enable"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_9

    goto :goto_1

    :catchall_1
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method
