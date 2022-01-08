.class public final Lcn/jiguang/analytics/android/a/o;
.super Lcn/jiguang/analytics/android/a/b;


# static fields
.field private static c:Lcn/jiguang/analytics/android/a/o;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/jiguang/analytics/android/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcn/jiguang/analytics/android/a/p;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcn/jiguang/analytics/android/a/b;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/o;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jiguang/analytics/android/a/o;->e:Ljava/util/HashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "upload"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcn/jiguang/analytics/android/a/p;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/jiguang/analytics/android/a/p;-><init>(Lcn/jiguang/analytics/android/a/o;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    return-void
.end method

.method private static a(Lcn/jiguang/analytics/android/a/b;Lorg/json/JSONArray;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/analytics/android/a/b;->a()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcn/jiguang/analytics/android/e/g/f;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unexcepted - e:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UploadManager"

    invoke-static {p1, p0}, Lcn/jiguang/analytics/android/e/a/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcn/jiguang/analytics/android/a/o;)V
    .locals 6

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->a:Landroid/content/Context;

    const-string v1, "UploadManager"

    if-nez v0, :cond_0

    const-string p0, "UploadManager context is null,please call init method"

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/g/j;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "upload data too busy, give up this time"

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcn/jiguang/analytics/android/a/o;->e:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jiguang/analytics/android/a/b;

    invoke-static {v5, v0}, Lcn/jiguang/analytics/android/a/o;->a(Lcn/jiguang/analytics/android/a/b;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "event and session data is empty, give up upload"

    invoke-static {v1, p0}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcn/jiguang/analytics/android/e/g/j;->d(J)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/o;->a:Landroid/content/Context;

    sget-object v1, Lcn/jiguang/api/SdkType;->JANALYTICS:Lcn/jiguang/api/SdkType;

    invoke-virtual {v1}, Lcn/jiguang/api/SdkType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/jiguang/api/JCoreInterface;->reportHttpData(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public static b()Lcn/jiguang/analytics/android/a/o;
    .locals 1

    sget-object v0, Lcn/jiguang/analytics/android/a/o;->c:Lcn/jiguang/analytics/android/a/o;

    if-nez v0, :cond_0

    new-instance v0, Lcn/jiguang/analytics/android/a/o;

    invoke-direct {v0}, Lcn/jiguang/analytics/android/a/o;-><init>()V

    sput-object v0, Lcn/jiguang/analytics/android/a/o;->c:Lcn/jiguang/analytics/android/a/o;

    :cond_0
    sget-object v0, Lcn/jiguang/analytics/android/a/o;->c:Lcn/jiguang/analytics/android/a/o;

    return-object v0
.end method

.method static synthetic b(Lcn/jiguang/analytics/android/a/o;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/analytics/android/a/o;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "UploadManager"

    if-nez p1, :cond_0

    const-string p1, "UploadManager init context is null"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/jiguang/analytics/android/a/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "UploadManager has inited"

    invoke-static {v0, p1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/jiguang/analytics/android/a/o;->a:Landroid/content/Context;

    iget-object p1, p0, Lcn/jiguang/analytics/android/a/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final a(Lcn/jiguang/analytics/android/a/b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/a/p;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/a/p;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/a/p;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/a/p;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/jiguang/analytics/android/a/p;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/analytics/android/a/o;->f:Lcn/jiguang/analytics/android/a/p;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcn/jiguang/analytics/android/a/p;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
