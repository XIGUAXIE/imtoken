.class public Lcn/jiguang/aj/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/ao/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/jiguang/aj/k;

.field private final b:Lcn/jiguang/aj/p;

.field private final c:Lcn/jiguang/aj/f;

.field private final d:Lcn/jiguang/aj/h;


# direct methods
.method public constructor <init>(Lcn/jiguang/aj/k;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;Lcn/jiguang/aj/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    iput-object p1, p0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    iput-object p3, p0, Lcn/jiguang/aj/b;->c:Lcn/jiguang/aj/f;

    iput-object p4, p0, Lcn/jiguang/aj/b;->d:Lcn/jiguang/aj/h;

    return-void
.end method


# virtual methods
.method public a()Lcn/jiguang/ao/a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/aj/b;->c:Lcn/jiguang/aj/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    invoke-virtual {v0}, Lcn/jiguang/aj/k;->b()I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/aj/b;->c:Lcn/jiguang/aj/f;

    invoke-virtual {v1, v0}, Lcn/jiguang/aj/f;->a(I)Lcn/jiguang/aj/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jiguang/aj/b;->a(Lcn/jiguang/aj/g;)Lcn/jiguang/ao/a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConnTask"

    invoke-static {v1, v0}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcn/jiguang/aj/g;)Lcn/jiguang/ao/a;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    invoke-virtual {v2}, Lcn/jiguang/aj/p;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, v0, Lcn/jiguang/aj/b;->d:Lcn/jiguang/aj/h;

    const/16 v4, -0x3df

    if-eqz v2, :cond_a

    iget-boolean v2, v2, Lcn/jiguang/aj/h;->a:Z

    if-eqz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v1, :cond_2

    return-object v3

    :cond_2
    sget-object v2, Lcn/jiguang/ai/a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcn/jiguang/ai/a;->c:Ljava/lang/String;

    iput-object v2, v1, Lcn/jiguang/aj/g;->a:Ljava/lang/String;

    sget-object v2, Lcn/jiguang/ai/a;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, v1, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    :cond_3
    sget v2, Lcn/jiguang/ai/a;->d:I

    if-lez v2, :cond_4

    sget v2, Lcn/jiguang/ai/a;->d:I

    iput v2, v1, Lcn/jiguang/aj/g;->b:I

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open connection with ip="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", port:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "ConnTask"

    invoke-static {v6, v2}, Lcn/jiguang/af/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v2, Lcn/jiguang/ao/b;

    const/16 v9, 0x1fc0

    const/16 v10, 0x14

    invoke-direct {v2, v9, v10}, Lcn/jiguang/ao/b;-><init>(II)V

    iget-object v9, v1, Lcn/jiguang/aj/g;->a:Ljava/lang/String;

    iget v10, v1, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v2, v9, v10}, Lcn/jiguang/ao/a;->a(Ljava/lang/String;I)I

    move-result v9

    iget-object v10, v0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    invoke-virtual {v10}, Lcn/jiguang/aj/p;->a()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v2}, Lcn/jiguang/f/h;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_5
    iget-object v10, v0, Lcn/jiguang/aj/b;->d:Lcn/jiguang/aj/h;

    iget-boolean v10, v10, Lcn/jiguang/aj/h;->a:Z

    if-eqz v10, :cond_6

    new-instance v1, Lcn/jiguang/al/f;

    invoke-direct {v1, v4, v3}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    iget-object v4, v0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    invoke-virtual {v4, v1}, Lcn/jiguang/aj/p;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Lcn/jiguang/f/h;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_6
    if-nez v9, :cond_9

    iget-object v3, v1, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_8

    iget-object v3, v1, Lcn/jiguang/aj/g;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/jiguang/f/f;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v3, 0x1

    :goto_1
    iget-object v8, v0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    iget-object v8, v8, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    new-array v9, v7, [Lcn/jiguang/g/a;

    invoke-static {v3}, Lcn/jiguang/g/a;->c(Z)Lcn/jiguang/g/a;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcn/jiguang/aj/g;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v3

    aput-object v3, v9, v4

    invoke-static {v8, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Succeed to open connection - ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcn/jiguang/af/c;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    invoke-virtual {v3, v2}, Lcn/jiguang/aj/p;->a(Ljava/lang/Object;)V

    iget-object v3, v0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    iget-object v3, v3, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    const-wide/16 v4, 0x0

    invoke-static {v3, v1, v7, v4, v5}, Lcn/jiguang/aj/e;->a(Landroid/content/Context;Lcn/jiguang/aj/g;IJ)V

    return-object v2

    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v7, v10, v7

    iget-object v4, v0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    iget-object v4, v4, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcn/jiguang/d/b;->b(Landroid/content/Context;)J

    move-result-wide v15

    iget-object v11, v0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    const/4 v12, 0x2

    iget-object v13, v1, Lcn/jiguang/aj/g;->a:Ljava/lang/String;

    iget v14, v1, Lcn/jiguang/aj/g;->b:I

    move-wide/from16 v17, v7

    move/from16 v19, v9

    invoke-virtual/range {v11 .. v19}, Lcn/jiguang/aj/k;->a(ILjava/lang/String;IJJI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed("

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") to open connection - ip:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcn/jiguang/af/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcn/jiguang/aj/b;->a:Lcn/jiguang/aj/k;

    iget-object v4, v4, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v1, v5, v7, v8}, Lcn/jiguang/aj/e;->a(Landroid/content/Context;Lcn/jiguang/aj/g;IJ)V

    invoke-static {v2}, Lcn/jiguang/f/h;->a(Ljava/io/Closeable;)V

    return-object v3

    :cond_a
    :goto_2
    new-instance v1, Lcn/jiguang/al/f;

    invoke-direct {v1, v4, v3}, Lcn/jiguang/al/f;-><init>(ILjava/lang/String;)V

    iget-object v2, v0, Lcn/jiguang/aj/b;->b:Lcn/jiguang/aj/p;

    invoke-virtual {v2, v1}, Lcn/jiguang/aj/p;->a(Ljava/lang/Object;)V

    return-object v3
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/jiguang/aj/b;->a()Lcn/jiguang/ao/a;

    move-result-object v0

    return-object v0
.end method
