.class public final Lcn/jiguang/analytics/android/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/jiguang/analytics/android/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Lcn/jiguang/analytics/android/b/d;

.field private f:I

.field private g:Lcn/jiguang/analytics/android/b/c;

.field private h:Lcn/jiguang/analytics/android/b/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lorg/json/JSONObject;
    .locals 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "page_phone_total_memory"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->f()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_start_phone_avaliable_memory"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->e()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_end_phone_avaliable_memory"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_2

    move-wide v5, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->e()J

    move-result-wide v5

    :goto_2
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_phone_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->a()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->a()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_5

    :cond_4
    :goto_3
    move-wide v5, v3

    :cond_5
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_phone_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->b()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_8

    :cond_7
    :goto_4
    move-wide v5, v3

    :cond_8
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_phone_mobile_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->c()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_b

    :cond_a
    :goto_5
    move-wide v5, v3

    :cond_b
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_phone_mobile_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->d()J

    move-result-wide v5

    invoke-static {}, Lcn/jiguang/analytics/android/b/c;->d()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_e

    :cond_d
    :goto_6
    move-wide v5, v3

    :cond_e
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_app_rx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->h()J

    move-result-wide v5

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->h()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_11

    :cond_10
    :goto_7
    move-wide v5, v3

    :cond_11
    invoke-virtual {v0, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_app_tx_bytes"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    if-nez v2, :cond_12

    goto :goto_8

    :cond_12
    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->g()J

    move-result-wide v5

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/c;->g()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_13

    goto :goto_8

    :cond_13
    move-wide v3, v5

    :cond_14
    :goto_8
    invoke-virtual {v0, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9
    return-object v0
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "page_name"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_duration"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/d;->d:J

    iget-wide v4, p0, Lcn/jiguang/analytics/android/b/d;->c:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcn/jiguang/analytics/android/e/g/i;->a(DI)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_end_time"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/d;->d:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_start_time"

    iget-wide v2, p0, Lcn/jiguang/analytics/android/b/d;->c:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "page_seq"

    iget v2, p0, Lcn/jiguang/analytics/android/b/d;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/d;->e:Lcn/jiguang/analytics/android/b/d;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "page_last_page"

    iget-object v2, p0, Lcn/jiguang/analytics/android/b/d;->e:Lcn/jiguang/analytics/android/b/d;

    iget-object v2, v2, Lcn/jiguang/analytics/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-direct {p0}, Lcn/jiguang/analytics/android/b/d;->d()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "extra"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcn/jiguang/analytics/android/b/d;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/d;->c:J

    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/b/d;)V
    .locals 2

    move-object v0, p0

    :goto_0
    iput-object p1, v0, Lcn/jiguang/analytics/android/b/d;->e:Lcn/jiguang/analytics/android/b/d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/jiguang/analytics/android/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)V
    .locals 2

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/d;->d:J

    iget-wide v0, p0, Lcn/jiguang/analytics/android/b/d;->c:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/b/d;->b:J

    return-void
.end method

.method public final b(Lcn/jiguang/analytics/android/b/c;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcn/jiguang/analytics/android/b/d;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PageEntity{pageName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", pageDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/d;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/b/d;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/d;->e:Lcn/jiguang/analytics/android/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jiguang/analytics/android/b/d;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pageStartPageExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/d;->g:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageEndPageExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/b/d;->h:Lcn/jiguang/analytics/android/b/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
