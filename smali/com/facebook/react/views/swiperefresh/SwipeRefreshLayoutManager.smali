.class public Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;
.super Lcom/facebook/react/uimanager/ViewGroupManager;
.source "SwipeRefreshLayoutManager.java"

# interfaces
.implements Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "AndroidSwipeRefreshLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/ViewGroupManager<",
        "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
        ">;",
        "Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerInterface<",
        "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final REACT_CLASS:Ljava/lang/String; = "AndroidSwipeRefreshLayout"


# instance fields
.field private final mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/facebook/react/uimanager/ViewGroupManager;-><init>()V

    .line 45
    new-instance v0, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;

    invoke-direct {v0, p0}, Lcom/facebook/react/viewmanagers/AndroidSwipeRefreshLayoutManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    iput-object v0, p0, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-void
.end method


# virtual methods
.method protected bridge synthetic addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V

    return-void
.end method

.method protected addEventEmitters(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V
    .locals 1

    .line 134
    new-instance v0, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager$1;-><init>(Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;)V

    invoke-virtual {p2, v0}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    return-void
.end method

.method protected bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    move-result-object p1

    return-object p1
.end method

.method protected createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;
    .locals 1

    .line 50
    new-instance v0, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-direct {v0, p1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    return-object v0
.end method

.method protected getDelegate()Lcom/facebook/react/uimanager/ViewManagerDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/uimanager/ViewManagerDelegate<",
            "Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->mDelegate:Lcom/facebook/react/uimanager/ViewManagerDelegate;

    return-object v0
.end method

.method public getExportedCustomDirectEventTypeConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/facebook/react/common/MapBuilder;->builder()Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    const-string/jumbo v1, "registrationName"

    const-string/jumbo v2, "onRefresh"

    .line 169
    invoke-static {v1, v2}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "topRefresh"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/react/common/MapBuilder$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/react/common/MapBuilder$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/facebook/react/common/MapBuilder$Builder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExportedViewConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DEFAULT"

    const-string v3, "LARGE"

    invoke-static {v2, v0, v3, v1}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "SIZE"

    .line 161
    invoke-static {v1, v0}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "AndroidSwipeRefreshLayout"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->receiveCommand(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1ea28b20

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setNativeRefreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 152
    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic setColors(Landroid/view/View;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "ColorArray"
        name = "colors"
    .end annotation

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setColors(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public setColors(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "ColorArray"
        name = "colors"
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 68
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 69
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 70
    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getInt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setColorSchemeColors([I)V

    goto :goto_1

    :cond_1
    new-array p2, v0, [I

    .line 74
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setColorSchemeColors([I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic setEnabled(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setEnabled(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V

    return-void
.end method

.method public setEnabled(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultBoolean = true
        name = "enabled"
    .end annotation

    .line 61
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setNativeRefreshing(Landroid/view/View;Z)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setNativeRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V

    return-void
.end method

.method public setNativeRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setProgressBackgroundColor(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "progressBackgroundColor"
    .end annotation

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setProgressBackgroundColor(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Ljava/lang/Integer;)V

    return-void
.end method

.method public setProgressBackgroundColor(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Ljava/lang/Integer;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        customType = "Color"
        name = "progressBackgroundColor"
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public bridge synthetic setProgressViewOffset(Landroid/view/View;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "progressViewOffset"
    .end annotation

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setProgressViewOffset(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;F)V

    return-void
.end method

.method public setProgressViewOffset(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;F)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        defaultFloat = 0.0f
        name = "progressViewOffset"
    .end annotation

    .line 123
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setProgressViewOffset(F)V

    return-void
.end method

.method public bridge synthetic setRefreshing(Landroid/view/View;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "refreshing"
    .end annotation

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V

    return-void
.end method

.method public setRefreshing(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Z)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "refreshing"
    .end annotation

    .line 117
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic setSize(Landroid/view/View;I)V
    .locals 0

    .line 36
    check-cast p1, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;->setSize(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;I)V

    return-void
.end method

.method public setSize(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;I)V
    .locals 0

    .line 87
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    return-void
.end method

.method public setSize(Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 3
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "size"
    .end annotation

    .line 95
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->isNull()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->Number:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_1

    .line 98
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->getType()Lcom/facebook/react/bridge/ReadableType;

    move-result-object v0

    sget-object v2, Lcom/facebook/react/bridge/ReadableType;->String:Lcom/facebook/react/bridge/ReadableType;

    if-ne v0, v2, :cond_4

    .line 100
    invoke-interface {p2}, Lcom/facebook/react/bridge/Dynamic;->asString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "default"

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1, v1}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    goto :goto_0

    :cond_2
    const-string v0, "large"

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x0

    .line 104
    invoke-virtual {p1, p2}, Lcom/facebook/react/views/swiperefresh/ReactSwipeRefreshLayout;->setSize(I)V

    :goto_0
    return-void

    .line 106
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size must be \'default\' or \'large\', received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Size must be \'default\' or \'large\'"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
