.class Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;
.super Ljava/lang/Object;
.source "HelpScoutModule.java"

# interfaces
.implements Lcom/helpscout/beacon/ui/BeaconOnOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;

.field final synthetic val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method constructor <init>(Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;->this$0:Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule;

    iput-object p2, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpened()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/codemotionapps/reactnativehelpscout/HelpScoutModule$1;->val$reactContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    .line 34
    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    const-string/jumbo v1, "open"

    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, v1, v2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
