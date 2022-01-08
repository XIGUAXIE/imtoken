.class public Lcn/jiguang/aj/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcn/jiguang/aj/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcn/jiguang/aj/k;

.field private final b:Lcn/jiguang/aj/p;

.field private final c:Lcn/jiguang/aj/f;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcn/jiguang/aj/g;


# direct methods
.method public constructor <init>(Lcn/jiguang/aj/k;Lcn/jiguang/aj/g;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jiguang/aj/k;",
            "Lcn/jiguang/aj/g;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/aj/o;->b:Lcn/jiguang/aj/p;

    iput-object p1, p0, Lcn/jiguang/aj/o;->c:Lcn/jiguang/aj/f;

    iput-object p2, p0, Lcn/jiguang/aj/o;->e:Lcn/jiguang/aj/g;

    iput-object p3, p0, Lcn/jiguang/aj/o;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcn/jiguang/aj/k;Lcn/jiguang/aj/p;Lcn/jiguang/aj/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    iput-object p2, p0, Lcn/jiguang/aj/o;->b:Lcn/jiguang/aj/p;

    iput-object p3, p0, Lcn/jiguang/aj/o;->c:Lcn/jiguang/aj/f;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcn/jiguang/aj/l;)V
    .locals 7

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/jiguang/aj/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p1, Lcn/jiguang/aj/l;->a:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcn/jiguang/aj/l;->b:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jiguang/f/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSisInfo ips="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sslIps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " net="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SisTask"

    invoke-static {v4, v3}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x8

    new-array v3, v3, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->J()Lcn/jiguang/g/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {}, Lcn/jiguang/g/a;->K()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {v4}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v5

    iget-object v6, p1, Lcn/jiguang/aj/l;->c:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x3

    invoke-static {v1}, Lcn/jiguang/g/a;->d(Z)Lcn/jiguang/g/a;

    move-result-object v5

    iget-object v6, p1, Lcn/jiguang/aj/l;->d:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x4

    invoke-static {}, Lcn/jiguang/g/a;->O()Lcn/jiguang/g/a;

    move-result-object v5

    iget-object v6, p1, Lcn/jiguang/aj/l;->e:Ljava/util/LinkedHashSet;

    invoke-static {v6}, Lcn/jiguang/aj/g;->a(Ljava/util/LinkedHashSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x5

    invoke-static {}, Lcn/jiguang/g/a;->R()Lcn/jiguang/g/a;

    move-result-object v5

    iget-object v6, p1, Lcn/jiguang/aj/l;->f:Lorg/json/JSONObject;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcn/jiguang/aj/l;->f:Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v5

    aput-object v5, v3, v0

    const/4 v0, 0x6

    invoke-static {}, Lcn/jiguang/g/a;->L()Lcn/jiguang/g/a;

    move-result-object v5

    iget-boolean p1, p1, Lcn/jiguang/aj/l;->h:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object p1

    aput-object p1, v3, v0

    const/4 p1, 0x7

    invoke-static {}, Lcn/jiguang/g/a;->M()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v3, p1

    invoke-static {p0, v3}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    new-array p1, v1, [Lcn/jiguang/g/a;

    invoke-static {}, Lcn/jiguang/g/a;->F()Lcn/jiguang/g/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {p0, p1}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)[Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    :try_start_0
    iget-object v2, p0, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    iget-object v4, p0, Lcn/jiguang/aj/o;->d:Ljava/util/Set;

    invoke-virtual {v2, v4}, Lcn/jiguang/aj/k;->a(Ljava/util/Set;)[B

    move-result-object v2
    :try_end_0
    .catch Lcn/jiguang/al/f; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v4, Ljava/net/DatagramPacket;

    array-length v5, v2

    invoke-direct {v4, v2, v5, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    :try_start_1
    invoke-static {p1, v4}, Lcn/jiguang/aj/c;->a(Ljava/net/DatagramSocket;Ljava/net/DatagramPacket;)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    :try_start_2
    invoke-static {p1}, Lcn/jiguang/aj/c;->a([B)[B

    move-result-object p1
    :try_end_2
    .catch Lcn/jiguang/al/f; {:try_start_2 .. :try_end_2} :catch_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Lcn/jiguang/aj/l;

    invoke-direct {p1, v2}, Lcn/jiguang/aj/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/jiguang/aj/l;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0

    :cond_0
    iget-object v2, p0, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    iget-object v2, v2, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcn/jiguang/aj/o;->a(Landroid/content/Context;Lcn/jiguang/aj/l;)V

    new-instance v2, Lcn/jiguang/aj/g;

    invoke-direct {v2, p2, p3}, Lcn/jiguang/aj/g;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p1, Lcn/jiguang/aj/l;->g:Lcn/jiguang/aj/g;

    aput-object p1, v0, v1

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcn/jiguang/al/f;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0

    :catch_1
    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v3

    return-object v0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lcn/jiguang/al/f;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public a()Lcn/jiguang/aj/l;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcn/jiguang/aj/o;->c:Lcn/jiguang/aj/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    invoke-virtual {v0}, Lcn/jiguang/aj/k;->b()I

    move-result v0

    iget-object v1, p0, Lcn/jiguang/aj/o;->c:Lcn/jiguang/aj/f;

    invoke-virtual {v1, v0}, Lcn/jiguang/aj/f;->a(I)Lcn/jiguang/aj/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/jiguang/aj/o;->a(Lcn/jiguang/aj/g;)Lcn/jiguang/aj/l;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/jiguang/aj/o;->e:Lcn/jiguang/aj/g;

    invoke-virtual {p0, v0}, Lcn/jiguang/aj/o;->a(Lcn/jiguang/aj/g;)Lcn/jiguang/aj/l;

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

    const-string v1, "SisTask"

    invoke-static {v1, v0}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcn/jiguang/aj/g;)Lcn/jiguang/aj/l;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, " port:"

    const-string v3, "SisTask"

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    iget-object v5, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v6, Lcn/jiguang/ai/a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcn/jiguang/ai/a;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    iput-object v6, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    :cond_1
    sget v6, Lcn/jiguang/ai/a;->b:I

    if-lez v6, :cond_2

    sget v6, Lcn/jiguang/ai/a;->b:I

    iput v6, v0, Lcn/jiguang/aj/g;->b:I

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "send sis:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/jiguang/af/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    iget v7, v0, Lcn/jiguang/aj/g;->b:I

    invoke-direct {v1, v5, v6, v7}, Lcn/jiguang/aj/o;->a(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I)[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, v6, v7

    instance-of v8, v8, Lcn/jiguang/aj/l;

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    iget-object v2, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    instance-of v2, v2, Ljava/net/Inet4Address;

    iget-object v8, v1, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    invoke-virtual {v8, v2}, Lcn/jiguang/aj/k;->a(Z)V

    iget-object v8, v1, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    iget-object v8, v8, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    new-array v9, v9, [Lcn/jiguang/g/a;

    invoke-static {v2}, Lcn/jiguang/g/a;->b(Z)Lcn/jiguang/g/a;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/jiguang/aj/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/jiguang/g/a;->a(Ljava/lang/Object;)Lcn/jiguang/g/a;

    move-result-object v0

    aput-object v0, v9, v7

    invoke-static {v8, v9}, Lcn/jiguang/g/b;->a(Landroid/content/Context;[Lcn/jiguang/g/a;)V

    iget-object v0, v1, Lcn/jiguang/aj/o;->b:Lcn/jiguang/aj/p;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcn/jiguang/aj/o;->b:Lcn/jiguang/aj/p;

    aget-object v2, v6, v7

    invoke-virtual {v0, v2}, Lcn/jiguang/aj/p;->a(Ljava/lang/Object;)V

    :cond_3
    aget-object v0, v6, v7

    check-cast v0, Lcn/jiguang/aj/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v0

    :cond_4
    :try_start_3
    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v9

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sis failed("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "):"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/jiguang/aj/g;->b:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    const/4 v11, 0x1

    iget-object v2, v0, Lcn/jiguang/aj/g;->c:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    iget v13, v0, Lcn/jiguang/aj/g;->b:I

    iget-object v0, v1, Lcn/jiguang/aj/o;->a:Lcn/jiguang/aj/k;

    iget-object v0, v0, Lcn/jiguang/aj/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/jiguang/d/b;->b(Landroid/content/Context;)J

    move-result-wide v14

    move/from16 v18, v7

    invoke-virtual/range {v10 .. v18}, Lcn/jiguang/aj/k;->a(ILjava/lang/String;IJJI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v5, v4

    :goto_1
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sis e:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v5, :cond_5

    goto :goto_0

    :catchall_3
    :cond_5
    :goto_2
    return-object v4

    :catchall_4
    move-exception v0

    if-eqz v5, :cond_6

    :try_start_6
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    :cond_6
    throw v0

    :cond_7
    :goto_3
    return-object v4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/jiguang/aj/o;->a()Lcn/jiguang/aj/l;

    move-result-object v0

    return-object v0
.end method
