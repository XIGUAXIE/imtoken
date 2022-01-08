.class final Lcn/jiguang/analytics/android/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/jiguang/analytics/android/f/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcn/jiguang/analytics/android/f/a;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xxx_fetchFilter from http : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventFilter"

    invoke-static {v2, v1}, Lcn/jiguang/analytics/android/e/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcn/jiguang/analytics/android/f/d;->a(J)J

    invoke-static {v0}, Lcn/jiguang/analytics/android/f/f;->a(Ljava/lang/String;)Lcn/jiguang/analytics/android/f/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/jiguang/analytics/android/f/e;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lcn/jiguang/analytics/android/f/c;->a(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v1}, Lcn/jiguang/analytics/android/f/d;->a(Lcn/jiguang/analytics/android/f/f;)Lcn/jiguang/analytics/android/f/f;

    :cond_0
    return-void
.end method
