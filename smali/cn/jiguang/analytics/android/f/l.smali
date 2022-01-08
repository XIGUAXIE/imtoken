.class public final Lcn/jiguang/analytics/android/f/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcn/jiguang/analytics/android/f/l;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/jiguang/analytics/android/f/k;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/f/l;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Lcn/jiguang/analytics/android/c/a;)Lcn/jiguang/analytics/android/f/k;
    .locals 4

    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcn/jiguang/analytics/android/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/analytics/android/f/b;

    iget v3, v3, Lcn/jiguang/analytics/android/f/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcn/jiguang/analytics/android/f/k;

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcn/jiguang/analytics/android/c/a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v1, v3, p0}, Lcn/jiguang/analytics/android/f/k;-><init>(Ljava/lang/String;[Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static a()Lcn/jiguang/analytics/android/f/l;
    .locals 2

    sget-object v0, Lcn/jiguang/analytics/android/f/l;->a:Lcn/jiguang/analytics/android/f/l;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/analytics/android/f/l;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/analytics/android/f/l;->a:Lcn/jiguang/analytics/android/f/l;

    if-nez v1, :cond_0

    new-instance v1, Lcn/jiguang/analytics/android/f/l;

    invoke-direct {v1}, Lcn/jiguang/analytics/android/f/l;-><init>()V

    sput-object v1, Lcn/jiguang/analytics/android/f/l;->a:Lcn/jiguang/analytics/android/f/l;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/jiguang/analytics/android/f/l;->a:Lcn/jiguang/analytics/android/f/l;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;Lcn/jiguang/analytics/android/f/k;JJ)Lorg/json/JSONArray;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-wide/16 v3, 0x0

    if-ge v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/analytics/android/f/j;->a(Lorg/json/JSONObject;)Lcn/jiguang/analytics/android/f/j;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcn/jiguang/analytics/android/f/j;->a:Lcn/jiguang/analytics/android/f/k;

    invoke-virtual {p1, v5}, Lcn/jiguang/analytics/android/f/k;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    cmp-long v5, p4, v3

    if-lez v5, :cond_0

    invoke-virtual {v2, p2, p3, p4, p5}, Lcn/jiguang/analytics/android/f/j;->a(JJ)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p2, p3}, Lcn/jiguang/analytics/android/f/j;->a(J)V

    :goto_1
    invoke-virtual {v2}, Lcn/jiguang/analytics/android/f/j;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    new-instance v0, Lcn/jiguang/analytics/android/f/j;

    invoke-direct {v0, p1}, Lcn/jiguang/analytics/android/f/j;-><init>(Lcn/jiguang/analytics/android/f/k;)V

    cmp-long p1, p4, v3

    if-lez p1, :cond_3

    invoke-virtual {v0, p2, p3, p4, p5}, Lcn/jiguang/analytics/android/f/j;->a(JJ)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p2, p3}, Lcn/jiguang/analytics/android/f/j;->a(J)V

    :goto_2
    invoke-virtual {v0}, Lcn/jiguang/analytics/android/f/j;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 3

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/d;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "RecordManager"

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xxx_upload content "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/analytics/android/d/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/jiguang/api/JCoreInterface;->report(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-string p0, "content is empty"

    invoke-static {v0, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcn/jiguang/analytics/android/f/k;JZ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onBrowseEvent isShow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/jiguang/analytics/android/f/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/jiguang/analytics/android/f/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordManager"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p4, v2, v0

    if-gtz p4, :cond_1

    :cond_0
    iget-object p4, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object p4, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    iget-object v0, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/f/k;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/f/l;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v3, p1

    move-wide v6, p2

    invoke-static/range {v2 .. v7}, Lcn/jiguang/analytics/android/f/l;->a(Lorg/json/JSONArray;Lcn/jiguang/analytics/android/f/k;JJ)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->b()V

    return-void
.end method

.method private static b()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1111

    invoke-static {v1}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v1

    const-string v2, "RecordManager"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v1

    if-lez v1, :cond_1

    const-string v0, "cache data, wait for period upload"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/g/j;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "upload data too busy, give up this time"

    invoke-static {v2, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->a()Lcn/jiguang/analytics/android/f/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/f/m;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/jiguang/analytics/android/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/f/d;->a(Landroid/content/Context;Z)V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/analytics/android/f/l;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xa000

    if-lt v5, v6, :cond_3

    invoke-static {p1, v4}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    if-ge v5, v6, :cond_4

    invoke-static {v1, v4}, Lcn/jiguang/analytics/android/d/a;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {p1, v1}, Lcn/jiguang/analytics/android/f/l;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_6
    invoke-static {p1}, Lcn/jiguang/analytics/android/f/m;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordManager"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/View;J)V
    .locals 8

    const-string v0, "RecordManager"

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClickEvent viewId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/c/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;)Lcn/jiguang/analytics/android/f/k;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onClickEvent="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/f/k;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcn/jiguang/analytics/android/d/a;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/f/k;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/l;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-wide/16 v6, 0x0

    move-wide v4, p2

    invoke-static/range {v2 .. v7}, Lcn/jiguang/analytics/android/f/l;->a(Lorg/json/JSONArray;Lcn/jiguang/analytics/android/f/k;JJ)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Landroid/view/View;JZ)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object p1

    invoke-static {p1}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;)Lcn/jiguang/analytics/android/f/k;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/f/k;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/c/a;J)V
    .locals 11

    const-string v0, "RecordManager"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBrowseEvent hide, getViewTreePath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcn/jiguang/analytics/android/f/k;

    iget-object v3, v6, Lcn/jiguang/analytics/android/f/k;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/c/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v6, Lcn/jiguang/analytics/android/f/k;->c:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v6, Lcn/jiguang/analytics/android/f/k;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/c/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v6, Lcn/jiguang/analytics/android/f/k;->a:Ljava/lang/String;

    iget-object v5, v6, Lcn/jiguang/analytics/android/f/k;->c:Ljava/lang/String;

    iget-object v7, v6, Lcn/jiguang/analytics/android/f/k;->d:Ljava/lang/String;

    invoke-static {v3, v5, v7}, Lcn/jiguang/analytics/android/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onBrowseEvent hide, path="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v6, Lcn/jiguang/analytics/android/f/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcn/jiguang/analytics/android/f/k;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jiguang/analytics/android/f/l;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcn/jiguang/analytics/android/f/l;->a(Lorg/json/JSONArray;Lcn/jiguang/analytics/android/f/k;JJ)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    iput-object v1, p0, Lcn/jiguang/analytics/android/f/l;->c:Ljava/util/Map;

    invoke-static {}, Lcn/jiguang/analytics/android/f/l;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(Landroid/view/View;J)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcn/jiguang/analytics/android/f/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/e/g;->c(Landroid/view/View;)Lcn/jiguang/analytics/android/c/a;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b(Lcn/jiguang/analytics/android/c/a;J)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;)Lcn/jiguang/analytics/android/f/k;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/f/k;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final c(Lcn/jiguang/analytics/android/c/a;J)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/c/a;)Lcn/jiguang/analytics/android/f/k;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/jiguang/analytics/android/f/l;->a(Lcn/jiguang/analytics/android/f/k;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
