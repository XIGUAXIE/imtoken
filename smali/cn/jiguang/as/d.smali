.class public Lcn/jiguang/as/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/as/d;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "SDK_INIT"

    const-string v2, "ic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "SDK_SERVICE_INIT"

    const-string v2, "mn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "TCP_CONN_TASK"

    const-string/jumbo v2, "tc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "UPLOAD_REPORT"

    const-string/jumbo v2, "rp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "ONCE_TASK"

    const-string v2, "oc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "SCHEDULE_TASK"

    const-string/jumbo v2, "sc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "MAJOR_TASK"

    const-string v2, "mj"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "NORMAL_TASK"

    const-string v2, "nr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    const-string v1, "FUTURE_TASK"

    const-string v2, "fr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/as/d;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcn/jiguang/as/d;->a(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutdown executor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SDKWorker_XExecutor"

    invoke-static {v0, p0}, Lcn/jiguang/af/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/as/d;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "execute failed, try again e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDKWorker_XExecutor"

    invoke-static {p1, p0}, Lcn/jiguang/af/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    const-string v0, "SDKWorker_XExecutor"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "executor did not terminate"

    invoke-static {v0, v1}, Lcn/jiguang/af/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shutDown e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const-string p0, "current thread is interrupted by self"

    invoke-static {v0, p0}, Lcn/jiguang/af/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcn/jiguang/as/d;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check executor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " isAlive error: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SDKWorker_XExecutor"

    invoke-static {v1, p0}, Lcn/jiguang/af/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 24

    sget-object v0, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "NORMAL_TASK"

    :goto_0
    sget-object v1, Lcn/jiguang/as/d;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcn/jiguang/as/d;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const-class v2, Lcn/jiguang/as/d;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcn/jiguang/as/d;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "NORMAL_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_1
    const-string v4, "FUTURE_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_2
    const-string v4, "SDK_SERVICE_INIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v4, "SDK_INIT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "SCHEDULE_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "MAJOR_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_6
    const-string v4, "TCP_CONN_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_7
    const-string v4, "ONCE_TASK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_8
    const-string v4, "UPLOAD_REPORT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    goto/16 :goto_4

    :pswitch_0
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x3

    const/4 v11, 0x3

    const-wide/16 v12, 0xf

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v15, v5}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    new-instance v4, Lcn/jiguang/as/c;

    invoke-direct {v4, v1}, Lcn/jiguang/as/c;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x3

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v4, Lcn/jiguang/as/c;

    invoke-direct {v4, v1}, Lcn/jiguang/as/c;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    :goto_2
    invoke-virtual {v4, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_3

    :pswitch_2
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0xa

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v4, Lcn/jiguang/as/c;

    invoke-direct {v4, v1}, Lcn/jiguang/as/c;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_2

    :pswitch_3
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v15}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v4, Lcn/jiguang/as/c;

    invoke-direct {v4, v1}, Lcn/jiguang/as/c;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    :goto_3
    const/4 v6, 0x1

    goto :goto_5

    :goto_4
    const/16 v17, 0x1

    const/16 v18, 0x5

    const-wide/16 v19, 0x1

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v4, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    new-instance v5, Lcn/jiguang/as/c;

    invoke-direct {v5, v1}, Lcn/jiguang/as/c;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    goto :goto_3

    :goto_5
    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcn/jiguang/as/a;

    invoke-direct {v5, v1, v6}, Lcn/jiguang/as/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    sget-object v1, Lcn/jiguang/as/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2

    move-object v2, v3

    :cond_5
    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x61eccece -> :sswitch_8
        -0x44e4477d -> :sswitch_7
        -0x5c2e446 -> :sswitch_6
        0xae9c06b -> :sswitch_5
        0x1f826a2d -> :sswitch_4
        0x4081d615 -> :sswitch_3
        0x507fbc7f -> :sswitch_2
        0x64030681 -> :sswitch_1
        0x7285addd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
