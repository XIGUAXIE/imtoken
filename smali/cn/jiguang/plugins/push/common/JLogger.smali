.class public Lcn/jiguang/plugins/push/common/JLogger;
.super Ljava/lang/Object;
.source "JLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RN-JPush"

.field private static isLoggerEnable:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 24
    sget-boolean v0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RN-JPush"

    .line 25
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RN-JPush"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RN-JPush"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setLoggerEnable(Z)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLoggerEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RN-JPush"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sput-boolean p0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 30
    sget-boolean v0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RN-JPush"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-boolean v0, Lcn/jiguang/plugins/push/common/JLogger;->isLoggerEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "RN-JPush"

    .line 37
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
