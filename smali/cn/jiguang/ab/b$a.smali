.class public Lcn/jiguang/ab/b$a;
.super Lcn/jiguang/l/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jiguang/ab/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/l/e;-><init>()V

    iput-object p1, p0, Lcn/jiguang/ab/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/jiguang/ab/b$a;->c:Lorg/json/JSONObject;

    const-string p1, "JWakeCmd#WakeAction"

    iput-object p1, p0, Lcn/jiguang/ab/b$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "JWakeCmd"

    :try_start_0
    iget-object v1, p0, Lcn/jiguang/ab/b$a;->a:Landroid/content/Context;

    const-string v2, "JWakeCmdcmd"

    invoke-static {v1, v2}, Lcn/jiguang/l/b;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcn/jiguang/ab/b$a;->c:Lorg/json/JSONObject;

    if-nez v5, :cond_1

    sub-long/2addr v3, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "is not cmd wake time"

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcn/jiguang/ab/b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/jiguang/ab/b$a;->c:Lorg/json/JSONObject;

    invoke-static {v1, v2}, Lcn/jiguang/ab/b;->b(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeAction failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/y/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
