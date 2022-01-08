.class public Lcn/jiguang/w/a;
.super Lcn/jiguang/l/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jiguang/w/a$b;,
        Lcn/jiguang/w/a$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcn/jiguang/w/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/l/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcn/jiguang/w/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(JDD)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "lot"

    invoke-virtual {v0, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "lat"

    invoke-virtual {v0, p1, p5, p6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method public static a()Lcn/jiguang/w/a;
    .locals 2

    sget-object v0, Lcn/jiguang/w/a;->b:Lcn/jiguang/w/a;

    if-nez v0, :cond_0

    const-class v0, Lcn/jiguang/w/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcn/jiguang/w/a;

    invoke-direct {v1}, Lcn/jiguang/w/a;-><init>()V

    sput-object v1, Lcn/jiguang/w/a;->b:Lcn/jiguang/w/a;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lcn/jiguang/w/a;->b:Lcn/jiguang/w/a;

    return-object v0
.end method

.method private a(Ljava/util/List;Lcn/jiguang/x/a;Lcn/jiguang/x/b;)Lorg/json/JSONObject;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jiguang/x/c;",
            ">;",
            "Lcn/jiguang/x/a;",
            "Lcn/jiguang/x/b;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v6, "signal_strength"

    const-string/jumbo v7, "tag"

    const-string v8, "itime"

    const/4 v9, 0x0

    const-string v11, "JLocation"

    if-eqz v2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/jiguang/x/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v17, v11

    :try_start_1
    iget-wide v10, v15, Lcn/jiguang/x/c;->a:J

    invoke-virtual {v0, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v10, v15, Lcn/jiguang/x/c;->c:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, v15, Lcn/jiguang/x/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo v10, "ssid"

    iget-object v11, v15, Lcn/jiguang/x/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "mac_address"

    iget-object v11, v15, Lcn/jiguang/x/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v10, v15, Lcn/jiguang/x/c;->d:I

    invoke-virtual {v0, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v10, "age"

    invoke-virtual {v0, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "wifi"

    invoke-virtual {v5, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v10, v17

    const/4 v14, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v17, v11

    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "package wifi json exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, v17

    invoke-static {v10, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move-object v11, v10

    goto :goto_0

    :cond_1
    move-object v10, v11

    move v9, v14

    goto :goto_3

    :cond_2
    move-object v10, v11

    :goto_3
    if-eqz v3, :cond_3

    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-wide v11, v3, Lcn/jiguang/x/a;->a:J

    invoke-virtual {v2, v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v11, "radio_type"

    iget-object v12, v3, Lcn/jiguang/x/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "generation"

    iget-object v12, v3, Lcn/jiguang/x/a;->h:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "carrier"

    iget-object v12, v3, Lcn/jiguang/x/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "mobile_country_code"

    iget v12, v3, Lcn/jiguang/x/a;->b:I

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v11, "mobile_network_code"

    iget v12, v3, Lcn/jiguang/x/a;->c:I

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v11, v3, Lcn/jiguang/x/a;->f:I

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "cell_id"

    iget v11, v3, Lcn/jiguang/x/a;->e:I

    invoke-virtual {v2, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "location_area_code"

    iget v3, v3, Lcn/jiguang/x/a;->d:I

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "cell"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v9, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package cell json exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    if-eqz v4, :cond_4

    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-wide v11, v4, Lcn/jiguang/x/b;->a:J

    invoke-virtual {v2, v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v4, Lcn/jiguang/x/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "lat"

    iget-wide v6, v4, Lcn/jiguang/x/b;->c:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "lng"

    iget-wide v6, v4, Lcn/jiguang/x/b;->d:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "alt"

    iget-wide v6, v4, Lcn/jiguang/x/b;->e:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "bear"

    iget-wide v6, v4, Lcn/jiguang/x/b;->f:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v3, "acc"

    iget-wide v6, v4, Lcn/jiguang/x/b;->g:D

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "gps"

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v16, 0x1

    goto :goto_5

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package gps json exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move/from16 v16, v9

    :goto_5
    if-eqz v16, :cond_5

    :try_start_4
    iget-object v0, v1, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    const-string v2, "loc_info"

    invoke-static {v0, v5, v2}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v0, "local_dns"

    invoke-static {}, Lcn/jiguang/l/d;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network_type"

    iget-object v2, v1, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/jiguang/l/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package json exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_6
    return-object v5
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",cacheJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JLocation"

    invoke-static {v1, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string v0, "content"

    if-nez p2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object p2, v2

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeJson exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    :goto_1
    return-object v2

    :cond_1
    :try_start_2
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "cell"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "gps"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_6

    :try_start_3
    const-string v2, "network_type"

    iget-object v3, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcn/jiguang/l/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "local_dns"

    invoke-static {}, Lcn/jiguang/l/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    const-string v3, "loc_info"

    invoke-static {v2, p1, v3}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package json exception:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-object p2
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    const-string p1, "JLocation"

    return-object p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    const-string p1, "cmd"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x0

    const-string v4, "JLocation"

    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    const/4 p1, 0x1

    const-string v5, "disable"

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    xor-int/2addr p1, v5

    iget-object v5, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    invoke-static {v5, v4, p1}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    const-string p1, "frequency"

    invoke-virtual {p2, p1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    mul-long p1, p1, v0

    iget-object v0, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    invoke-static {v0, v4, p1, p2}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x2d

    if-ne p1, v5, :cond_1

    const-string p1, "interval"

    invoke-virtual {p2, p1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    mul-long p1, p1, v0

    iget-object v0, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    invoke-static {v0, v4, p1, p2}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-string v0, ","

    const-string v1, "collect gps exception:"

    const-string v2, "collect cell exception:"

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v5, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v5}, Lcn/jiguang/l/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "JLocation"

    if-eqz v5, :cond_1

    invoke-static {p1}, Lcn/jiguang/l/d;->j(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcn/jiguang/w/d;

    invoke-direct {v5, p1}, Lcn/jiguang/w/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcn/jiguang/w/d;->a()Ljava/util/List;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "collect wifi success:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v5, "collect wifi failed because not enable to collect wifi list"

    goto :goto_0

    :cond_1
    const-string v5, "collect wifi failed because has no android.permission.ACCESS_WIFI_STATE"

    :goto_0
    invoke-static {v7, v5}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    :try_start_0
    invoke-static {p1, v4}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1, v3}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v8, "collect cell failed because has no Manifest.permission.LOCATION"

    invoke-static {v7, v8}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p1}, Lcn/jiguang/l/d;->m(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v9, Lcn/jiguang/w/a$a;

    invoke-direct {v9, p0}, Lcn/jiguang/w/a$a;-><init>(Lcn/jiguang/w/a;)V

    invoke-direct {v8, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v8}, Lcn/jiguang/l/d;->b(Ljava/lang/Runnable;)V

    const-wide/16 v9, 0x4e20

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/jiguang/x/a;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collect cell success:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcn/jiguang/x/a;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    goto :goto_5

    :catch_1
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    goto :goto_6

    :cond_4
    :goto_3
    move-object v8, v6

    goto :goto_a

    :catchall_1
    move-exception v2

    move-object v8, v6

    goto :goto_4

    :catch_2
    move-exception v8

    move-object v9, v6

    goto :goto_5

    :catch_3
    move-exception v8

    move-object v9, v6

    goto :goto_6

    :catch_4
    move-object v8, v6

    goto :goto_8

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "collect cell throwable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_a

    :catch_5
    :goto_8
    const-string v2, "collect cell time out"

    :goto_9
    invoke-static {v7, v2}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "coares:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fine:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1, v3}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_b

    :cond_5
    const-string v0, "collect gps failed because has no Manifest.permission.LOCATION"

    invoke-static {v7, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_6
    :goto_b
    invoke-static {p1}, Lcn/jiguang/l/d;->m(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lcn/jiguang/w/c;->a(Landroid/content/Context;)Lcn/jiguang/w/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/w/c;->e()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lcn/jiguang/w/c;->a(Landroid/content/Context;)Lcn/jiguang/w/c;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/w/c;->d()Lcn/jiguang/x/b;

    move-result-object v6

    if-nez v6, :cond_8

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcn/jiguang/w/a$b;

    invoke-direct {v3, p0}, Lcn/jiguang/w/a$b;-><init>(Lcn/jiguang/w/a;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v2}, Lcn/jiguang/l/d;->b(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x7918

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v9}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jiguang/x/b;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_7

    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collect gps success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/jiguang/x/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_c
    invoke-static {v7, v3}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_7
    const-string v3, "collect gps failed"
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_c

    :goto_d
    move-object v6, v2

    goto :goto_e

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v6, v2

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v6, v2

    goto :goto_11

    :catch_8
    move-object v6, v2

    goto/16 :goto_13

    :cond_8
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load  last gps success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcn/jiguang/x/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    if-eqz v6, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v6, Lcn/jiguang/x/b;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v6, Lcn/jiguang/x/b;->d:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v6, Lcn/jiguang/x/b;->c:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/l/b;->q(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_15

    :catchall_3
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    goto :goto_10

    :catch_a
    move-exception v0

    goto :goto_11

    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collect gps throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :catch_b
    :goto_13
    const-string v0, "collect gps time out"

    :goto_14
    invoke-static {v7, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_15
    invoke-direct {p0, v5, v8, v6}, Lcn/jiguang/w/a;->a(Ljava/util/List;Lcn/jiguang/x/a;Lcn/jiguang/x/b;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "rl.catch"

    invoke-static {p1, v1}, Lcn/jiguang/o/c;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/jiguang/w/a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "save json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Lcn/jiguang/o/c;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_a
    invoke-super {p0, p1, p2}, Lcn/jiguang/l/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Z
    .locals 2

    iget-object v0, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    const-string v1, "JLocation"

    invoke-static {v0, v1}, Lcn/jiguang/l/b;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c()Z
    .locals 2

    iget-object v0, p0, Lcn/jiguang/w/a;->a:Landroid/content/Context;

    const-string v1, "JLocation"

    invoke-static {v0, v1}, Lcn/jiguang/l/b;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "rl.catch"

    invoke-static {p1, v0}, Lcn/jiguang/o/c;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "JLocation"

    if-nez v1, :cond_0

    const-string/jumbo p1, "there are no data to report"

    invoke-static {v2, p1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo p1, "there are no content data to report"

    invoke-static {v2, p1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/Object;)V

    const-string v1, "clean cache json"

    invoke-static {v2, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcn/jiguang/o/c;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcn/jiguang/l/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected d(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic e(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcn/jiguang/w/a;->f(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 8

    invoke-static {p1}, Lcn/jiguang/l/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4069000000000000L    # 200.0

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    goto :goto_0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    :goto_0
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/jiguang/w/a;->a(JDD)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
