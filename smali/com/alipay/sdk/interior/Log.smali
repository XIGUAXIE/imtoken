.class public Lcom/alipay/sdk/interior/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/interior/Log$ISdkLogCallback;
    }
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forcedLogReport(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/alipay/sdk/sys/b;->a()Lcom/alipay/sdk/sys/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alipay/sdk/sys/b;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 41
    sget-wide v3, Lcom/alipay/sdk/interior/Log;->a:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x258

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    return v0

    .line 44
    :cond_0
    sput-wide v1, Lcom/alipay/sdk/interior/Log;->a:J

    .line 45
    invoke-static {p0}, Lcom/alipay/sdk/app/statistic/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 48
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static setupLogCallback(Lcom/alipay/sdk/interior/Log$ISdkLogCallback;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lcom/alipay/sdk/util/c;->a(Lcom/alipay/sdk/interior/Log$ISdkLogCallback;)V

    return-void
.end method
