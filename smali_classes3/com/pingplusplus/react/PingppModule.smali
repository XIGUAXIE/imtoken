.class public Lcom/pingplusplus/react/PingppModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "PingppModule.java"


# static fields
.field public static mResultCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-void
.end method


# virtual methods
.method public createPayment(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 30
    sput-object p2, Lcom/pingplusplus/react/PingppModule;->mResultCallback:Lcom/facebook/react/bridge/Callback;

    .line 31
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pingplusplus/react/PingppModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/pingplusplus/react/PingppActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "charge"

    .line 32
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0}, Lcom/pingplusplus/react/PingppModule;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "PingppModule"

    return-object v0
.end method

.method public getVersion(Lcom/facebook/react/bridge/Callback;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "2.3.5"

    aput-object v2, v0, v1

    .line 38
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 43
    sput-boolean p1, Lcom/pingplusplus/android/Pingpp;->DEBUG:Z

    return-void
.end method
