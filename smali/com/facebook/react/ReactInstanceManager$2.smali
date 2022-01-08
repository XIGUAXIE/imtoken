.class Lcom/facebook/react/ReactInstanceManager$2;
.super Ljava/lang/Object;
.source "ReactInstanceManager.java"

# interfaces
.implements Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/ReactInstanceManager;->createDevHelperInterface()Lcom/facebook/react/devsupport/ReactInstanceManagerDevHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/react/ReactInstanceManager;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactInstanceManager;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRootView(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/facebook/react/ReactInstanceManager$2;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    new-instance v2, Lcom/facebook/react/ReactRootView;

    invoke-direct {v2, v0}, Lcom/facebook/react/ReactRootView;-><init>(Landroid/content/Context;)V

    .line 314
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-virtual {v2, v0, p1, v1}, Lcom/facebook/react/ReactRootView;->startReactApplication(Lcom/facebook/react/ReactInstanceManager;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public destroyRootView(Landroid/view/View;)V
    .locals 1

    .line 324
    instance-of v0, p1, Lcom/facebook/react/ReactRootView;

    if-eqz v0, :cond_0

    .line 325
    check-cast p1, Lcom/facebook/react/ReactRootView;

    invoke-virtual {p1}, Lcom/facebook/react/ReactRootView;->unmountReactApplication()V

    :cond_0
    return-void
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$400(Lcom/facebook/react/ReactInstanceManager;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getJavaScriptExecutorFactory()Lcom/facebook/react/bridge/JavaScriptExecutorFactory;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$500(Lcom/facebook/react/ReactInstanceManager;)Lcom/facebook/react/bridge/JavaScriptExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public onJSBundleLoadedFromServer()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$200(Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method

.method public onReloadWithJSDebugger(Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->access$100(Lcom/facebook/react/ReactInstanceManager;Lcom/facebook/react/bridge/JavaJSExecutor$Factory;)V

    return-void
.end method

.method public toggleElementInspector()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/facebook/react/ReactInstanceManager$2;->this$0:Lcom/facebook/react/ReactInstanceManager;

    invoke-static {v0}, Lcom/facebook/react/ReactInstanceManager;->access$300(Lcom/facebook/react/ReactInstanceManager;)V

    return-void
.end method
