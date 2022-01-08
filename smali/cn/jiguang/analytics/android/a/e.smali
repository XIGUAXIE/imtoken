.class final Lcn/jiguang/analytics/android/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/b/b;

.field final synthetic b:J

.field final synthetic c:Lcn/jiguang/analytics/android/a/d;


# direct methods
.method constructor <init>(Lcn/jiguang/analytics/android/a/d;Lcn/jiguang/analytics/android/b/b;J)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    iput-object p2, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    iput-wide p3, p0, Lcn/jiguang/analytics/android/a/e;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyevent"

    invoke-static {v0, v1}, Lcn/jiguang/analytics/android/e/b/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v2, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new event json info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/b/b;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventManager"

    invoke-static {v3, v2}, Lcn/jiguang/analytics/android/e/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v4, 0x1111

    invoke-static {v4}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v4

    if-lez v4, :cond_1

    const-string v2, "cache data, wait for period upload"

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcn/jiguang/analytics/android/a/e;->b:J

    invoke-static {v6, v7}, Lcn/jiguang/analytics/android/e/g/j;->b(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v2, "upload data too busy, give up this time"

    :goto_0
    invoke-static {v3, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    invoke-virtual {v0}, Lcn/jiguang/analytics/android/b/b;->b()Lcn/jiguang/analytics/android/api/Event;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event record success \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/e;->a:Lcn/jiguang/analytics/android/b/b;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/b/b;->b()Lcn/jiguang/analytics/android/api/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/api/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v0}, Lcn/jiguang/analytics/android/a/d;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/b/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jiguang/analytics/android/a/e;->c:Lcn/jiguang/analytics/android/a/d;

    invoke-static {v1}, Lcn/jiguang/analytics/android/a/d;->a(Lcn/jiguang/analytics/android/a/d;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v2}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/jiguang/api/JCoreInterface;->reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_4
    return-void
.end method
