.class public Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "PullToRefreshViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface<",
        "TT;>;>",
        "Lcom/facebook/react/uimanager/BaseViewManagerDelegate<",
        "TT;TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public receiveCommand(Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x1ea28b20

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setNativeRefreshing"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, -0x1

    :goto_1
    if-eqz p3, :cond_2

    goto :goto_2

    .line 46
    :cond_2
    invoke-interface {p4, v1}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setNativeRefreshing(Landroid/view/View;Z)V

    :goto_2
    return-void
.end method

.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "tintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "refreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "titleColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_2

    goto :goto_2

    :cond_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_2
    invoke-interface {p2, p1, v1}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setRefreshing(Landroid/view/View;Z)V

    goto :goto_6

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    move-object v5, p3

    check-cast v5, Ljava/lang/String;

    :goto_3
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTitle(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_5
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTitleColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_6

    .line 27
    :cond_7
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;

    if-nez p3, :cond_8

    goto :goto_5

    :cond_8
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_5
    invoke-interface {p2, p1, v5}, Lcom/facebook/react/viewmanagers/PullToRefreshViewManagerInterface;->setTintColor(Landroid/view/View;Ljava/lang/Integer;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b402c15 -> :sswitch_3
        -0x132eacd9 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x4f219128 -> :sswitch_0
    .end sparse-switch
.end method
