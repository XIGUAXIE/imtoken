.class public abstract Lcn/jiguang/as/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected h:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/jiguang/as/b$1;

    invoke-direct {v0, p0}, Lcn/jiguang/as/b$1;-><init>(Lcn/jiguang/as/b;)V

    iput-object v0, p0, Lcn/jiguang/as/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jiguang/as/b;->h:Ljava/lang/String;

    new-instance p1, Lcn/jiguang/as/b$2;

    invoke-direct {p1, p0}, Lcn/jiguang/as/b$2;-><init>(Lcn/jiguang/as/b;)V

    iput-object p1, p0, Lcn/jiguang/as/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcn/jiguang/as/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Lcn/jiguang/as/b;->a()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
