.class public Lcn/jiguang/aa/a;
.super Lcn/jiguang/l/a;


# static fields
.field private static volatile b:Lcn/jiguang/aa/a;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Landroid/os/Bundle;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcn/jiguang/l/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/jiguang/aa/a;->e:I

    iput v0, p0, Lcn/jiguang/aa/a;->f:I

    iput v0, p0, Lcn/jiguang/aa/a;->g:I

    return-void
.end method

.method public static a()Lcn/jiguang/aa/a;
    .locals 2

    sget-object v0, Lcn/jiguang/aa/a;->b:Lcn/jiguang/aa/a;

    if-nez v0, :cond_0

    const-class v0, Lcn/jiguang/aa/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcn/jiguang/aa/a;

    invoke-direct {v1}, Lcn/jiguang/aa/a;-><init>()V

    sput-object v1, Lcn/jiguang/aa/a;->b:Lcn/jiguang/aa/a;

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
    sget-object v0, Lcn/jiguang/aa/a;->b:Lcn/jiguang/aa/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v1, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "type"

    const-string/jumbo p2, "sdk_type"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "itime"

    iget-object p2, p0, Lcn/jiguang/aa/a;->a:Landroid/content/Context;

    invoke-static {p2}, Lcn/jiguang/l/d;->h(Landroid/content/Context;)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo p1, "sdk"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "package json exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JType"

    invoke-static {p2, p1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;III)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ltz p2, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcn/jiguang/l/b;->n(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isTypeReportEnable],lastversion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",curversion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JType"

    invoke-static {v2, v1}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, p4, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Lcn/jiguang/l/b;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/aa/a;->a:Landroid/content/Context;

    const-string p1, "JType"

    return-object p1
.end method

.method protected a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcn/jiguang/aa/a;->c:Landroid/os/Bundle;

    return-void
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    iget v0, p0, Lcn/jiguang/aa/a;->e:I

    iget v1, p0, Lcn/jiguang/aa/a;->f:I

    invoke-direct {p0, p2, v0, v1}, Lcn/jiguang/aa/a;->a(Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "JType"

    const-string/jumbo p2, "there are no data to report"

    invoke-static {p1, p2}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcn/jiguang/l/d;->a(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method protected d()Z
    .locals 6

    iget-object v0, p0, Lcn/jiguang/aa/a;->c:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcn/jiguang/aa/a;->c:Landroid/os/Bundle;

    const-string v2, "custom"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jiguang/aa/a;->e:I

    iget-object v0, p0, Lcn/jiguang/aa/a;->c:Landroid/os/Bundle;

    const-string v2, "dynamic"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jiguang/aa/a;->f:I

    iget-object v0, p0, Lcn/jiguang/aa/a;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "sdk_v"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/jiguang/aa/a;->g:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseBundle type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",custom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/aa/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",dynamic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/aa/a;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",sdkVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/aa/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JType"

    invoke-static {v1, v0}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jiguang/aa/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    iget v3, p0, Lcn/jiguang/aa/a;->e:I

    iget v4, p0, Lcn/jiguang/aa/a;->f:I

    iget v5, p0, Lcn/jiguang/aa/a;->g:I

    invoke-static {v0, v2, v3, v4, v5}, Lcn/jiguang/aa/a;->a(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] data not change"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcn/jiguang/aa/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/jiguang/aa/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jiguang/aa/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    iget v4, p0, Lcn/jiguang/aa/a;->g:I

    invoke-static {v2, v3, v4}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcn/jiguang/aa/a;->a:Landroid/content/Context;

    iget-object v3, p0, Lcn/jiguang/aa/a;->d:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcn/jiguang/l/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method
