.class public final Lcn/jiguang/analytics/android/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/analytics/android/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/jiguang/analytics/android/b/c;

.field private g:Lcn/jiguang/analytics/android/b/c;

.field private h:Z

.field private i:Lcn/jiguang/analytics/android/b/d;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/b/e;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcn/jiguang/analytics/android/b/e;->j:I

    return-void
.end method

.method private h()Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "session_phone_total_memory"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->f()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_phone_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->a()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->a()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_3

    :cond_2
    :goto_1
    move-wide v5, v3

    :cond_3
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_phone_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->b()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_6

    :cond_5
    :goto_2
    move-wide v5, v3

    :cond_6
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_phone_mobile_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->c()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_9

    :cond_8
    :goto_3
    move-wide v5, v3

    :cond_9
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_phone_mobile_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->d()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_c

    :cond_b
    :goto_4
    move-wide v5, v3

    :cond_c
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_app_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->h()J

    move-result-wide v5

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_f

    :cond_e
    :goto_5
    move-wide v5, v3

    :cond_f
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "session_app_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_10

    goto :goto_6

    :cond_10
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->g()J

    move-result-wide v5

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->g()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_11

    goto :goto_6

    :cond_11
    move-wide v3, v5

    :cond_12
    :goto_6
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_7
    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "start_time"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/e;->b:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page"

    invoke-static {v0, v1}, Lcn/jiguang/api/JCoreInterface;->fillBaseReport(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/analytics/android/b/d;

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/b/d;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "page_list"

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string/jumbo v1, "session_end"

    iget-boolean v2, p0, Lcn/jiguang/analytics/android/b/e;->h:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-boolean v1, p0, Lcn/jiguang/analytics/android/b/e;->h:Z

    if-eqz v1, :cond_3

    const-string v1, "end_time"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/e;->c:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration_time"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/e;->c:J

    iget-wide v4, p0, Lcn/jiguang/analytics/android/b/e;->b:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcn/jiguang/analytics/android/e/g/i;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-direct {p0}, Lcn/jiguang/analytics/android/b/e;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/e;->b:J

    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/b/d;)V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/e;->i:Lcn/jiguang/analytics/android/b/d;

    iget p1, p0, Lcn/jiguang/analytics/android/b/e;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/jiguang/analytics/android/b/e;->j:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcn/jiguang/analytics/android/b/d;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/e;->i:Lcn/jiguang/analytics/android/b/d;

    return-object v0
.end method

.method public final b(J)V
    .locals 2

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/e;->c:J

    iget-wide v0, p0, Lcn/jiguang/analytics/android/b/e;->b:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/e;->d:J

    return-void
.end method

.method public final b(Lcn/jiguang/analytics/android/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/b/e;->j:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/b/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jiguang/analytics/android/b/e;->h:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcn/jiguang/analytics/android/b/e;

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    iget-object p1, p1, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcn/jiguang/analytics/android/b/e;->h:Z

    return v0
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SessionEntity{sessionId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pageEntityList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionStartExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/e;->f:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionEndExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/e;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
