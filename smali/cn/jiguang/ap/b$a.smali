.class Lcn/jiguang/ap/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/ap/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/jiguang/ap/b;


# direct methods
.method public constructor <init>(Lcn/jiguang/ap/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/ap/b$a;->a:Lcn/jiguang/ap/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "TaskHandlerManager_xxx"

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/ap/b$a;->a:Lcn/jiguang/ap/b;

    invoke-static {v1}, Lcn/jiguang/ap/b;->a(Lcn/jiguang/ap/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/ap/a;

    if-eqz v1, :cond_1

    iget v2, v1, Lcn/jiguang/ap/a;->c:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/os/Message;->what:I

    iget-wide v3, v1, Lcn/jiguang/ap/a;->b:J

    invoke-virtual {p0, v2, v3, v4}, Lcn/jiguang/ap/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcn/jiguang/ap/b$a;->a:Lcn/jiguang/ap/b;

    invoke-static {v2}, Lcn/jiguang/ap/b;->a(Lcn/jiguang/ap/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v1, p1}, Lcn/jiguang/ap/a;->a(Landroid/os/Message;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "miss task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage,e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/af/c;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
