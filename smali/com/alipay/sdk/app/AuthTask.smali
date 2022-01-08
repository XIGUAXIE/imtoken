.class public Lcom/alipay/sdk/app/AuthTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Lcom/alipay/sdk/widget/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/alipay/sdk/util/e;

    sput-object v0, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    .line 50
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/alipay/sdk/widget/a;

    const-string/jumbo v1, "\u53bb\u652f\u4ed8\u5b9d\u6388\u6743"

    invoke-direct {v0, p1, v1}, Lcom/alipay/sdk/widget/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    return-void
.end method

.method private a()Lcom/alipay/sdk/util/e$a;
    .locals 1

    .line 62
    new-instance v0, Lcom/alipay/sdk/app/a;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/a;-><init>(Lcom/alipay/sdk/app/AuthTask;)V

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .locals 3

    .line 131
    invoke-virtual {p3, p2}, Lcom/alipay/sdk/sys/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/data/a;->i()Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v1

    iget-boolean v1, v1, Lcom/alipay/sdk/data/a;->a:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    sget-object v0, Lcom/alipay/sdk/app/i;->a:Ljava/util/List;

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-static {p3, v1, v0}, Lcom/alipay/sdk/util/n;->b(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    const-string v1, "biz"

    if-eqz v0, :cond_5

    .line 146
    new-instance v0, Lcom/alipay/sdk/util/e;

    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->a()Lcom/alipay/sdk/util/e$a;

    move-result-object v2

    invoke-direct {v0, p1, p3, v2}, Lcom/alipay/sdk/util/e;-><init>(Landroid/app/Activity;Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/util/e$a;)V

    .line 147
    invoke-virtual {v0, p2}, Lcom/alipay/sdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "failed"

    .line 149
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "scheme_failed"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string v0, "LogBindCalledH5"

    .line 151
    invoke-static {p3, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "LogCalledH5"

    .line 160
    invoke-static {p3, v1, v0}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/sdk/app/AuthTask;->b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;
    .locals 3

    .line 200
    invoke-virtual {p2}, Lcom/alipay/sdk/protocol/b;->c()[Ljava/lang/String;

    move-result-object p2

    .line 201
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 202
    aget-object p2, p2, v1

    const-string/jumbo v1, "url"

    .line 203
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance p2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-class v2, Lcom/alipay/sdk/app/H5AuthActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    invoke-virtual {p2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 207
    invoke-static {p1, p2}, Lcom/alipay/sdk/sys/a$a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Intent;)V

    .line 208
    iget-object p1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 210
    sget-object p1, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 212
    :try_start_0
    sget-object p2, Lcom/alipay/sdk/app/AuthTask;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-static {}, Lcom/alipay/sdk/app/j;->a()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 220
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    .line 214
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 216
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method static synthetic a(Lcom/alipay/sdk/app/AuthTask;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    return-void
.end method

.method private b(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    .line 169
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/packet/impl/a;

    invoke-direct {v0}, Lcom/alipay/sdk/packet/impl/a;-><init>()V

    .line 170
    invoke-virtual {v0, p3, p1, p2}, Lcom/alipay/sdk/packet/impl/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/sdk/packet/b;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/alipay/sdk/packet/b;->c()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "form"

    .line 173
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo p2, "onload"

    .line 174
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/alipay/sdk/protocol/b;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    const/4 p2, 0x0

    .line 178
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 179
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/sdk/protocol/b;

    invoke-virtual {v0}, Lcom/alipay/sdk/protocol/b;->b()Lcom/alipay/sdk/protocol/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/sdk/protocol/a;->b:Lcom/alipay/sdk/protocol/a;

    if-ne v0, v1, :cond_0

    .line 180
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/sdk/protocol/b;

    invoke-direct {p0, p3, p1}, Lcom/alipay/sdk/app/AuthTask;->a(Lcom/alipay/sdk/sys/a;Lcom/alipay/sdk/protocol/b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "biz"

    const-string v0, "H5AuthDataAnalysisError"

    .line 187
    invoke-static {p3, p2, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    :cond_1
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 184
    :try_start_2
    sget-object p2, Lcom/alipay/sdk/app/k;->d:Lcom/alipay/sdk/app/k;

    invoke-virtual {p2}, Lcom/alipay/sdk/app/k;->a()I

    move-result p2

    invoke-static {p2}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object p2

    const-string v0, "net"

    .line 185
    invoke-static {p3, v0, p1}, Lcom/alipay/sdk/app/statistic/a;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    move-object p1, p2

    :goto_1
    if-nez p1, :cond_2

    .line 193
    sget-object p1, Lcom/alipay/sdk/app/k;->b:Lcom/alipay/sdk/app/k;

    invoke-virtual {p1}, Lcom/alipay/sdk/app/k;->a()I

    move-result p1

    invoke-static {p1}, Lcom/alipay/sdk/app/k;->b(I)Lcom/alipay/sdk/app/k;

    move-result-object p1

    .line 195
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/sdk/app/k;->a()I

    move-result p2

    invoke-virtual {p1}, Lcom/alipay/sdk/app/k;->b()Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    invoke-static {p2, p1, p3}, Lcom/alipay/sdk/app/j;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 189
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 190
    throw p1
.end method

.method private b()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->b()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->c:Lcom/alipay/sdk/widget/a;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/alipay/sdk/widget/a;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized auth(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-string v2, "auth"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized authV2(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Lcom/alipay/sdk/sys/a;

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    const-string v2, "authV2"

    invoke-direct {v0, v1, p1, v2}, Lcom/alipay/sdk/sys/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v0, p1, p2}, Lcom/alipay/sdk/app/AuthTask;->innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Lcom/alipay/sdk/util/l;->a(Lcom/alipay/sdk/sys/a;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized innerAuth(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->b()V

    .line 107
    :cond_0
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object p3

    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    .line 108
    invoke-static {}, Lcom/alipay/sdk/app/j;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    .line 110
    invoke-static {v0}, Lcom/alipay/sdk/app/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-direct {p0, v0, p2, p1}, Lcom/alipay/sdk/app/AuthTask;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/sdk/sys/a;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "biz"

    const-string v1, "PgReturn"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 125
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v1, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1, p2, v1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception v0

    .line 120
    :try_start_3
    invoke-static {v0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v0, "biz"

    const-string v1, "PgReturn"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 125
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v1, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 127
    :goto_1
    monitor-exit p0

    return-object p3

    :goto_2
    :try_start_5
    const-string v0, "biz"

    const-string v1, "PgReturn"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/sdk/app/statistic/a;->b(Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/alipay/sdk/data/a;->j()Lcom/alipay/sdk/data/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/sdk/data/a;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)V

    .line 124
    invoke-direct {p0}, Lcom/alipay/sdk/app/AuthTask;->c()V

    .line 125
    iget-object v0, p0, Lcom/alipay/sdk/app/AuthTask;->b:Landroid/app/Activity;

    iget-object v1, p1, Lcom/alipay/sdk/sys/a;->p:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/alipay/sdk/app/statistic/a;->b(Landroid/content/Context;Lcom/alipay/sdk/sys/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
