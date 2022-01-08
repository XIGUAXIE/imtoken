.class public abstract Lcn/jiguang/analytics/android/api/Event;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final ERROR_EXTRA_MAP_TOO_MANY:Ljava/lang/String; = "Warning - extra map size is greater than 10,will give up save this event"

.field protected static final EXT_KEY_COUNT_LIMIT:I = 0xa

.field protected static final INVALIDE_KEY_OR_VALUE_TOO_BIGGER:Ljava/lang/String; = "Parameter invalid, string value size must be less than 256 bytes - %s size is %d"

.field protected static final INVALIDE_KEY_OR_VALUE_UNSUPPORT_CHARSET:Ljava/lang/String; = "Warning - %s include unsupport charset,discard the record"

.field protected static final KEY_VALUE_SIZE_LIMIT:I = 0x100

.field protected static final REPEAT_KEY_ERROR:Ljava/lang/String; = "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recorded"

.field private static final TAG:Ljava/lang/String; = "Event"

.field private static final serialVersionUID:J = -0x45b4b0e7a8f78794L


# instance fields
.field protected extMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected itime:J
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "itime"
    .end annotation
.end field

.field protected type:Ljava/lang/String;
    .annotation runtime Lcn/jiguang/analytics/android/api/EVENTFIELD;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "custom_counting"

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    return-void
.end method

.method private addExtMapInternal(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private isValidKeyOrValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[\u4e00-\u9fa50-9a-zA-Z_-]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public addExtMap(Ljava/util/Map;)Lcn/jiguang/analytics/android/api/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/jiguang/analytics/android/api/Event;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcn/jiguang/analytics/android/api/Event;->addExtMapInternal(Ljava/util/Map;)V

    return-object p0

    :cond_1
    :goto_0
    const-string p1, "Event"

    const-string v0, "extMap is null or empty"

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcn/jiguang/analytics/android/api/Event;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invalide key:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Event"

    invoke-static {p2, p1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public checkEvent()Z
    .locals 9

    const-string v0, "extra "

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    const-string v2, "Event"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v4, 0xa

    if-le v1, v4, :cond_0

    const-string v0, "This event will not record, since you have more than 10 pairs of custom key/value"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v1, "You can only have 10 pairs of key/value at most if you are using custom key/value"

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    const/4 v4, 0x1

    if-nez v1, :cond_1

    return v4

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v3, v4}, Lcn/jiguang/analytics/android/api/Event;->isValideValue(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7, v3, v4}, Lcn/jiguang/analytics/android/api/Event;->isValideValue(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_3
    iget-object v5, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v5

    const-string v6, "There was an error add extra map"

    invoke-static {v2, v6, v5}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcn/jiguang/analytics/android/api/Event;

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object v2, p0, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    iget-object p1, p1, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getExtMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    return-object v0
.end method

.method public getItime()J
    .locals 2

    iget-wide v0, p0, Lcn/jiguang/analytics/android/api/Event;->itime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method protected isValideValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/jiguang/analytics/android/api/Event;->isValideValue(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method protected isValideValue(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 1

    const/4 p2, 0x0

    const-string v0, "Event"

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g/i;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "Parameter invalid, some value must be not null"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    const/16 p3, 0x100

    if-le p1, p3, :cond_2

    if-eqz p4, :cond_1

    const-string p1, "Parameter invalid, extra key or value size must be less than 256 bytes"

    goto :goto_0

    :cond_1
    const-string p1, "Parameter invalid, string value size must be less than 256 bytes"

    :goto_0
    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-boolean p2, Lcn/jiguang/analytics/android/d;->a:Z

    if-eqz p2, :cond_0

    const-string p2, "There was a conflict between custom key/value and model key/value, the conflicted custom key/value will be abandoned, and the event will be recorded"

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setExtMap(Ljava/util/Map;)Lcn/jiguang/analytics/android/api/Event;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcn/jiguang/analytics/android/api/Event;"
        }
    .end annotation

    iput-object p1, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    return-object p0
.end method

.method public setItime(J)Lcn/jiguang/analytics/android/api/Event;
    .locals 0

    iput-wide p1, p0, Lcn/jiguang/analytics/android/api/Event;->itime:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", type=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/Event;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", itime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/jiguang/analytics/android/api/Event;->itime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extMap=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jiguang/analytics/android/api/Event;->extMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
