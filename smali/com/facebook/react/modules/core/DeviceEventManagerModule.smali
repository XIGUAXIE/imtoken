.class public Lcom/facebook/react/modules/core/DeviceEventManagerModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "DeviceEventManagerModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DeviceEventManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "DeviceEventManager"


# instance fields
.field private final mInvokeDefaultBackPressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 38
    new-instance p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$1;

    invoke-direct {p1, p0, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$1;-><init>(Lcom/facebook/react/modules/core/DeviceEventManagerModule;Lcom/facebook/react/modules/core/DefaultHardwareBackBtnHandler;)V

    iput-object p1, p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->mInvokeDefaultBackPressRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public emitHardwareBackPressed()V
    .locals 3

    .line 50
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 54
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const/4 v1, 0x0

    const-string v2, "hardwareBackPress"

    .line 55
    invoke-interface {v0, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public emitNewIntentReceived(Landroid/net/Uri;)V
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "url"

    invoke-interface {v1, v2, p1}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-class p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, p1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-interface {p1, v2, v1}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceEventManager"

    return-object v0
.end method

.method public invokeDefaultBackPressHandler()V
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/react/modules/core/DeviceEventManagerModule;->mInvokeDefaultBackPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnUiQueueThread(Ljava/lang/Runnable;)V

    return-void
.end method
