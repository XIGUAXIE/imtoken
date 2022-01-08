.class Lcmb/pb/util/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcmb/pb/util/CMBKeyboardFunc;


# direct methods
.method constructor <init>(Lcmb/pb/util/CMBKeyboardFunc;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/util/e;->a:Lcmb/pb/util/CMBKeyboardFunc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x190

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcmb/pb/util/e;->a:Lcmb/pb/util/CMBKeyboardFunc;

    iget-object v0, v0, Lcmb/pb/util/CMBKeyboardFunc;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
