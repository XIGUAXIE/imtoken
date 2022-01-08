.class public Lcom/facebook/react/turbomodule/core/TurboModuleManager;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"

# interfaces
.implements Lcom/facebook/react/bridge/JSIModule;
.implements Lcom/facebook/react/turbomodule/core/interfaces/TurboModuleRegistry;


# instance fields
.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mTurboModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTurbomoduleManagerDelegate:Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "turbomodulejsijni"

    .line 29
    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/JavaScriptContextHolder;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;)V
    .locals 7

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    .line 47
    invoke-virtual {p1}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v2

    move-object v4, p3

    check-cast v4, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    move-object v5, p4

    check-cast v5, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    move-object v1, p0

    move-object v6, p2

    .line 46
    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;)Lcom/facebook/jni/HybridData;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 51
    iput-object p2, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurbomoduleManagerDelegate:Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;

    return-void
.end method

.method private native initHybrid(JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;)Lcom/facebook/jni/HybridData;
.end method

.method private native installJSIBindings()V
.end method


# virtual methods
.method public getEagerInitModuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurbomoduleManagerDelegate:Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;

    invoke-virtual {v0}, Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;->getEagerInitModuleNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getJavaModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurbomoduleManagerDelegate:Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;

    invoke-virtual {v0, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManagerDelegate;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/NativeModule;

    invoke-interface {v1}, Lcom/facebook/react/bridge/NativeModule;->initialize()V

    .line 71
    iget-object v1, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    return-object p1
.end method

.method public getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->getJavaModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object p1

    return-object p1
.end method

.method public getModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hasModule(Ljava/lang/String;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public installBindings()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->installJSIBindings()V

    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    .line 110
    check-cast v1, Lcom/facebook/react/bridge/NativeModule;

    invoke-interface {v1}, Lcom/facebook/react/bridge/NativeModule;->onCatalystInstanceDestroy()V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mTurboModules:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lcom/facebook/react/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    return-void
.end method
