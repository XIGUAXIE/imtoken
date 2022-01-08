.class public Lcn/jiguang/i/b;
.super Lcn/jiguang/l/a;


# static fields
.field private static volatile c:Lcn/jiguang/i/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/json/JSONObject;

.field private d:Ljava/lang/String;

.field private e:Z


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

.method public static a()Lcn/jiguang/i/b;
    .locals 2

    sget-object v0, Lcn/jiguang/i/b;->c:Lcn/jiguang/i/b;

    if-nez v0, :cond_0

    const-class v0, Lcn/jiguang/i/b;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcn/jiguang/i/b;

    invoke-direct {v1}, Lcn/jiguang/i/b;-><init>()V

    sput-object v1, Lcn/jiguang/i/b;->c:Lcn/jiguang/i/b;

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
    sget-object v0, Lcn/jiguang/i/b;->c:Lcn/jiguang/i/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/jiguang/j/a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string v0, "bssid"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p2, "local_ip"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p2, "local_mac"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p2, "netmask"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p2, "gateway"

    invoke-virtual {p1, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p2, "dhcp"

    invoke-virtual {p1, p2, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, p7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    iget-object p2, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p3, "dns"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/jiguang/j/a;

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    const-string p5, "ip"

    iget-object p6, p3, Lcn/jiguang/j/a;->a:Ljava/lang/String;

    invoke-virtual {p4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "mac"

    iget-object p3, p3, Lcn/jiguang/j/a;->d:Ljava/lang/String;

    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string p3, "data"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "packageJson exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JArp"

    invoke-static {p2, p1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    const-string p1, "JArp"

    return-object p1
.end method

.method protected a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jiguang/i/b;->e:Z

    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "disable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, p1

    iget-object v1, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    const-string v2, "JArp"

    invoke-static {v1, v2, v0}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const-string v3, "frequency"

    invoke-virtual {p2, v3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long p2, v3, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Z)V

    iget-object p1, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    invoke-static {p1, v2, v3, v4}, Lcn/jiguang/l/b;->b(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "JArp"

    if-nez v1, :cond_0

    const-string v0, "collect arp failed because has no permission Manifest.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Lcn/jiguang/l/d;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WIFI"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "collect arp failed because networkType is not wifi"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Lcn/jiguang/l/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "collect arp failed because can\'t get registerId"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_3

    const-string v0, "collect arp failed because get wifiManager failed"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jiguang/l/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v4

    move-object v5, v3

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v3, v4

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v5, v4

    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v5

    goto :goto_1

    :cond_7
    move-object v6, v3

    :goto_1
    iput-object v6, v11, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcn/jiguang/l/b;->c(Landroid/content/Context;)Z

    move-result v6

    const-string v7, "collect arp failed because this wifi \u3010"

    if-eqz v6, :cond_8

    iget-object v6, v11, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-static {v0, v6}, Lcn/jiguang/l/b;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u3011 can\'t report twice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {v11, v0, v2}, Lcn/jiguang/i/b;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    iget-boolean v8, v11, Lcn/jiguang/i/b;->e:Z

    if-nez v8, :cond_9

    if-nez v6, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u3011 is not in report time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, v11, Lcn/jiguang/i/b;->e:Z

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget v6, v1, Landroid/net/DhcpInfo;->ipAddress:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Lcn/jiguang/k/a;->a(J)[B

    move-result-object v6

    iget v7, v1, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v7}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0.0.0.0"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    move-object v7, v4

    :cond_b
    invoke-static {v0, v4}, Lcn/jiguang/l/d;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget v0, v1, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v0}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v10, v4

    goto :goto_2

    :cond_c
    move-object v10, v0

    :goto_2
    iget v0, v1, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v0}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    move-object v12, v4

    goto :goto_3

    :cond_d
    move-object v12, v0

    :goto_3
    iget v0, v1, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v0}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    move-object v13, v4

    goto :goto_4

    :cond_e
    move-object v13, v0

    :goto_4
    iget v0, v1, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v0}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    move-object v14, v4

    goto :goto_5

    :cond_f
    move-object v14, v0

    :goto_5
    iget v0, v1, Landroid/net/DhcpInfo;->serverAddress:I

    invoke-static {v0}, Lcn/jiguang/k/a;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v15, v4

    goto :goto_6

    :cond_10
    move-object v15, v0

    :goto_6
    invoke-static {v15, v6}, Lcn/jiguang/k/a;->a(Ljava/lang/String;[B)V

    invoke-static {v15}, Lcn/jiguang/k/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "collect arp success"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v3

    move-object v3, v7

    move-object v4, v9

    move-object v5, v10

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v10}, Lcn/jiguang/i/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_7

    :cond_11
    const-string v0, "collect arp failed because can\'t get arp info"

    invoke-static {v2, v0}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method protected b()Z
    .locals 2

    iget-object v0, p0, Lcn/jiguang/i/b;->a:Landroid/content/Context;

    const-string v1, "JArp"

    invoke-static {v0, v1}, Lcn/jiguang/l/b;->i(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, ""

    iput-object p2, p0, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JArp"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/l/b;->g(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p1, v2}, Lcn/jiguang/l/b;->h(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    sub-long/2addr v0, v3

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    const-string v1, "JArp"

    if-nez v0, :cond_0

    const-string/jumbo p1, "there are no data to report"

    invoke-static {v1, p1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "mac_list"

    invoke-static {p1, v0, v2}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    new-instance v2, Lcn/jiguang/i/a;

    iget-object v3, p0, Lcn/jiguang/i/b;->d:Ljava/lang/String;

    invoke-direct {v2, v3, p1, v1, p2}, Lcn/jiguang/i/a;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/i/b;->b:Lorg/json/JSONObject;

    return-void
.end method
