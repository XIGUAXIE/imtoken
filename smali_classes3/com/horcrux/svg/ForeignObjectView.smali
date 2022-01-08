.class Lcom/horcrux/svg/ForeignObjectView;
.super Lcom/horcrux/svg/GroupView;
.source "ForeignObjectView.java"


# instance fields
.field fake:Landroid/graphics/Canvas;

.field fakeBitmap:Landroid/graphics/Bitmap;

.field mH:Lcom/horcrux/svg/SVGLength;

.field mW:Lcom/horcrux/svg/SVGLength;

.field mX:Lcom/horcrux/svg/SVGLength;

.field mY:Lcom/horcrux/svg/SVGLength;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GroupView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 129
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->fakeBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->fakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Lcom/horcrux/svg/GroupView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/horcrux/svg/ForeignObjectView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 40
    iget-object v1, p0, Lcom/horcrux/svg/ForeignObjectView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v1}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 41
    iget-object v2, p0, Lcom/horcrux/svg/ForeignObjectView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v2}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 42
    iget-object v3, p0, Lcom/horcrux/svg/ForeignObjectView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v3}, Lcom/horcrux/svg/ForeignObjectView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/horcrux/svg/GroupView;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->fake:Landroid/graphics/Canvas;

    invoke-super {p0, p1, p2, p3, p4}, Lcom/horcrux/svg/GroupView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method drawGroup(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->pushGlyphContext()V

    .line 80
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->getSvgView()Lcom/horcrux/svg/SvgView;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 84
    invoke-virtual {p0, v2}, Lcom/horcrux/svg/ForeignObjectView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 85
    instance-of v4, v3, Lcom/horcrux/svg/MaskView;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    instance-of v4, v3, Lcom/horcrux/svg/VirtualView;

    if-eqz v4, :cond_5

    .line 89
    check-cast v3, Lcom/horcrux/svg/VirtualView;

    .line 90
    iget-object v4, v3, Lcom/horcrux/svg/VirtualView;->mDisplay:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    instance-of v4, v3, Lcom/horcrux/svg/RenderableView;

    if-eqz v4, :cond_2

    .line 94
    move-object v5, v3

    check-cast v5, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v5, p0}, Lcom/horcrux/svg/RenderableView;->mergeProperties(Lcom/horcrux/svg/RenderableView;)V

    .line 97
    :cond_2
    iget-object v5, p0, Lcom/horcrux/svg/ForeignObjectView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1, v5}, Lcom/horcrux/svg/VirtualView;->saveAndSetupCanvas(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)I

    move-result v5

    .line 98
    iget v6, p0, Lcom/horcrux/svg/ForeignObjectView;->mOpacity:F

    mul-float v6, v6, p3

    invoke-virtual {v3, p1, p2, v6}, Lcom/horcrux/svg/VirtualView;->render(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    .line 99
    invoke-virtual {v3}, Lcom/horcrux/svg/VirtualView;->getClientRect()Landroid/graphics/RectF;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 101
    invoke-virtual {v1, v6}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 104
    :cond_3
    invoke-virtual {v3, p1, v5}, Lcom/horcrux/svg/VirtualView;->restoreCanvas(Landroid/graphics/Canvas;I)V

    if-eqz v4, :cond_4

    .line 107
    move-object v4, v3

    check-cast v4, Lcom/horcrux/svg/RenderableView;

    invoke-virtual {v4}, Lcom/horcrux/svg/RenderableView;->resetProperties()V

    .line 110
    :cond_4
    invoke-virtual {v3}, Lcom/horcrux/svg/VirtualView;->isResponsible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 111
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    goto :goto_1

    .line 113
    :cond_5
    instance-of v4, v3, Lcom/horcrux/svg/SvgView;

    if-eqz v4, :cond_6

    .line 114
    check-cast v3, Lcom/horcrux/svg/SvgView;

    .line 115
    invoke-virtual {v3, p1}, Lcom/horcrux/svg/SvgView;->drawChildren(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {v3}, Lcom/horcrux/svg/SvgView;->isResponsible()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 117
    invoke-virtual {v0}, Lcom/horcrux/svg/SvgView;->enableTouchEvents()V

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    :cond_8
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/ForeignObjectView;->setClientRect(Landroid/graphics/RectF;)V

    .line 125
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->popGlyphContext()V

    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Lcom/horcrux/svg/GroupView;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "height"
    .end annotation

    .line 74
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 75
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "width"
    .end annotation

    .line 68
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 69
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "x"
    .end annotation

    .line 56
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 57
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 0
    .annotation runtime Lcom/facebook/react/uimanager/annotations/ReactProp;
        name = "y"
    .end annotation

    .line 62
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/ForeignObjectView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 63
    invoke-virtual {p0}, Lcom/horcrux/svg/ForeignObjectView;->invalidate()V

    return-void
.end method
