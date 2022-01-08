.class Lcom/horcrux/svg/RenderableViewManager$ForeignObjectManager;
.super Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;
.source "RenderableViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/horcrux/svg/RenderableViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForeignObjectManager"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 917
    sget-object v0, Lcom/horcrux/svg/RenderableViewManager$SVGClass;->RNSVGForeignObject:Lcom/horcrux/svg/RenderableViewManager$SVGClass;

    invoke-direct {p0, v0}, Lcom/horcrux/svg/RenderableViewManager$GroupViewManager;-><init>(Lcom/horcrux/svg/RenderableViewManager$SVGClass;)V

    return-void
.end method


# virtual methods
.method public setHeight(Lcom/horcrux/svg/ForeignObjectView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .line 937
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/ForeignObjectView;->setHeight(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setWidth(Lcom/horcrux/svg/ForeignObjectView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .line 932
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/ForeignObjectView;->setWidth(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setX(Lcom/horcrux/svg/ForeignObjectView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .line 922
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/ForeignObjectView;->setX(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method

.method public setY(Lcom/horcrux/svg/ForeignObjectView;Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .line 927
    invoke-virtual {p1, p2}, Lcom/horcrux/svg/ForeignObjectView;->setY(Lcom/facebook/react/bridge/Dynamic;)V

    return-void
.end method
