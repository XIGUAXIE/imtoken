.class public Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerDelegate;
.super Lcom/facebook/react/uimanager/BaseViewManagerDelegate;
.source "ActivityIndicatorViewManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "U::",
        "Lcom/facebook/react/uimanager/BaseViewManagerInterface<",
        "TT;>;:",
        "Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface<",
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

    .line 20
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;-><init>(Lcom/facebook/react/uimanager/BaseViewManagerInterface;)V

    return-void
.end method


# virtual methods
.method public setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "animating"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "hidesWhenStopped"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 38
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/react/uimanager/BaseViewManagerDelegate;->setProperty(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;->setSize(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    .line 32
    :cond_2
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :goto_2
    invoke-interface {p2, p1, p3}, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;->setColor(Landroid/view/View;Ljava/lang/Integer;)V

    goto :goto_5

    .line 29
    :cond_4
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;

    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_3
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;->setAnimating(Landroid/view/View;Z)V

    goto :goto_5

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerDelegate;->mViewManager:Lcom/facebook/react/uimanager/BaseViewManagerInterface;

    check-cast p2, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;

    if-nez p3, :cond_7

    goto :goto_4

    :cond_7
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_4
    invoke-interface {p2, p1, v4}, Lcom/facebook/react/viewmanagers/ActivityIndicatorViewManagerInterface;->setHidesWhenStopped(Landroid/view/View;Z)V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x35e001 -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x339a4502 -> :sswitch_1
        0x42ab1b5e -> :sswitch_0
    .end sparse-switch
.end method
