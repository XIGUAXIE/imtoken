.class public final Lcom/alipay/sdk/app/OpenAuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/app/OpenAuthTask$a;,
        Lcom/alipay/sdk/app/OpenAuthTask$Callback;,
        Lcom/alipay/sdk/app/OpenAuthTask$BizType;
    }
.end annotation


# static fields
.field public static final Duplex:I = 0x1388

.field public static final NOT_INSTALLED:I = 0xfa1

.field public static final OK:I = 0x2328

.field public static final SYS_ERR:I = 0xfa0

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private static b:J = 0x0L

.field private static final c:I = 0x7a


# instance fields
.field private volatile d:Z

.field private final e:Landroid/app/Activity;

.field private f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 40
    sput-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    .line 70
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/app/OpenAuthTask;)Lcom/alipay/sdk/app/OpenAuthTask$Callback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    return-object p0
.end method

.method private a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 258
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "startTime"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "session"

    .line 259
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    iget-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "package"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p4, :cond_0

    .line 262
    invoke-static {p4}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "appId"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string/jumbo p1, "sdkVersion"

    const-string p2, "h.a.3.7.4"

    .line 264
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mqpURL"

    .line 265
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    .line 267
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 231
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "alipays"

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "platformapi"

    .line 233
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "startapp"

    .line 234
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 235
    invoke-static {p1}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->access$100(Lcom/alipay/sdk/app/OpenAuthTask$BizType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 237
    sget-object v1, Lcom/alipay/sdk/app/e;->a:[I

    invoke-virtual {p1}, Lcom/alipay/sdk/app/OpenAuthTask$BizType;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "appClearTop"

    const-string v1, "false"

    .line 241
    invoke-virtual {v0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v1, "startMultApp"

    const-string v2, "YES"

    .line 242
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 250
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 251
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 226
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "missing bizType"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 271
    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    if-eqz p0, :cond_0

    .line 274
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/alipay/sdk/app/OpenAuthTask$Callback;->onResult(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 276
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/sdk/sys/a;",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p3

    const-string v9, "biz"

    .line 109
    iget-boolean v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "\u8be5 OpenAuthTask \u5df2\u5728\u6267\u884c"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 113
    :cond_0
    iput-boolean v10, v7, Lcom/alipay/sdk/app/OpenAuthTask;->d:Z

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 117
    sget-wide v0, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    sub-long v0, v11, v0

    const-wide/16 v2, 0xbb8

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 118
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v3, 0x1388

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "3s \u5185\u91cd\u590d\u652f\u4ed8"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 121
    :cond_1
    sput-wide v11, Lcom/alipay/sdk/app/OpenAuthTask;->b:J

    const/16 v0, 0x20

    .line 124
    invoke-static {v0}, Lcom/alipay/sdk/util/n;->a(I)Ljava/lang/String;

    move-result-object v13

    .line 127
    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 128
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mqpPkgName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mqpScene"

    const-string/jumbo v2, "sdk"

    .line 129
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v3

    iget-boolean v3, v3, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    .line 137
    :cond_2
    sget-object v2, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    .line 142
    :cond_3
    iget-object v3, v7, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-static {v8, v3, v2}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Lcom/alipay/sdk/util/n$a;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_6

    .line 143
    invoke-virtual {v14, v8}, Lcom/alipay/sdk/util/n$a;->a(Lcom/alipay/sdk/sys/a;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v14}, Lcom/alipay/sdk/util/n$a;->a()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v14, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_6

    iget-object v2, v14, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v3, 0x7a

    if-ge v2, v3, :cond_4

    goto/16 :goto_4

    .line 172
    :cond_4
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/sdk/sys/a;->a(Lcom/alipay/sdk/sys/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v2, "ts_scheme"

    .line 173
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "mqpLoc"

    .line 175
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v2, "OpenAuthLocEx"

    .line 177
    invoke-static {v8, v9, v2, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :goto_0
    invoke-direct {v7, v5, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 186
    sget-object v0, Lcom/alipay/sdk/app/OpenAuthTask;->a:Ljava/util/Map;

    iget-object v1, v7, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide v2, v11

    move-object v4, v13

    move-object/from16 v5, p3

    .line 190
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask;->a(JLjava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    move-object/from16 v0, v16

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "JSONEx"

    .line 192
    invoke-static {v8, v9, v0, v1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 194
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 195
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "\u53c2\u6570\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    .line 199
    :cond_5
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "alipays"

    .line 200
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "platformapi"

    .line 201
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "startapp"

    .line 202
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "appId"

    const-string v3, "20001129"

    .line 203
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "payload"

    .line 204
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    .line 207
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    iget-object v0, v14, Lcom/alipay/sdk/util/n$a;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_3
    const-string v0, "PgOpenStarting"

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v9, v0, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {v8, v13}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)V

    .line 214
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    const-string v1, "StartWalletEx"

    .line 216
    invoke-static {v8, v9, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return v15

    .line 182
    :catchall_2
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v3, 0xfa0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "\u4e1a\u52a1\u53c2\u6570\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10

    :cond_6
    :goto_4
    if-eqz p5, :cond_7

    .line 147
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mqpScheme"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mqpNotifyName"

    .line 148
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "landing"

    .line 149
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-direct {v7, v5, v1}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/content/Intent;

    iget-object v2, v7, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    const-class v3, Lcom/alipay/sdk/app/H5OpenAuthActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-array v2, v10, [Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v15

    const-string v0, "https://render.alipay.com/p/s/i?scheme=%s"

    .line 152
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "url"

    .line 155
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {v8, v1}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    .line 157
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v15

    .line 161
    :cond_7
    iget-object v0, v7, Lcom/alipay/sdk/app/OpenAuthTask;->g:Landroid/os/Handler;

    new-instance v8, Lcom/alipay/sdk/app/OpenAuthTask$a;

    const/16 v3, 0xfa1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v4, "\u652f\u4ed8\u5b9d\u672a\u5b89\u88c5\u6216\u7b7e\u540d\u9519\u8bef"

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alipay/sdk/app/OpenAuthTask$a;-><init>(Lcom/alipay/sdk/app/OpenAuthTask;ILjava/lang/String;Landroid/os/Bundle;Lcom/alipay/sdk/app/e;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Lcom/alipay/sdk/app/OpenAuthTask$Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/sdk/app/OpenAuthTask$BizType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/sdk/app/OpenAuthTask$Callback;",
            "Z)V"
        }
    .end annotation

    .line 88
    new-instance v6, Lcom/alipay/sdk/sys/a;

    iget-object v0, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oa-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v0, v1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_0
    iput-object p4, p0, Lcom/alipay/sdk/app/OpenAuthTask;->f:Lcom/alipay/sdk/app/OpenAuthTask$Callback;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/alipay/sdk/app/OpenAuthTask;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Lcom/alipay/sdk/app/OpenAuthTask$BizType;Ljava/util/Map;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/alipay/sdk/app/OpenAuthTask;->e:Landroid/app/Activity;

    iget-object p2, v6, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    const-string p3, ""

    invoke-static {p1, v6, p3, p2}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 96
    throw p1
.end method
