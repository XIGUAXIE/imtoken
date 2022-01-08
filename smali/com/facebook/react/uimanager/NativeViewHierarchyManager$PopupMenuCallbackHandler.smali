.class Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PopupMenuCallbackHandler"
.end annotation


# instance fields
.field mConsumed:Z

.field final mSuccess:Lcom/facebook/react/bridge/Callback;


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 846
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    .line 849
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;)V
    .locals 0

    .line 842
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;-><init>(Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 4

    .line 854
    iget-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    if-nez p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "dismissed"

    aput-object v3, v1, v2

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 856
    iput-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    :cond_0
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 862
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mSuccess:Lcom/facebook/react/bridge/Callback;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "itemSelected"

    aput-object v3, v2, v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 864
    iput-boolean v3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;->mConsumed:Z

    .line 865
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Landroid/view/MenuItem;)V

    return v3

    .line 867
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackMenuItem(Landroid/view/MenuItem;)V

    return v1
.end method
