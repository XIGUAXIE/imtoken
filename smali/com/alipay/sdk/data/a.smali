.class public final Lcom/alipay/sdk/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/data/a$a;
    }
.end annotation


# static fields
.field private static F:Lcom/alipay/sdk/data/a; = null

.field private static final b:Ljava/lang/String; = "DynCon"

.field private static final c:I = 0x2710

.field private static final d:Ljava/lang/String; = "https://h5.m.taobao.com/mlapp/olist.html"

.field private static final e:I = 0xa

.field private static final f:Z = true

.field private static final g:Z = true

.field private static final h:Z = false

.field private static final i:Z = false

.field private static final j:I = 0x3e8

.field private static final k:I = 0x4e20

.field private static final l:Ljava/lang/String; = "alipay_cashier_dynamic_config"

.field private static final m:Ljava/lang/String; = "timeout"

.field private static final n:Ljava/lang/String; = "h5_port_degrade"

.field private static final o:Ljava/lang/String; = "st_sdk_config"

.field private static final p:Ljava/lang/String; = "tbreturl"

.field private static final q:Ljava/lang/String; = "launchAppSwitch"

.field private static final r:Ljava/lang/String; = "configQueryInterval"

.field private static final s:Ljava/lang/String; = "deg_log_mcgw"

.field private static final t:Ljava/lang/String; = "deg_start_srv_first"

.field private static final u:Ljava/lang/String; = "scheme_pay_2"

.field private static final v:Ljava/lang/String; = "intercept_batch"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field private w:I

.field private x:Z

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 61
    iput v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->x:Z

    const-string v1, "https://h5.m.taobao.com/mlapp/olist.html"

    .line 63
    iput-object v1, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    const/16 v1, 0xa

    .line 64
    iput v1, p0, Lcom/alipay/sdk/data/a;->z:I

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->A:Z

    .line 74
    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->B:Z

    .line 81
    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->a:Z

    .line 86
    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->C:Z

    .line 88
    iput-boolean v0, p0, Lcom/alipay/sdk/data/a;->D:Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/sdk/data/a;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/sdk/sys/a;)V
    .locals 3

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/data/a;->l()Lorg/json/JSONObject;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alipay_cashier_dynamic_config"

    .line 184
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Lcom/alipay/sdk/util/j;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 186
    invoke-static {p1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 170
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 173
    invoke-static {p1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "timeout"

    const/16 v1, 0x2710

    .line 223
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const/4 v0, 0x0

    const-string v1, "h5_port_degrade"

    .line 224
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->x:Z

    const-string/jumbo v1, "tbreturl"

    const-string v2, "https://h5.m.taobao.com/mlapp/olist.html"

    .line 225
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    const-string v1, "configQueryInterval"

    const/16 v2, 0xa

    .line 226
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/sdk/data/a;->z:I

    const-string v1, "launchAppSwitch"

    .line 227
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/data/a$a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    const/4 v1, 0x1

    const-string/jumbo v2, "scheme_pay_2"

    .line 228
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/sdk/data/a;->A:Z

    const-string v2, "intercept_batch"

    .line 229
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->B:Z

    const-string v1, "deg_log_mcgw"

    .line 230
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/sdk/data/a;->C:Z

    const-string v1, "deg_start_srv_first"

    .line 231
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/sdk/data/a;->D:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 196
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "st_sdk_config"

    .line 197
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/alipay/sdk/data/a;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    const-string p1, "DynCon"

    const-string v0, "empty config"

    .line 201
    invoke-static {p1, v0}, Lcom/alipay/sdk/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 204
    invoke-static {p1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static j()Lcom/alipay/sdk/data/a;
    .locals 1

    .line 151
    sget-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/alipay/sdk/data/a;

    invoke-direct {v0}, Lcom/alipay/sdk/data/a;-><init>()V

    sput-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    .line 153
    invoke-direct {v0}, Lcom/alipay/sdk/data/a;->k()V

    .line 155
    :cond_0
    sget-object v0, Lcom/alipay/sdk/data/a;->F:Lcom/alipay/sdk/data/a;

    return-object v0
.end method

.method private k()V
    .locals 4

    .line 159
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/sys/b;->b()Landroid/content/Context;

    move-result-object v0

    .line 160
    invoke-static {}, Lcom/alipay/sdk/sys/a;->a()Lcom/alipay/sdk/sys/a;

    move-result-object v1

    const-string v2, "alipay_cashier_dynamic_config"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/sdk/util/j;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/alipay/sdk/data/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private l()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->a()I

    move-result v1

    const-string/jumbo v2, "timeout"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 211
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->b()Z

    move-result v1

    const-string v2, "h5_port_degrade"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 212
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tbreturl"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->f()I

    move-result v1

    const-string v2, "configQueryInterval"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/sdk/data/a$a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "launchAppSwitch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->c()Z

    move-result v1

    const-string/jumbo v2, "scheme_pay_2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->d()Z

    move-result v1

    const-string v2, "intercept_batch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 217
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->g()Z

    move-result v1

    const-string v2, "deg_log_mcgw"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {p0}, Lcom/alipay/sdk/data/a;->h()Z

    move-result v1

    const-string v2, "deg_start_srv_first"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 98
    iget v0, p0, Lcom/alipay/sdk/data/a;->w:I

    const-string v1, "DynCon"

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x4e20

    if-le v0, v2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/sdk/data/a;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/alipay/sdk/data/a;->w:I

    return v0

    :cond_1
    :goto_0
    const-string/jumbo v0, "time(def) = 10000"

    .line 99
    invoke-static {v1, v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    return v0
.end method

.method public a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V
    .locals 2

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/sdk/data/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/sdk/data/b;-><init>(Lcom/alipay/sdk/data/a;Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/alipay/sdk/data/a;->a:Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->x:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->A:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->B:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->y:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/alipay/sdk/data/a;->z:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->C:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/alipay/sdk/data/a;->D:Z

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/sdk/data/a$a;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/alipay/sdk/data/a;->E:Ljava/util/List;

    return-object v0
.end method
