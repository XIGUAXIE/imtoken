.class public Lcn/jiguang/aj/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcn/jiguang/ao/a;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "time"

    const-string v3, "lat"

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->f(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jiguang/f/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, ""

    if-nez v4, :cond_0

    move-object v8, v15

    goto :goto_0

    :cond_0
    move-object v8, v4

    :goto_0
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcn/jiguang/al/b;->a()Lcn/jiguang/al/b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/jiguang/al/b;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v0}, Lcn/jiguang/al/b;->a(Landroid/content/Context;)B

    move-result v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Login with - juid:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", appKey:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", sdkVersion:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", pluginPlatformType:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v13, "ConnectingHelper"

    invoke-static {v13, v5}, Lcn/jiguang/af/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcn/jiguang/al/b;->c()S

    move-result v4

    invoke-static/range {p0 .. p0}, Lcn/jiguang/f/g;->a(Landroid/content/Context;)I

    move-result v11

    invoke-static/range {p0 .. p0}, Lcn/jiguang/at/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    move-object/from16 v16, v15

    const-string v15, "get_loc_info"

    invoke-static {v0, v15, v5}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    instance-of v1, v5, Landroid/os/Bundle;

    if-eqz v1, :cond_1

    :try_start_0
    check-cast v5, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :try_start_1
    invoke-virtual {v5, v3, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-virtual {v15, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "lng"

    const-string v8, "lot"

    invoke-virtual {v5, v8, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-virtual {v15, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v15, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    goto :goto_1

    :catchall_1
    :cond_1
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    :goto_2
    invoke-static/range {p0 .. p0}, Lcn/jiguang/aj/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/f/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object/from16 v1, v16

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static/range {p0 .. p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "login - juid:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", flag:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " netType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " deviceId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " locInfo:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " countryCode:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " accountId:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sdkver:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcn/jiguang/aj/c;->c(Landroid/content/Context;)J

    move-result-wide v8

    int-to-long v4, v4

    move-wide/from16 v19, v4

    move-wide v4, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move v15, v11

    move-object/from16 v17, v12

    move-wide/from16 v11, v19

    move-object v3, v13

    move v13, v14

    move-object/from16 v20, v3

    move v3, v14

    move v14, v15

    move-object/from16 v21, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-static/range {v4 .. v18}, Lcn/jiguang/an/b;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JBILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pluginPlatformType:0b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v2, v3, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v20

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcn/jiguang/an/b;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    const/4 v3, -0x1

    if-eqz v0, :cond_9

    array-length v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_4

    goto/16 :goto_7

    :cond_4
    move-object/from16 v4, p1

    invoke-virtual {v4, v0}, Lcn/jiguang/ao/a;->a([B)I

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    const/16 v0, 0x4e20

    :try_start_2
    invoke-virtual {v4, v0}, Lcn/jiguang/ao/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_2
    .catch Lcn/jiguang/al/f; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object/from16 v4, v21

    invoke-static {v1, v0, v4}, Lcn/jiguang/an/a;->a(Landroid/content/Context;[BLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcn/jiguang/an/c;

    iget v4, v4, Lcn/jiguang/an/c;->c:I

    if-eq v4, v5, :cond_6

    goto :goto_5

    :cond_6
    new-instance v3, Lcn/jiguang/an/d;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcn/jiguang/an/c;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v4, v0}, Lcn/jiguang/an/d;-><init>(Lcn/jiguang/an/c;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3}, Lcn/jiguang/an/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v3, Lcn/jiguang/an/d;->a:I

    new-array v4, v5, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->f()Lcn/jiguang/g/a;

    move-result-object v5

    iget v6, v3, Lcn/jiguang/an/d;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    if-nez v0, :cond_7

    iget v4, v3, Lcn/jiguang/an/d;->b:I

    sput v4, Lcn/jiguang/internal/JConstants;->tcpSessionId:I

    iget v4, v3, Lcn/jiguang/an/d;->c:I

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v1, v4, v5}, Lcn/jiguang/ah/b;->a(Landroid/content/Context;J)V

    iget v3, v3, Lcn/jiguang/an/d;->d:I

    invoke-static {v1, v3}, Lcn/jiguang/ah/b;->b(Landroid/content/Context;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login succeed - sid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcn/jiguang/internal/JConstants;->tcpSessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", serverTime;"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login failed with server error - code:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/jiguang/aq/c;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v0

    :cond_8
    :goto_5
    const-string v0, "Login failed - can\'t parse a Login Response"

    :goto_6
    invoke-static {v2, v0}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Login failed - recv msg failed wit error:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    :goto_7
    return v3
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8

    const/16 v0, 0xb

    new-array v0, v0, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->J()Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {}, Lcn/jiguang/g/a;->K()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v3}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    invoke-static {v4}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v0, v6

    invoke-static {}, Lcn/jiguang/g/a;->O()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x4

    aput-object v1, v0, v7

    invoke-static {}, Lcn/jiguang/g/a;->L()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    invoke-static {}, Lcn/jiguang/g/a;->M()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x6

    aput-object v1, v0, v7

    invoke-static {v4}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v0, v7

    invoke-static {v3}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0x8

    aput-object v1, v0, v7

    invoke-static {v4}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0x9

    aput-object v1, v0, v7

    invoke-static {v3}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    const/16 v7, 0xa

    aput-object v1, v0, v7

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-array v0, v6, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->c()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {}, Lcn/jiguang/g/a;->d()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {}, Lcn/jiguang/g/a;->e()Lcn/jiguang/g/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/jiguang/aj/c;->a(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 4

    const-string v0, "ConnectingHelper"

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcn/jiguang/aq/c;->a(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register Failed with server error - code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local error description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcn/jiguang/al/b;->a()Lcn/jiguang/al/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1, p2}, Lcn/jiguang/al/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcn/jiguang/d/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0xb

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3f4

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2711

    const/4 v2, -0x1

    if-eq p1, v1, :cond_2

    const-string v1, " AppKey:"

    const-string/jumbo v3, "\u5305\u540d: "

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled server response error code - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u975eandroid AppKey"

    goto :goto_1

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u662f\u65e0\u6548\u7684AppKey,\u8bf7\u786e\u8ba4\u4e0eJIGUANG web\u7aef\u7684AppKey\u4e00\u81f4"

    goto :goto_1

    :pswitch_2
    const-string p0, "IMEI is duplicated reported by server. Give up now. "

    :goto_0
    invoke-static {v0, p0}, Lcn/jiguang/af/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u4e0d\u5b58\u5728"

    goto :goto_1

    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u4e0e AppKey:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "\u4e0d\u5339\u914d"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p0, p1, v2}, Lcn/jiguang/f/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    const-string p1, " \u672a\u5728manifest\u4e2d\u914d\u7f6eAppKey"

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcn/jiguang/aj/c;->a(Landroid/content/Context;)V

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static declared-synchronized a(Ljava/lang/String;I[BZI)[B
    .locals 3

    const-class v0, Lcn/jiguang/aj/c;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-eqz v1, :cond_1

    new-instance v1, Lcn/jiguang/aq/b;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Lcn/jiguang/aq/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/jiguang/aq/b;->b(I)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/jiguang/aq/b;->a([B)V

    int-to-long p0, p1

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/aq/b;->a(J)V

    invoke-virtual {v1, p4}, Lcn/jiguang/aq/b;->b(I)V

    invoke-virtual {v1, p2}, Lcn/jiguang/aq/b;->a([B)V

    invoke-virtual {v1}, Lcn/jiguang/aq/b;->a()I

    move-result p0

    invoke-virtual {v1, p0, v2}, Lcn/jiguang/aq/b;->b(II)V

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    int-to-byte v2, p0

    :cond_0
    or-int/lit8 p0, v2, 0x10

    int-to-byte p0, p0

    const/4 p1, 0x4

    invoke-virtual {v1, p0, p1}, Lcn/jiguang/aq/b;->a(II)V

    invoke-virtual {v1}, Lcn/jiguang/aq/b;->b()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "flag or body length error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    invoke-static {p1}, Lcn/jiguang/f/f;->i(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcn/jiguang/f/h;->a([B)[B

    move-result-object v2

    array-length v3, v2

    array-length v4, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v3, v4, :cond_0

    move-object p1, v2

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    invoke-static {}, Lcn/jiguang/at/d;->a()I

    move-result v4

    int-to-long v5, v4

    invoke-static {v5, v6}, Lcn/jiguang/at/d;->a(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v5, v1, v0}, Lcn/jiguang/at/d;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p1

    invoke-static {p0, v4, p1, v2, v3}, Lcn/jiguang/aj/c;->a(Ljava/lang/String;I[BZI)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B
    .locals 2

    const/16 v0, 0x1770

    invoke-virtual {p0, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    invoke-virtual {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-direct {v1, v0, p1}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string p1, "ConnectingHelper"

    const-string/jumbo v0, "udp Receiving..."

    invoke-static {p1, v0}, Lcn/jiguang/af/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p0

    new-array p1, p0, [B

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static a([B)[B
    .locals 8

    const-string v0, "decrypt response error"

    const/4 v1, 0x4

    if-eqz p0, :cond_3

    array-length v2, p0

    if-eqz v2, :cond_3

    :try_start_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    ushr-int/lit8 v3, v2, 0x18

    const v4, 0xffffff

    and-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v6, v2, [B

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    cmp-long p0, v4, v1

    if-eqz p0, :cond_1

    invoke-static {v4, v5}, Lcn/jiguang/at/d;->a(J)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x10

    const/4 v2, 0x5

    :try_start_1
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, p0, v1, v7}, Lcn/jiguang/at/d;->a([BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcn/jiguang/al/f;

    invoke-direct {p0, v2, v0}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance p0, Lcn/jiguang/al/f;

    invoke-direct {p0, v2, v0}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    and-int/lit8 v0, v3, 0x1

    if-ne v0, p0, :cond_2

    :try_start_2
    invoke-static {v6}, Lcn/jiguang/f/h;->b([B)[B

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-object v6

    :catchall_0
    move-exception p0

    new-instance v0, Lcn/jiguang/al/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse head error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Lcn/jiguang/al/f;

    const-string/jumbo v0, "response is empty!"

    invoke-direct {p0, v1, v0}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Lcn/jiguang/ao/a;)I
    .locals 10

    invoke-static {p0}, Lcn/jiguang/aj/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v0

    iget-object v3, v0, Lcn/jiguang/aq/a;->a:Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/aj/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcn/jiguang/aj/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/jiguang/al/b;->a()Lcn/jiguang/al/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/al/b;->b()S

    move-result v0

    int-to-long v6, v0

    invoke-static {p0}, Lcn/jiguang/d/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register with: key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", apkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",reg business:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " accountId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ConnectingHelper"

    invoke-static {v9, v0}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/aj/c;->c(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static/range {v0 .. v8}, Lcn/jiguang/an/b;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jiguang/an/b;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string p0, "Register failed - encrytor reg info failed"

    invoke-static {v9, p0}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, v0}, Lcn/jiguang/ao/a;->a([B)I

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Register failed - send reg info failed"

    invoke-static {v9, p0}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0x4e20

    :try_start_0
    invoke-virtual {p1, v0}, Lcn/jiguang/ao/a;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Lcn/jiguang/al/f; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/jiguang/an/a;->a(Landroid/content/Context;[BLjava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcn/jiguang/an/c;

    iget v0, v0, Lcn/jiguang/an/c;->c:I

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v0, Lcn/jiguang/an/e;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcn/jiguang/an/c;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, v2, p1}, Lcn/jiguang/an/e;-><init>(Lcn/jiguang/an/c;Ljava/nio/ByteBuffer;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register response:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v0, Lcn/jiguang/an/e;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/jiguang/g/a;

    const/4 v3, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->B()Lcn/jiguang/g/a;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    if-nez p1, :cond_5

    iget-wide v2, v0, Lcn/jiguang/an/e;->b:J

    iget-object v4, v0, Lcn/jiguang/an/e;->c:Ljava/lang/String;

    iget-object v5, v0, Lcn/jiguang/an/e;->d:Ljava/lang/String;

    iget-object v0, v0, Lcn/jiguang/an/e;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Register succeed - juid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", registrationId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcn/jiguang/af/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcn/jiguang/f/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v8, v6, v2

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lcn/jiguang/ah/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcn/jiguang/ah/b;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "Unexpected: registrationId/juid should not be empty. "

    invoke-static {v9, p0}, Lcn/jiguang/af/c;->j(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_5
    :goto_1
    return p1

    :cond_6
    :goto_2
    const-string p0, "Register failed - can\'t parse a Register Response"

    invoke-static {v9, p0}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Register failed - recv msg failed with error:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Lcn/jiguang/af/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/jiguang/f/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/jiguang/g/a;

    const/4 v1, 0x1

    invoke-static {v1}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v0, v4

    invoke-static {v4}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)J
    .locals 11

    const-class v0, Lcn/jiguang/aj/c;

    monitor-enter v0

    const/16 v1, 0x2710

    :try_start_0
    invoke-static {}, Lcn/jiguang/g/a;->H()Lcn/jiguang/g/a;

    move-result-object v2

    invoke-static {p0, v2}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    :cond_0
    const-wide/16 v4, 0x2

    rem-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    const-wide/16 v4, 0x1

    :cond_1
    add-long/2addr v2, v4

    int-to-long v4, v1

    rem-long/2addr v2, v4

    const/4 v1, 0x1

    new-array v1, v1, [Lcn/jiguang/g/a;

    const/4 v4, 0x0

    invoke-static {}, Lcn/jiguang/g/a;->H()Lcn/jiguang/g/a;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {p0, v1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcn/jiguang/aq/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v1

    iget-object v1, v1, Lcn/jiguang/aq/a;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-static {v0, v3}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/jiguang/d/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcn/jiguang/al/b;->a()Lcn/jiguang/al/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/jiguang/al/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "regVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectingHelper"

    invoke-static {v2, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcn/jiguang/aq/a;->b:Ljava/lang/String;

    const-string v4, " "

    invoke-static {v3, v4}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/jiguang/aq/a;->c:Ljava/lang/String;

    invoke-static {v5, v4}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/jiguang/aq/a;->d:Ljava/lang/String;

    invoke-static {v5, v4}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/jiguang/aq/a;->e:Ljava/lang/String;

    invoke-static {v5, v4}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcn/jiguang/d/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcn/jiguang/aq/a;->g:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lcn/jiguang/aq/a;->h:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v0

    iget-object v0, v0, Lcn/jiguang/aq/a;->j:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_0

    move-object v0, v2

    :cond_0
    invoke-static {p0}, Lcn/jiguang/at/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcn/jiguang/at/b;->a:I

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v4

    iget-object v4, v4, Lcn/jiguang/aq/a;->p:Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/aq/a;->a(Landroid/content/Context;)Lcn/jiguang/aq/a;

    move-result-object v5

    iget-object v5, v5, Lcn/jiguang/aq/a;->i:Ljava/lang/String;

    invoke-static {p0}, Lcn/jiguang/d/a;->l(Landroid/content/Context;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_1

    invoke-static {p0, v7}, Lcn/jiguang/f/a;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v7

    :goto_0
    const/4 v8, 0x0

    const-string v9, "get_all_ids"

    invoke-static {p0, v9, v8}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    instance-of v8, p0, Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parse ids:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ConnectingHelper"

    invoke-static {v9, v8}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lorg/json/JSONObject;

    const-string/jumbo v8, "udid"

    invoke-virtual {p0, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oaid"

    invoke-virtual {p0, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "vaid"

    invoke-virtual {p0, v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "aaid"

    invoke-virtual {p0, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "gadid"

    invoke-virtual {p0, v12, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object p0, v7

    move-object v7, v8

    goto :goto_1

    :cond_2
    move-object p0, v7

    move-object v9, p0

    move-object v10, v9

    move-object v11, v10

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "$$"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v2}, Lcn/jiguang/aj/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcn/jiguang/api/JCoreManager;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/jiguang/internal/JConstants;->testCountry:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Lcn/jiguang/f/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
