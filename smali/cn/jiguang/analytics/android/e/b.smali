.class public final Lcn/jiguang/analytics/android/e/b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcn/jiguang/analytics/android/f/i;

.field public b:Lcn/jiguang/analytics/android/f/i;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/jiguang/analytics/android/f/i;Lcn/jiguang/analytics/android/f/i;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jiguang/analytics/android/f/i;",
            "Lcn/jiguang/analytics/android/f/i;",
            "Ljava/util/List<",
            "Lcn/jiguang/analytics/android/f/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/analytics/android/e/b;->a:Lcn/jiguang/analytics/android/f/i;

    iput-object p2, p0, Lcn/jiguang/analytics/android/e/b;->b:Lcn/jiguang/analytics/android/f/i;

    iput-object p3, p0, Lcn/jiguang/analytics/android/e/b;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "page"

    iget-object v2, p0, Lcn/jiguang/analytics/android/e/b;->a:Lcn/jiguang/analytics/android/f/i;

    invoke-virtual {v2, p1}, Lcn/jiguang/analytics/android/f/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/jiguang/analytics/android/e/b;->b:Lcn/jiguang/analytics/android/f/i;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcn/jiguang/analytics/android/e/b;->b:Lcn/jiguang/analytics/android/f/i;

    invoke-virtual {v2, p1}, Lcn/jiguang/analytics/android/f/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcn/jiguang/analytics/android/e/b;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/jiguang/analytics/android/e/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcn/jiguang/analytics/android/e/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/jiguang/analytics/android/f/i;

    invoke-virtual {v3, p1}, Lcn/jiguang/analytics/android/f/i;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p1, "inside_views"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "toBuryActionJson err:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BuryInfos"

    invoke-static {v1, p1}, Lcn/jiguang/analytics/android/e/a/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v0
.end method
