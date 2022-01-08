.class final Lcn/jiguang/analytics/android/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcn/jiguang/analytics/android/a/j;

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Lcn/jiguang/analytics/android/a/j;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/analytics/android/a/l;->e:J

    iput p2, p0, Lcn/jiguang/analytics/android/a/l;->b:I

    iput-object p3, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    iput-object p4, p0, Lcn/jiguang/analytics/android/a/l;->d:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/j;->a(Lcn/jiguang/analytics/android/a/j;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/j;->a(Lcn/jiguang/analytics/android/a/j;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/j;->b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;

    move-result-object v0

    const-string v1, "SessionManager"

    if-nez v0, :cond_0

    const-string/jumbo v0, "please call onResume in your activity"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/j;->d(Lcn/jiguang/analytics/android/a/j;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/j;->e(Lcn/jiguang/analytics/android/a/j;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPause :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    invoke-static {p1}, Lcn/jiguang/analytics/android/e/b/a;->a(Landroid/content/Context;)Lcn/jiguang/analytics/android/e/b/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "lastpausetime"

    invoke-virtual {v0, v3, v1, v2}, Lcn/jiguang/analytics/android/e/b/a;->b(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-wide v2, Lcn/jiguang/analytics/android/d;->e:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0}, Lcn/jiguang/analytics/android/a/j;->b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/a/j;->a(Lcn/jiguang/analytics/android/a/j;Landroid/content/Context;)V

    :cond_2
    iget-object p1, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {p1}, Lcn/jiguang/analytics/android/a/j;->c(Lcn/jiguang/analytics/android/a/j;)V

    invoke-static {}, Lcn/jiguang/analytics/android/a/o;->b()Lcn/jiguang/analytics/android/a/o;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jiguang/analytics/android/a/o;->c()V

    const/16 p1, 0x1111

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/jiguang/analytics/android/a/g;->a(IZ)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    const-string v1, "SessionManager"

    if-nez v0, :cond_0

    const-string v0, "action context is null"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcn/jiguang/analytics/android/a/l;->b:I

    sget v2, Lcn/jiguang/analytics/android/a/k;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/a/l;->a(Landroid/content/Context;)V

    return-void

    :cond_1
    iget v0, p0, Lcn/jiguang/analytics/android/a/l;->b:I

    sget v2, Lcn/jiguang/analytics/android/a/k;->b:I

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/l;->a()V

    return-void

    :cond_2
    iget v0, p0, Lcn/jiguang/analytics/android/a/l;->b:I

    sget v2, Lcn/jiguang/analytics/android/a/k;->c:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Action - pageStart pageName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v3}, Lcn/jiguang/analytics/android/a/j;->f(Lcn/jiguang/analytics/android/a/j;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcn/jiguang/analytics/android/a/l;->a(Landroid/content/Context;)V

    :cond_3
    iget-object v3, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v3}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v3}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v3

    invoke-virtual {v3}, Lcn/jiguang/analytics/android/b/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "same page,re generatePage"

    invoke-static {v1, v3}, Lcn/jiguang/analytics/android/e/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v3, v2}, Lcn/jiguang/analytics/android/a/j;->a(Lcn/jiguang/analytics/android/a/j;Ljava/lang/String;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v2

    new-instance v3, Lcn/jiguang/analytics/android/b/c;

    invoke-direct {v3}, Lcn/jiguang/analytics/android/b/c;-><init>()V

    invoke-virtual {v3, v0}, Lcn/jiguang/analytics/android/b/c;->a(Landroid/content/Context;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2, v3}, Lcn/jiguang/analytics/android/b/d;->a(Lcn/jiguang/analytics/android/b/c;)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v0, v2}, Lcn/jiguang/analytics/android/a/j;->a(Lcn/jiguang/analytics/android/a/j;Lcn/jiguang/analytics/android/b/d;)Lcn/jiguang/analytics/android/b/d;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onPageStart :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/d;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    iget v0, p0, Lcn/jiguang/analytics/android/a/l;->b:I

    sget v2, Lcn/jiguang/analytics/android/a/k;->d:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/l;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->d:Ljava/lang/String;

    iget-wide v3, p0, Lcn/jiguang/analytics/android/a/l;->e:J

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Action - onPageEnd pageName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->f(Lcn/jiguang/analytics/android/a/j;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/l;->a()V

    :cond_7
    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v5

    const-string/jumbo v6, "please call onPageStart in your activities or fragments with pageName :"

    if-nez v5, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/b/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/b/d;->c()I

    move-result v2

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/b/e;->c()I

    move-result v5

    if-eq v2, v5, :cond_a

    const-string/jumbo v0, "please make sure not repeat call onPageEnd at one time"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcn/jiguang/analytics/android/b/d;->b(J)V

    new-instance v2, Lcn/jiguang/analytics/android/b/c;

    invoke-direct {v2}, Lcn/jiguang/analytics/android/b/c;-><init>()V

    invoke-virtual {v2, v0}, Lcn/jiguang/analytics/android/b/c;->a(Landroid/content/Context;)V

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcn/jiguang/analytics/android/b/d;->b(Lcn/jiguang/analytics/android/b/c;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onPageEnd :"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v5

    invoke-virtual {v5}, Lcn/jiguang/analytics/android/b/d;->a()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->b(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/e;

    move-result-object v2

    iget-object v5, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v5}, Lcn/jiguang/analytics/android/a/j;->g(Lcn/jiguang/analytics/android/a/j;)Lcn/jiguang/analytics/android/b/d;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcn/jiguang/analytics/android/b/e;->a(Lcn/jiguang/analytics/android/b/d;)V

    iget-object v2, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/j;->e(Lcn/jiguang/analytics/android/a/j;)V

    const/16 v2, 0x1111

    invoke-static {v2}, Lcn/jiguang/analytics/android/a/g;->a(I)Lcn/jiguang/analytics/android/a/n;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcn/jiguang/analytics/android/a/n;->a()I

    move-result v2

    if-lez v2, :cond_b

    const-string v0, "cache data, wait for period upload"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {v3, v4}, Lcn/jiguang/analytics/android/e/g/j;->b(J)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v0, "upload data too busy, give up this time"

    invoke-static {v1, v0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcn/jiguang/analytics/android/a/l;->a:Lcn/jiguang/analytics/android/a/j;

    invoke-virtual {v1}, Lcn/jiguang/analytics/android/a/j;->a()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v2}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/jiguang/api/JCoreInterface;->reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    :cond_d
    return-void
.end method
