.class public Lcom/facebook/react/fabric/FabricJSIModuleProvider;
.super Ljava/lang/Object;
.source "FabricJSIModuleProvider.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModuleProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/react/bridge/JSIModuleProvider<",
        "Lcom/facebook/react/bridge/UIManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentFactoryDelegate:Lcom/facebook/react/fabric/ComponentFactoryDelegate;

.field private final mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

.field private final mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

.field private final mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/fabric/ComponentFactoryDelegate;Lcom/facebook/react/fabric/ReactNativeConfig;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 53
    iput-object p2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

    .line 54
    iput-object p3, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mComponentFactoryDelegate:Lcom/facebook/react/fabric/ComponentFactoryDelegate;

    .line 55
    iput-object p4, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    return-void
.end method

.method private createUIManager(Lcom/facebook/react/fabric/events/EventBeatManager;)Lcom/facebook/react/fabric/FabricUIManager;
    .locals 6

    const-wide/16 v0, 0x0

    const-string v2, "FabricJSIModuleProvider.createUIManager"

    .line 84
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-class v3, Lcom/facebook/react/uimanager/UIManagerModule;

    invoke-virtual {v2, v3}, Lcom/facebook/react/bridge/ReactApplicationContext;->getNativeModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/uimanager/UIManagerModule;

    .line 87
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v3

    .line 88
    new-instance v4, Lcom/facebook/react/fabric/FabricUIManager;

    iget-object v5, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 91
    invoke-virtual {v2}, Lcom/facebook/react/uimanager/UIManagerModule;->getViewManagerRegistry_DO_NOT_USE()Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-result-object v2

    invoke-direct {v4, v5, v2, v3, p1}, Lcom/facebook/react/fabric/FabricUIManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/fabric/events/EventBeatManager;)V

    .line 95
    invoke-static {v0, v1}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-object v4
.end method

.method private static loadClasses()V
    .locals 1

    .line 102
    const-class v0, Lcom/facebook/react/uimanager/events/BatchEventDispatchedListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    const-class v0, Lcom/facebook/react/fabric/ReactNativeConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    const-class v0, Lcom/facebook/react/fabric/FabricComponents;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    const-class v0, Lcom/facebook/react/uimanager/StateWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    const-class v0, Lcom/facebook/react/fabric/events/FabricEventEmitter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    const-class v0, Lcom/facebook/react/fabric/FabricUIManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const-class v0, Lcom/facebook/react/fabric/GuardedFrameCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/BatchMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/DeleteMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchCommandMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/DispatchStringCommandMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/InsertMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/MountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/RemoveMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateEventEmitterMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLayoutMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdateLocalDataMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePaddingMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/UpdatePropsMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    const-class v0, Lcom/facebook/react/fabric/mounting/LayoutMetricsConversions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    const-class v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    const-class v0, Lcom/facebook/react/fabric/Binding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    const-class v0, Lcom/facebook/react/fabric/ComponentFactoryDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    const-class v0, Lcom/facebook/react/fabric/events/EventBeatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    const-class v0, Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    const-class v0, Lcom/facebook/react/fabric/StateWrapperImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    const-class v0, Lcom/facebook/react/fabric/FabricSoLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    const-class v0, Lcom/facebook/react/fabric/mounting/mountitems/PreAllocateViewMountItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Lcom/facebook/react/bridge/JSIModule;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->get()Lcom/facebook/react/bridge/UIManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lcom/facebook/react/bridge/UIManager;
    .locals 10

    .line 60
    new-instance v3, Lcom/facebook/react/fabric/events/EventBeatManager;

    iget-object v0, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-direct {v3, v0}, Lcom/facebook/react/fabric/events/EventBeatManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 61
    invoke-direct {p0, v3}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->createUIManager(Lcom/facebook/react/fabric/events/EventBeatManager;)Lcom/facebook/react/fabric/FabricUIManager;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-string v0, "FabricJSIModuleProvider.registerBinding"

    .line 62
    invoke-static {v8, v9, v0}, Lcom/facebook/systrace/Systrace;->beginSection(JLjava/lang/String;)V

    .line 64
    new-instance v0, Lcom/facebook/react/fabric/Binding;

    invoke-direct {v0}, Lcom/facebook/react/fabric/Binding;-><init>()V

    .line 66
    invoke-static {}, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->loadClasses()V

    .line 67
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mReactApplicationContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 69
    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Lcom/facebook/react/bridge/CatalystInstance;->getReactQueueConfiguration()Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Lcom/facebook/react/bridge/queue/ReactQueueConfiguration;->getJSQueueThread()Lcom/facebook/react/bridge/queue/MessageQueueThread;

    move-result-object v4

    .line 72
    iget-object v1, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mJSContext:Lcom/facebook/react/bridge/JavaScriptContextHolder;

    iget-object v5, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mComponentFactoryDelegate:Lcom/facebook/react/fabric/ComponentFactoryDelegate;

    iget-object v6, p0, Lcom/facebook/react/fabric/FabricJSIModuleProvider;->mConfig:Lcom/facebook/react/fabric/ReactNativeConfig;

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/react/fabric/Binding;->register(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/fabric/FabricUIManager;Lcom/facebook/react/fabric/events/EventBeatManager;Lcom/facebook/react/bridge/queue/MessageQueueThread;Lcom/facebook/react/fabric/ComponentFactoryDelegate;Lcom/facebook/react/fabric/ReactNativeConfig;)V

    .line 79
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    return-object v7
.end method
