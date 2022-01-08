.class public Lcn/jiguang/al/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcn/jiguang/al/g;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcn/jiguang/ap/a;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/jiguang/al/g;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/al/g$1;

    invoke-direct {v0, p0}, Lcn/jiguang/al/g$1;-><init>(Lcn/jiguang/al/g;)V

    iput-object v0, p0, Lcn/jiguang/al/g;->d:Lcn/jiguang/ap/a;

    return-void
.end method

.method static synthetic a(Lcn/jiguang/al/g;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/jiguang/al/g;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcn/jiguang/al/g;
    .locals 2

    sget-object v0, Lcn/jiguang/al/g;->a:Lcn/jiguang/al/g;

    if-nez v0, :cond_1

    sget-object v0, Lcn/jiguang/al/g;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/al/g;->a:Lcn/jiguang/al/g;

    if-nez v1, :cond_0

    new-instance v1, Lcn/jiguang/al/g;

    invoke-direct {v1}, Lcn/jiguang/al/g;-><init>()V

    sput-object v1, Lcn/jiguang/al/g;->a:Lcn/jiguang/al/g;

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
    sget-object v0, Lcn/jiguang/al/g;->a:Lcn/jiguang/al/g;

    return-object v0
.end method

.method static synthetic a(Lcn/jiguang/al/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/jiguang/al/g;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jiguang/al/g;->e:J

    invoke-static {}, Lcn/jiguang/g/a;->A()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jiguang/g/b;->a(Landroid/content/Context;Lcn/jiguang/g/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/jiguang/al/a;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/jiguang/al/a;->b(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "PeriodWorker"

    const-string/jumbo v1, "periodTask..."

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/jiguang/al/g;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcn/jiguang/a/a;->a(Landroid/content/Context;ZJ)V

    invoke-static {}, Lcn/jiguang/al/b;->a()Lcn/jiguang/al/b;

    move-result-object v1

    const/16 v2, 0x13

    const-string/jumbo v3, "periodTask"

    invoke-virtual {v1, p1, v2, v0, v3}, Lcn/jiguang/al/b;->a(Landroid/content/Context;IILjava/lang/String;)V

    const-string/jumbo v0, "periodtask"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcn/jiguang/al/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcn/jiguang/al/g;->c:Landroid/content/Context;

    invoke-static {}, Lcn/jiguang/ap/b;->a()Lcn/jiguang/ap/b;

    move-result-object p1

    sget v0, Lcn/jiguang/internal/JConstants;->DEFAULT_HEARTBEAT_INTERVAL:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcn/jiguang/al/g;->d:Lcn/jiguang/ap/a;

    const/16 v3, 0x1f40

    invoke-virtual {p1, v3, v0, v1, v2}, Lcn/jiguang/ap/b;->a(IJLcn/jiguang/ap/a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "PeriodWorker"

    const-string v1, "PeriodWorker resume"

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/jiguang/al/g;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/jiguang/al/g;->e:J

    sget v5, Lcn/jiguang/internal/JConstants;->DEFAULT_HEARTBEAT_INTERVAL:I

    add-int/lit8 v5, v5, 0x5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string/jumbo p2, "schedule time is expired, execute now"

    invoke-static {v0, p2}, Lcn/jiguang/af/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jiguang/al/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/jiguang/al/g;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcn/jiguang/al/g;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcn/jiguang/al/g;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p1, "need not change period task"

    invoke-static {v0, p1}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
