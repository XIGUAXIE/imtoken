.class Lcn/jiguang/aj/p$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/aj/p;-><init>(IILcn/jiguang/aj/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/aj/p;


# direct methods
.method constructor <init>(Lcn/jiguang/aj/p;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Lcn/jiguang/aj/p$1;->a:Lcn/jiguang/aj/p;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcn/jiguang/aj/p$1;->getActiveCount()I

    move-result p2

    if-gt p2, p1, :cond_0

    invoke-virtual {p0}, Lcn/jiguang/aj/p$1;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/jiguang/aj/p$1;->a:Lcn/jiguang/aj/p;

    invoke-static {p2}, Lcn/jiguang/aj/p;->a(Lcn/jiguang/aj/p;)Landroid/os/Handler;

    move-result-object p2

    const/16 v0, 0xe9

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :catchall_0
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lcn/jiguang/aj/p$1;->a:Lcn/jiguang/aj/p;

    invoke-static {p2}, Lcn/jiguang/aj/p;->b(Lcn/jiguang/aj/p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcn/jiguang/aj/p$1;->a:Lcn/jiguang/aj/p;

    invoke-static {p1}, Lcn/jiguang/aj/p;->c(Lcn/jiguang/aj/p;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method
