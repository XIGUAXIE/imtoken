.class public Lcn/jiguang/o/b;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "JCommon"

    invoke-static {v0}, Lcn/jiguang/l/d;->a(Ljava/lang/String;)V

    const-string v0, "JLocation"

    invoke-static {v0}, Lcn/jiguang/l/d;->a(Ljava/lang/String;)V

    const-string v0, "JArp"

    invoke-static {v0}, Lcn/jiguang/l/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/Bundle;

    const-string v0, "login"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const-string v4, "JCommonActionHelper"

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "context is null,give up continue"

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "action is null,give up continue"

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v15, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "get_imei"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "service_create"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "on_register"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_3
    const-string v5, "filter_pkg_list"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "user_present"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_1

    :sswitch_5
    const-string v5, "getwakeenable"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_6
    const-string v5, "deviceinfo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "periodtask"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_8
    const-string v5, "get_loc_info"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_9
    const-string v5, "get_all_ids"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const-string/jumbo v5, "screen"

    :goto_2
    invoke-static {v0, v5}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v0, ""

    return-object v0

    :pswitch_2
    const-string/jumbo v5, "start"

    invoke-static {v0, v5}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/ap/b;->a()Lcn/jiguang/ap/b;

    move-result-object v5

    const/16 v6, 0xbb8

    const-wide/16 v7, 0xbb8

    new-instance v9, Lcn/jiguang/o/b$1;

    invoke-direct {v9}, Lcn/jiguang/o/b$1;-><init>()V

    invoke-virtual {v5, v6, v7, v8, v9}, Lcn/jiguang/ap/b;->b(IJLcn/jiguang/ap/a;)V

    goto :goto_3

    :pswitch_3
    invoke-static/range {p0 .. p0}, Lcn/jiguang/q/a;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Lcn/jiguang/m/b;->a()Lcn/jiguang/m/b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/jiguang/m/b;->f(Landroid/content/Context;)V

    const-string/jumbo v5, "register"

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcn/jiguang/m/b;->a()Lcn/jiguang/m/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/m/b;->e(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-static {v0, v2}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_7
    invoke-static/range {p0 .. p0}, Lcn/jiguang/ab/a;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-static {}, Lcn/jiguang/w/a;->a()Lcn/jiguang/w/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/w/a;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-static {v0, v2}, Lcn/jiguang/o/b;->a(Landroid/content/Context;Ljava/lang/Object;)V

    :goto_3
    instance-of v5, v2, Landroid/os/Bundle;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Landroid/os/Bundle;

    goto :goto_4

    :cond_3
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto :goto_5

    :sswitch_a
    const-string/jumbo v6, "set_sdktype_info"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x6

    goto :goto_6

    :sswitch_b
    const-string/jumbo v6, "set_wake_enable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x8

    goto :goto_6

    :sswitch_c
    const-string v6, "lbsforenry"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_6

    :sswitch_d
    const-string/jumbo v6, "waked"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x5

    goto :goto_6

    :sswitch_e
    const-string v6, "cmd"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    goto :goto_6

    :sswitch_f
    const-string/jumbo v6, "set_ctrl_url"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    goto :goto_6

    :sswitch_10
    const-string v6, "lbsenable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_6

    :sswitch_11
    const-string v6, "init_local_ctrl"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_6

    :sswitch_12
    const-string v6, "notification_state"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_4

    const/4 v6, 0x7

    goto :goto_6

    :cond_4
    :goto_5
    const/4 v6, -0x1

    :goto_6
    const-string v7, "enable"

    packed-switch v6, :pswitch_data_1

    :pswitch_a
    goto :goto_8

    :pswitch_b
    :try_start_1
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v0, v5}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Z)V

    goto :goto_8

    :pswitch_c
    const-string/jumbo v6, "scence"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0, v5}, Lcn/jiguang/z/a;->a(Landroid/content/Context;I)V

    goto :goto_8

    :pswitch_d
    invoke-static {}, Lcn/jiguang/aa/a;->a()Lcn/jiguang/aa/a;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcn/jiguang/aa/a;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_8

    :pswitch_e
    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "from_package"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v0, "[waked]empty packageName waked from "

    :goto_7
    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_5
    if-ne v6, v15, :cond_6

    const-string v0, "[waked]wrong waked type"

    goto :goto_7

    :cond_6
    invoke-static {v0, v5, v6}, Lcn/jiguang/ad/e;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_8

    :pswitch_f
    invoke-static {v0, v5}, Lcn/jiguang/o/b;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_8

    :pswitch_10
    const-string/jumbo v0, "test_wake_controll_url"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/ad/b;->a:Ljava/lang/String;

    goto :goto_8

    :pswitch_11
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setLBSEnable] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "JLocation"

    invoke-static {v0, v6, v5}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_7
    :goto_8
    instance-of v0, v2, Landroid/content/Intent;

    if-eqz v0, :cond_8

    move-object v0, v2

    check-cast v0, Landroid/content/Intent;

    goto :goto_9

    :cond_8
    move-object v0, v3

    :goto_9
    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x5d2c6cb8

    if-eq v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const-string v0, "get_receiver"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEvent throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_a
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31c9f8cf -> :sswitch_9
        -0x170faea -> :sswitch_8
        0x16f6e2c6 -> :sswitch_7
        0x2e996804 -> :sswitch_6
        0x3008c7fd -> :sswitch_5
        0x47f71047 -> :sswitch_4
        0x5d6cc418 -> :sswitch_3
        0x62f97d03 -> :sswitch_2
        0x741bd1c6 -> :sswitch_1
        0x75ccb011 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x588bebc3 -> :sswitch_12
        -0x38ec52b2 -> :sswitch_11
        -0x38ec3a80 -> :sswitch_10
        -0x293d3328 -> :sswitch_f
        0x1813a -> :sswitch_e
        0x6baa340 -> :sswitch_d
        0x52f0f49c -> :sswitch_c
        0x76f5c821 -> :sswitch_b
        0x7afbc456 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private static a(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "JCommonActionHelper"

    :try_start_0
    const-string v1, "RESPONSE_BODY"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    sput-wide v1, Lcn/jiguang/o/b;->a:J

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseBundle2Json content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseBundle2Json exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 6

    invoke-static {}, Lcn/jiguang/o/d;->a()J

    move-result-wide v0

    invoke-static {p0, p1}, Lcn/jiguang/n/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    sget-wide v2, Lcn/jiguang/o/b;->a:J

    invoke-static {v2, v3, p1}, Lcn/jiguang/o/d;->a(JLjava/lang/String;)[B

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "cmd"

    const/16 v5, 0x19

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "ver"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "rid"

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "timeout"

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "body"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tcp report deviceInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JCommonActionHelper"

    invoke-static {v0, p1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0, v3}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lcn/jiguang/o/b;->a(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcn/jiguang/o/b;->a(Landroid/content/Context;I)V

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_5

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-eq v0, v1, :cond_3

    const/16 v1, 0x37

    if-eq v0, v1, :cond_2

    const/16 p1, 0x46

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/jiguang/i/b;->a()Lcn/jiguang/i/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/i/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1}, Lcn/jiguang/ab/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcn/jiguang/d/a;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcn/jiguang/w/a;->a()Lcn/jiguang/w/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/jiguang/w/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcn/jiguang/i/b;->a()Lcn/jiguang/i/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/i/b;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcn/jiguang/d/a;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/jiguang/w/a;->a()Lcn/jiguang/w/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/jiguang/w/a;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcn/jiguang/o/b;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p0, p1}, Lcn/jiguang/z/a;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcn/jiguang/m/b;->a()Lcn/jiguang/m/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/m/b;->b(Landroid/content/Context;)V

    invoke-static {}, Lcn/jiguang/m/c;->a()Lcn/jiguang/m/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/m/c;->b(Landroid/content/Context;)V

    const-string p1, "heartbeat"

    invoke-static {p0, p1}, Lcn/jiguang/ab/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/jiguang/ab/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {}, Lcn/jiguang/ab/c;->a()Lcn/jiguang/ab/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/jiguang/ab/c;->b(Landroid/content/Context;)V

    return-void
.end method
