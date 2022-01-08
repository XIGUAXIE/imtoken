.class Lcn/jiguang/plugins/push/JPushModule$1;
.super Ljava/lang/Object;
.source "JPushModule.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jiguang/plugins/push/JPushModule;->registerActivityLifecycle(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "onActivityCreated"

    .line 504
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onActivityDestroyed"

    .line 536
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onActivityPaused"

    .line 520
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 521
    sput-boolean p1, Lcn/jiguang/plugins/push/JPushModule;->isAppForeground:Z

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onActivityResumed"

    .line 514
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 515
    sput-boolean p1, Lcn/jiguang/plugins/push/JPushModule;->isAppForeground:Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "onActivitySaveInstanceState"

    .line 531
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onActivityStarted"

    .line 509
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    const-string p1, "onActivityStopped"

    .line 526
    invoke-static {p1}, Lcn/jiguang/plugins/push/common/JLogger;->d(Ljava/lang/String;)V

    return-void
.end method
