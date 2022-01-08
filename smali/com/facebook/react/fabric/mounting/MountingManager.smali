.class public Lcom/facebook/react/fabric/mounting/MountingManager;
.super Ljava/lang/Object;
.source "MountingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/facebook/react/fabric/mounting/MountingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 56
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    iput-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    return-void
.end method

.method private dropView(Landroid/view/View;)V
    .locals 5

    .line 87
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 90
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v1

    .line 91
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    .line 93
    iget-boolean v3, v1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    .line 95
    invoke-virtual {v2, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 97
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    instance-of v2, v2, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v2, :cond_2

    .line 98
    check-cast p1, Landroid/view/ViewGroup;

    .line 99
    invoke-static {v1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object v1

    .line 100
    invoke-virtual {v1, p1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 101
    invoke-virtual {v1, p1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 103
    invoke-direct {p0, v3}, Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;)V

    .line 105
    :cond_1
    invoke-virtual {v1, p1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    return-object p1
.end method

.method private static getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;",
            ")",
            "Lcom/facebook/react/uimanager/ViewGroupManager<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v0, :cond_0

    .line 209
    iget-object p0, p0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    check-cast p0, Lcom/facebook/react/uimanager/ViewGroupManager;

    return-object p0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find ViewManager for view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find viewState view for tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addRootView(ILandroid/view/View;)V
    .locals 9

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v8, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    iget-object v5, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v8

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;ZLcom/facebook/react/fabric/mounting/MountingManager$1;)V

    .line 79
    invoke-virtual {v0, v1, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    const-string p2, "Trying to add a root view with an explicit id already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-direct {p1, p2}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addViewAt(III)V
    .locals 3

    .line 114
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 115
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object p1

    .line 116
    iget-object v0, p1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 117
    invoke-direct {p0, p2}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v1

    .line 118
    iget-object v2, v1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 123
    invoke-static {p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p3}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    return-void

    .line 120
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find view for viewState "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearJSResponder()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    return-void
.end method

.method public createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V
    .locals 2

    .line 242
    invoke-direct {p0, p3}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 251
    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v1, p4}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p6, :cond_2

    .line 255
    iget-object p4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {p4, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p2

    .line 257
    iget-object p4, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 258
    invoke-virtual {p2, p1, v1, p5, p4}, Lcom/facebook/react/uimanager/ViewManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object p1

    .line 260
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    move-object p2, p1

    .line 263
    :goto_1
    new-instance p4, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    invoke-direct {p4, p3, p1, p2, v0}, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;-><init>(ILandroid/view/View;Lcom/facebook/react/uimanager/ViewManager;Lcom/facebook/react/fabric/mounting/MountingManager$1;)V

    .line 264
    iput-object v1, p4, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    if-eqz p5, :cond_3

    .line 265
    invoke-interface {p5}, Lcom/facebook/react/uimanager/StateWrapper;->getState()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v0

    :cond_3
    iput-object v0, p4, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentState:Lcom/facebook/react/bridge/ReadableMap;

    .line 267
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteView(I)V
    .locals 4

    .line 343
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 344
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find viewState for tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for deleteView"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 354
    :cond_0
    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 356
    invoke-direct {p0, v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->dropView(Landroid/view/View;)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mTagToViewState:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public getEventEmitter(I)Lcom/facebook/react/fabric/events/EventEmitterWrapper;
    .locals 0

    .line 513
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    :goto_0
    return-object p1
.end method

.method public measure(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J
    .locals 11

    move-object v0, p0

    .line 505
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager;->mViewManagerRegistry:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    move-object v2, p2

    .line 506
    invoke-virtual {v1, p2}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 507
    invoke-virtual/range {v2 .. v10}, Lcom/facebook/react/uimanager/ViewManager;->measure(Landroid/content/Context;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/ReadableMap;FLcom/facebook/yoga/YogaMeasureMode;FLcom/facebook/yoga/YogaMeasureMode;)J

    move-result-wide v1

    return-wide v1
.end method

.method public preallocateView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V
    .locals 1

    .line 425
    invoke-direct {p0, p3}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/react/fabric/mounting/MountingManager;->createView(Lcom/facebook/react/uimanager/ThemedReactContext;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/uimanager/StateWrapper;Z)V

    return-void

    .line 426
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "View for component "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already exists."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    sget-object p3, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find viewState for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for commandId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 155
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 163
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 160
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find viewState view for tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 156
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find viewManager for tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public receiveCommand(ILjava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 168
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    sget-object p3, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find viewState for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for commandId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 178
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 186
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void

    .line 183
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find viewState view for tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 179
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find viewState manager for tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removeViewAt(II)V
    .locals 3

    .line 214
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 215
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getNullableViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    sget-object p2, Lcom/facebook/react/fabric/mounting/MountingManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find viewState for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for removeViewAt"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/facebook/react/bridge/ReactSoftException;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 225
    :cond_0
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 231
    invoke-static {v0}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewGroupManager(Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;)Lcom/facebook/react/uimanager/ViewGroupManager;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    return-void

    .line 228
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find view for tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public sendAccessibilityEvent(II)V
    .locals 2

    .line 190
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 192
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 200
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    .line 197
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find viewState view for tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 193
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find viewState manager for tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 461
    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object p3

    .line 466
    iget-object v0, p3, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eq p2, p1, :cond_1

    .line 467
    instance-of v1, v0, Landroid/view/ViewParent;

    if-eqz v1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    check-cast v0, Landroid/view/ViewParent;

    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 473
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find view for tag "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 477
    :cond_2
    :try_start_3
    iget-boolean p3, p3, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-eqz p3, :cond_3

    .line 478
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot block native responder on "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that is a root view"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 481
    :cond_3
    iget-object p1, p0, Lcom/facebook/react/fabric/mounting/MountingManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateEventEmitter(ILcom/facebook/react/fabric/events/EventEmitterWrapper;)V
    .locals 0

    .line 435
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 436
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object p1

    .line 437
    iput-object p2, p1, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mEventEmitter:Lcom/facebook/react/fabric/events/EventEmitterWrapper;

    return-void
.end method

.method public updateLayout(IIIII)V
    .locals 2

    .line 290
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 292
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 294
    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-eqz v1, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    const/high16 p1, 0x40000000    # 2.0f

    .line 304
    invoke-static {p4, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 305
    invoke-static {p5, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->measure(II)V

    .line 307
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 308
    instance-of v1, p1, Lcom/facebook/react/uimanager/RootView;

    if-eqz v1, :cond_1

    .line 309
    invoke-interface {p1}, Landroid/view/ViewParent;->requestLayout()V

    :cond_1
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 314
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 300
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find View for tag: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public updateLocalData(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5

    .line 364
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 365
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 366
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    if-eqz v1, :cond_3

    .line 370
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz p1, :cond_0

    const-string p1, "hash"

    .line 371
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 372
    invoke-interface {v1, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-nez p1, :cond_0

    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 373
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 376
    :cond_0
    iput-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    .line 378
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz p1, :cond_2

    .line 383
    iget-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    new-instance v2, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentLocalData:Lcom/facebook/react/bridge/ReadableMap;

    invoke-direct {v2, v3}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 384
    invoke-virtual {p1, p2, v1, v2}, Lcom/facebook/react/uimanager/ViewManager;->updateLocalData(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 389
    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 381
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find ViewManager for view: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not update local data to view without props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public updatePadding(IIIII)V
    .locals 8

    .line 319
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 321
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 323
    iget-boolean v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mIsRoot:Z

    if-eqz v1, :cond_0

    return-void

    .line 327
    :cond_0
    iget-object v3, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 332
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v2, :cond_1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 338
    invoke-virtual/range {v2 .. v7}, Lcom/facebook/react/uimanager/ViewManager;->setPadding(Landroid/view/View;IIII)V

    return-void

    .line 334
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find ViewManager for view: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to find View for tag: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public updateProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 276
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    .line 277
    new-instance v1, Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    invoke-direct {v1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;-><init>(Lcom/facebook/react/bridge/ReadableMap;)V

    iput-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 278
    iget-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 284
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ViewManager;

    iget-object v0, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 285
    invoke-virtual {p1, p2, v0}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V

    return-void

    .line 281
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find view for tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public updateState(ILcom/facebook/react/uimanager/StateWrapper;)V
    .locals 3

    .line 395
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 396
    invoke-direct {p0, p1}, Lcom/facebook/react/fabric/mounting/MountingManager;->getViewState(I)Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 397
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/uimanager/StateWrapper;->getState()Lcom/facebook/react/bridge/ReadableNativeMap;

    move-result-object v1

    .line 398
    :goto_0
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentState:Lcom/facebook/react/bridge/ReadableMap;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentState:Lcom/facebook/react/bridge/ReadableMap;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentState:Lcom/facebook/react/bridge/ReadableMap;

    if-nez v2, :cond_3

    if-nez p2, :cond_3

    :cond_2
    return-void

    .line 402
    :cond_3
    iput-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentState:Lcom/facebook/react/bridge/ReadableMap;

    .line 404
    iget-object v1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mViewManager:Lcom/facebook/react/uimanager/ViewManager;

    if-eqz v1, :cond_5

    .line 409
    iget-object p1, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    iget-object v2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mCurrentProps:Lcom/facebook/react/uimanager/ReactStylesDiffMap;

    .line 410
    invoke-virtual {v1, p1, v2, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateState(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/uimanager/StateWrapper;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 412
    iget-object p2, v0, Lcom/facebook/react/fabric/mounting/MountingManager$ViewState;->mView:Landroid/view/View;

    invoke-virtual {v1, p2, p1}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V

    :cond_4
    return-void

    .line 407
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find ViewManager for tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
